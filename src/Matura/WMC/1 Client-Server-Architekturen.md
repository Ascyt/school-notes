# Authentication (Keycloak)

Programmierer will nicht immer Rollen und Berechtigungen von 0 auf Programmieren. **Keycloak** ist daher ein Framework zum Verwalten von Authentifizierung und Authorisierung.

## Hauptsäulen von Security
1. **Transport-Layer** (TLS)
2. **Authentifizierung** (ist der Nutzer wirklich derjenige, für die er sich ausgibt?)
3. **Authorisierung** (darf der Nutzer die Aktion mit seiner Rolle machen?)

## Keycloak Konzepte

- **Realm**: Isoliert Nutzer, Anmeldungen, Clients, Konfiguration
- **Client**: Applikation oder Dienst, der von Keycloak zur Authentifizierung genutzt wird.
  - Typen:
    - *Confidential*: das wichtigste. z.B. Quarkus-Backend, welches Keycloak fragt ob der Nutzer mit dem Token die jeweilige Berechtigung hat.
    - *Public*: wenn Anwendung direkt mit Keycloak kommuniziert, z.B. Web-App ohne Backend oder Mobile-App. Hat kein geheimes Passwort da der Code einsichtlich ist
    - *Bearer-only*: Nur für Ressourcen. Bietet keine Login-seite an, prüft nur Access-Tokens. Leitet Benutzer nicht zu Keycloak weiter da Anmeldung mit Nutzername+Passwort wegen Token nicht möglich ist
- **Roles**: Können zu Nutzern oder Nutzergruppen zugewiesen werden, wird zur Authorisierung genutzt (welche Rolle wird für Aktion X benötigt?)
  - Typen:
    - *Realm Roles*: Globale Rollen, die im ganzen Realm verfügbar sind
    - *Client Roles*: Spezifisch zu einem Client

**Beispiel-Usage mit Docker**: `docker run -p 8080:8080 -e KEYCLOAK_ADMIN=admin -e KEYCLOAK_ADMIN_PASSWORD=admin quay.io/keycloak/keycloak:25.0.2 start-dev`. Auf `localhost:8080` können dann mithilfe KeyCloak's eigener UI Rollen und Nutzer verwaltet werden. 

## Beispielcode

`pom.xml`
```xml
    <dependencies>
    <dependency>
        <groupId>io.quarkus</groupId>
        <artifactId>quarkus-resteasy-reactive</artifactId>
    </dependency>
    <dependency>
        <groupId>io.quarkus</groupId>
        <artifactId>quarkus-oidc</artifactId>
    </dependency>
    </dependencies>
```

`src/main/resources/application.properties`
```xml
    quarkus.http.port=8080

    # OIDC (Keycloak) settings
    quarkus.oidc.auth-server-url=https://keycloak.example.com/auth/realms/myrealm
    quarkus.oidc.client-id=quarkus-app
    quarkus.oidc.credentials.secret=your-client-secret
    quarkus.oidc.tls.verification=required
```

`src/main/java/org/example/SecureResource.java`
```java
    package org.example;

    import javax.annotation.security.RolesAllowed;
    import javax.ws.rs.GET;
    import javax.ws.rs.Path;
    import javax.ws.rs.Produces;
    import javax.ws.rs.core.MediaType;

    @Path("/api")
    public class SecureResource {

        @GET
        @Path("/hello")
        @Produces(MediaType.TEXT_PLAIN)
        @RolesAllowed("user") // Only KeyCloak "user" role is allowed
        public String hello() {
            return "Hello, authenticated user!";
        }
    }
```

# Quakus/Server-Sent Events

![SSE](https://miro.medium.com/v2/resize:fit:720/format:webp/1*_y_9SbfC1hFniWc1wrebfA.png)

**Server-sent events (SSE)**: Technologie zur Echtzeitübertragung von Daten von Server auf einen Web-Client. 

## Beispielcode

```java
    package org.acme.vertx;

    import io.smallrye.mutiny.Uni;
    import io.vertx.mutiny.core.eventbus.EventBus;
    import io.vertx.mutiny.core.eventbus.Message;

    import jakarta.inject.Inject;
    import jakarta.ws.rs.GET;
    import jakarta.ws.rs.Path;
    import jakarta.ws.rs.Produces;
    import jakarta.ws.rs.core.MediaType;

    @Path("/async")
    public class EventResource {

        @Inject
        EventBus bus; // Inject the event bus

        @GET
        @Produces(MediaType.TEXT_PLAIN)
        @Path("{name}")
        public Uni<String> greeting(String name) {
            return bus.<String>request("greeting", name) // Send a message to the address greeting. Message payload is name        
                    .onItem().transform(Message::body);
        }
    }
```

# Quarkus/WebSockets

## WebSocket API 

Eingebaut in Webbrowsern. Ermöglicht bidirektionale interaktive Kommunikation zwischen Browser und Server. 

Möglich mit zwei Interfaces:
- `WebSocket`: Stabil und guter Support, aber unterstützt keine Backpressure (wenn Nachrichten zu schnell kommen wird der Puffer überfüllt)
- `WebSocketStream`: `Promise`-basierte Alternative mittels Streams API zur Nachrichtenverwaltung. Profitiert automatisch von Backpressure, in dem Lese- & Schreibgeschwindigkeit automatisch gegelt wird. Ist aber nicht standatisiert

**WebTransport API**: Moderne Alternative zu WebSockets. Ist komplexer und nicht so standatisiert wie WebSockets, ermöglicht aber auch komplexere Lösungen.

## Beispielcode

`pom.xml`
```xml
<dependency>
    <groupId>io.quarkus</groupId>
    <artifactId>quarkus-websockets</artifactId>
</dependency>
```

```java
    package org.acme.websockets;

    import java.util.Map;
    import java.util.concurrent.ConcurrentHashMap;

    import jakarta.enterprise.context.ApplicationScoped;
    import jakarta.websocket.OnClose;
    import jakarta.websocket.OnError;
    import jakarta.websocket.OnMessage;
    import jakarta.websocket.OnOpen;
    import jakarta.websocket.server.PathParam;
    import jakarta.websocket.server.ServerEndpoint;
    import jakarta.websocket.Session;

    // WebSocket endpoint at /chat/{username} path
    @ServerEndpoint("/chat/{username}") // Configures the web socket URL
    @ApplicationScoped
    public class ChatSocket {

        // Thread-safe map to store active WebSocket sessions by username
        Map<String, Session> sessions = new ConcurrentHashMap<>(); // Stores the currently opened web sockets

        // Called when a client connects to the WebSocket
        @OnOpen
        public void onOpen(Session session, @PathParam("username") String username) {
            // Notify all connected clients that a new user joined
            broadcast("User " + username + " joined");
            // Store the new session
            sessions.put(username, session);
        }

        // Called when a client disconnects from the WebSocket
        @OnClose
        public void onClose(Session session, @PathParam("username") String username) {
            // Remove the disconnected session
            sessions.remove(username);
            // Notify all remaining clients about the disconnection
            broadcast("User " + username + " left");
        }

        // Called when an error occurs during WebSocket communication
        @OnError
        public void onError(Session session, @PathParam("username") String username, Throwable throwable) {
            // Remove the errored session
            sessions.remove(username);
            // Notify all clients about the error
            broadcast("User " + username + " left on error: " + throwable);
        }

        // Called when a message is received from a client
        @OnMessage
        public void onMessage(String message, @PathParam("username") String username) {
            // Broadcast the message to all connected clients
            broadcast(">> " + username + ": " + message);
        }

        // Send a message to all connected clients asynchronously
        private void broadcast(String message) {
            // Iterate through all active sessions and send the message
            sessions.values().forEach(s -> {
                // Send message asynchronously with a callback to handle errors
                s.getAsyncRemote().sendObject(message, result ->  {
                    // Log any errors that occur during sending
                    if (result.getException() != null) {
                        System.out.println("Unable to send message: " + result.getException());
                    }
                });
            });
        }
    }
```

# GraphQL

> ⚠️ Nicht im Unterricht besprochen und auch nicht in Moodle drinnen (daher eigene Recherche)

Abfragesprache für eine API und serverseitige Runtime mit starker Typisierung. 

## Beispiel 

Zuerst wird der **Service** definiert. In diesem Beispiel ist es ein Service der was den Namen eines eingeloggten Nutzers sagt. 

Definierung der Typen:
```graphql
    type Query {
    me: User
    }
    
    type User {
    name: String
    }
```

Funktionen für jedes Feld aller Typen:

```js
    // Resolver for the `me` field on the `Query` type
    function resolveQueryMe(_parent, _args, context, _info) {
    return context.request.auth.user;
    }
    
    // Resolver for the `name` field on the `User` type
    function resolveUserName(user, _args, context, _info) {
    return context.db.getUserFullName(user.id);
    }
```

Wenn jetzt ein GraphQL Service läuft, kann dieser **GraphQL-Queries** empfangen. Eine Beispielabfrage:

```
    {
    me {
        name
    }
    }
```

kann die folgende JSON-Ausgabe geben: 
```json
    {
    "data": {
        "me": {
        "name": "Luke Skywalker"
        }
    }
    }
```

Wenn etwas mal veraltet ist, kann es mit `@deprecated` markiert werden. Hier ist z.B. ein `User`-Typ definiert, bei dem zuerst nur ein `name` gegeben war, jetzt aber ein `fullName` und `nickname` benötigt wird:

```graphql
    type User {
    fullName: String
    nickname: String
    name: String @deprecated(reason: "Use `fullName`.")
    }
```

## Quarkus Beispiel

https://quarkus.io/guides/smallrye-graphql

`pom.xml`
```xml
    <dependency>
        <groupId>io.quarkus</groupId>
        <artifactId>quarkus-smallrye-graphql</artifactId>
    </dependency>
```

Entities:
```java
    package org.acme.microprofile.graphql;

    public class Film {
        public String title;
        public Integer episodeID;
        public String director;
        public LocalDate releaseDate;
    }

    public class Hero {
        public String name;
        public String surname;
        public Double height;
        public Integer mass;
        public Boolean darkSide;
        public LightSaber lightSaber;
        public List<Integer> episodeIds = new ArrayList<>();
    }

    enum LightSaber {
        RED, BLUE, GREEN
    }
```

Service mit Beispieldaten:

```java
    @ApplicationScoped
    public class GalaxyService {

        private List<Hero> heroes = new ArrayList<>();

        private List<Film> films = new ArrayList<>();

        public GalaxyService() {

            Film aNewHope = new Film();
            aNewHope.title = "A New Hope";
            aNewHope.releaseDate = LocalDate.of(1977, Month.MAY, 25);
            aNewHope.episodeID = 4;
            aNewHope.director = "George Lucas";

            Film theEmpireStrikesBack = new Film();
            theEmpireStrikesBack.title = "The Empire Strikes Back";
            theEmpireStrikesBack.releaseDate = LocalDate.of(1980, Month.MAY, 21);
            theEmpireStrikesBack.episodeID = 5;
            theEmpireStrikesBack.director = "George Lucas";

            Film returnOfTheJedi = new Film();
            returnOfTheJedi.title = "Return Of The Jedi";
            returnOfTheJedi.releaseDate = LocalDate.of(1983, Month.MAY, 25);
            returnOfTheJedi.episodeID = 6;
            returnOfTheJedi.director = "George Lucas";

            films.add(aNewHope);
            films.add(theEmpireStrikesBack);
            films.add(returnOfTheJedi);

            Hero luke = new Hero();
            luke.name = "Luke";
            luke.surname = "Skywalker";
            luke.height = 1.7;
            luke.mass = 73;
            luke.lightSaber = LightSaber.GREEN;
            luke.darkSide = false;
            luke.episodeIds.addAll(Arrays.asList(4, 5, 6));

            Hero leia = new Hero();
            leia.name = "Leia";
            leia.surname = "Organa";
            leia.height = 1.5;
            leia.mass = 51;
            leia.darkSide = false;
            leia.episodeIds.addAll(Arrays.asList(4, 5, 6));


            Hero vader = new Hero();
            vader.name = "Darth";
            vader.surname = "Vader";
            vader.height = 1.9;
            vader.mass = 89;
            vader.darkSide = true;
            vader.lightSaber = LightSaber.RED;
            vader.episodeIds.addAll(Arrays.asList(4, 5, 6));

            heroes.add(luke);
            heroes.add(leia);
            heroes.add(vader);

        }

        public List<Film> getAllFilms() {
            return films;
        }

        public Film getFilm(int id) {
            return films.get(id);
        }

        public List<Hero> getHeroesByFilm(Film film) {
            return heroes.stream()
                    .filter(hero -> hero.episodeIds.contains(film.episodeID))
                    .collect(Collectors.toList());
        }

        public void addHero(Hero hero) {
            heroes.add(hero);
        }

        public Hero deleteHero(int id) {
            return heroes.remove(id);
        }

        public List<Hero> getHeroesBySurname(String surname) {
            return heroes.stream()
                    .filter(hero -> hero.surname.equals(surname))
                    .collect(Collectors.toList());
        }
    }
```

**GraphQL API** Resource:
```java
    @GraphQLApi // This annotation indicates that the CDI bean will be a GraphQL endpoint
    public class FilmResource {
        @Inject
        GalaxyService service;

        @Query("allFilms") // This annotation defines that this method will be queryable with the name allFilms. The value of this annotation is optional (defaults to the method name)
        @Description("Get all Films from a galaxy far far away") // Documentation of the queryable method
        public List<Film> getAllFilms() {
            return service.getAllFilms();
        }
    }
```

# Reactive Programmierung

https://quarkus.io/guides/getting-started-reactive

- **Imperative**: Wenn eine Request kommt, gibt es einen Worker Thread, der diesen handelt. Das skaliert nicht gut, da man, um mehrere Requests gleichzeitig abarbeiten zu können, mehrere Threads braucht, die Applikation also in der Anzahl von Threads limitiert ist. ![imperative](https://quarkus.io/guides/images/blocking-threads.png)
- **Concurrent**: Mithilfe von *non-blocking I/Os* und einen anderen Ablaufmodell, muss nur eine minimale Anzahl an Threads ("I/O Threads") genutzt werden, um viele verschiedene Requests gleichzeitig abarbeiten zu können. Spart RAM und CPU da es nicht nötig ist, Worker Threads zu erstellen, und ist auch gut für Concurrency und Geschwindigkeit. ![concurrent](https://quarkus.io/guides/images/reactive-thread.png) 

https://quarkus.io/guides/quarkus-reactive-architecture

*Reactive* bedeutet folgende Prinzipien:
- *Responsive* - they must respond in a timely fashion
- *Elastic* - they adapt themselves to the fluctuating load
- *Resilient* - they handle failures gracefully
- *Asynchronous message passing* - the components of a reactive system interact using messages

![reactive](https://quarkus.io/guides/images/reactive-systems.png)

Wie Reactive in Quarkus funktioniert: Mittels einer internen *reactive engine* von Quarkus, der von Extensions und dem Applikationscode für I/O- und Datenbankinteraktionen verwendet werden kann. ![quarkus reactive](https://quarkus.io/guides/images/quarkus-reactive-core.png)

Reactive kann mittels folgenden Tools realisiert werden:
- **Mutiny**: Intuitive, event-driven Library
- **Kotlin Coroutines**: Weg, asynchronen Code sequenziell zu schreiben. 



## Beispiel (Mutiny)

https://quarkus.io/guides/getting-started-reactive

`Fruit`-Entity
```java
    package org.acme.hibernate.orm.panache;

    import jakarta.persistence.Cacheable;
    import jakarta.persistence.Column;
    import jakarta.persistence.Entity;

    import io.quarkus.hibernate.reactive.panache.PanacheEntity; // Reactive variant of PanacheEntity

    @Entity
    @Cacheable
    public class Fruit extends PanacheEntity {

        @Column(length = 40, unique = true)
        public String name;

    }
```

Beispieldaten in PostgreSQL-Datenbank geben:
```pgsql
INSERT INTO fruit(id, name) VALUES (1, 'Cherry');
INSERT INTO fruit(id, name) VALUES (2, 'Apple');
INSERT INTO fruit(id, name) VALUES (3, 'Banana');
ALTER SEQUENCE fruit_seq RESTART WITH 4;
```

Reactive Resource:
```java
    package org.acme.hibernate.orm.panache;

    import java.util.List;

    import io.quarkus.panache.common.Sort;
    import io.smallrye.mutiny.Uni;
    import jakarta.enterprise.context.ApplicationScoped;
    import jakarta.ws.rs.Path;

    @Path("/fruits")
    @ApplicationScoped
    public class FruitResource {
        @GET
        public Uni<List<Fruit>> get() { // Return type (Uni<...>) is an asynchronous type. It works a bit like a future, it is a placeholder that will get its value later. You can attach some behaviour for when it receives the item. 
            return Fruit.listAll(Sort.by("name"));
        }
        
        @GET
        @Path("/{id}")
        public Uni<Fruit> getSingle(Long id) {
            return Fruit.findById(id);
        }

        @POST
        public Uni<RestResponse<Fruit>> create(Fruit fruit) {
            // To write to a database, we need a transaction, so we use Panache.withTransaction.
            return Panache.withTransaction(fruit::persist) // `persist` method returns a Uni that emits the result of the insertion of the fruit in the database
                .replaceWith(RestResponse.status(CREATED, fruit)); // Once insertion completes we return 201 CREATED http response
        }
    }
```
