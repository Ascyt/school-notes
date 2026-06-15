# Quarkus/REST

`pom.xml
```xml
    <dependency>
        <groupId>io.quarkus</groupId>
        <artifactId>quarkus-rest</artifactId>
    </dependency>
```

```java
    package org.acme.rest;

    import jakarta.ws.rs.GET;
    import jakarta.ws.rs.Path;

    @Path("rest")
    public class Endpoint {
        
        @Path("hello")
        @GET
        public String hello() {
            return "Hello, World!";
        }
    }
```

Für alle REST-Endpoints (`/api` path):
```java
    package org.acme.rest;

    import jakarta.ws.rs.ApplicationPath;
    import jakarta.ws.rs.core.Application;

    @ApplicationPath("/api")
    public static class MyApplication extends Application {

    }
```

Möglich ist (idempotent bedeutet, dass es keine Probleme macht, wenn man es mehrmals hintereinander ausführt):
- `@GET`: Resource bekommen (modifiziert nichts, idempotent)
- `@HEAD`: Metadata über Resource bekommen
- `@POST`: Neue Resource erstellen
- `@PUT`: Resource ersetzen (idempotent) 
- `@DELETE`: Resource löschen (idempotent)
- `@OPTIONS`: Information über Resource erhalten (idempotent)
- `@PATCH`: Resource erstellen oder updaten

Parameterdefinition:
```java
    package org.acme.rest;

    import jakarta.ws.rs.GET;
    import jakarta.ws.rs.Path;

    @Path("hello")
    public class Endpoint {

        @Path("{name}/{age:\\d+}")
        @GET
        public String personalisedHello(String name, int age) {
            return "Hello " + name + " is your age really " + age + "?";
        }

        @GET
        public String genericHello() {
            return "Hello stranger";
        }
    }
```

```java
    import jakarta.ws.rs.POST;
    import jakarta.ws.rs.Path;
    import jakarta.ws.rs.core.MediaType;

    import org.jboss.resteasy.reactive.PartType;
    import org.jboss.resteasy.reactive.RestForm;
    import org.jboss.resteasy.reactive.multipart.FileUpload;

    @Path("multipart")
    public class MultipartResource {
        public static class Person {
            public String firstName;
            public String lastName;
        }

        @POST
        public void multipart(@RestForm String description,
                @RestForm("image") FileUpload file,
                @RestForm @PartType(MediaType.APPLICATION_JSON) Person person) {
            // do something
        }
    }
```

Response:
```java
    package org.acme.rest;

    import java.time.Duration;
    import java.time.Instant;
    import java.util.Date;

    import jakarta.ws.rs.GET;
    import jakarta.ws.rs.Path;
    import jakarta.ws.rs.core.MediaType;
    import jakarta.ws.rs.core.NewCookie;

    import org.jboss.resteasy.reactive.RestResponse;
    import org.jboss.resteasy.reactive.RestResponse.ResponseBuilder;

    @Path("")
    public class Endpoint {

        @GET
        public RestResponse<String> hello() {
            // HTTP OK status with text/plain content type
            return ResponseBuilder.ok("Hello, World!", MediaType.TEXT_PLAIN_TYPE)
            // set a response header
            .header("X-Cheese", "Camembert")
            // set the Expires response header to two days from now
            .expires(Date.from(Instant.now().plus(Duration.ofDays(2))))
            // send a new cookie
            .cookie(new NewCookie("Flavour", "chocolate"))
            // end of builder API
            .build();
        }
    }
```

# Quarkus - REST Client

`pom.xml`
```xml
    <dependency>
        <groupId>io.quarkus</groupId>
        <artifactId>quarkus-rest-client-jackson</artifactId>
    </dependency>
```


Model:
```java
    package org.acme.rest.client;

    import java.util.List;

    public class Extension {
        public String id;
        public String name;
        public String shortName;
        public List<String> keywords;
    }
```

Interface:
```java
    package org.acme.rest.client;

    import org.eclipse.microprofile.rest.client.inject.RegisterRestClient;

    import jakarta.ws.rs.GET;
    import jakarta.ws.rs.Path;
    import jakarta.ws.rs.QueryParam;
    import java.util.Set;

    @Path("/extensions")
    @RegisterRestClient
    public interface ExtensionsService {

        @GET
        Set<Extension> getById(@QueryParam("id") String id);
    }
```

Query parameter (`@RestQuery` ist das selbe wie `@QueryParam` aber mit optionalen Namen):
```java
    package org.acme.rest.client;

    import org.eclipse.microprofile.rest.client.inject.RegisterRestClient;
    import org.jboss.resteasy.reactive.RestQuery;

    import jakarta.ws.rs.GET;
    import jakarta.ws.rs.Path;
    import jakarta.ws.rs.QueryParam;
    import jakarta.ws.rs.core.MultivaluedMap;
    import java.util.Map;
    import java.util.Set;
    import java.util.Optional;

    @Path("/extensions")
    @RegisterRestClient(configKey = "extensions-api")
    public interface ExtensionsService {

        @GET
        Set<Extension> getById(@QueryParam("id") String id);

        @GET
        Set<Extension> getByName(@RestQuery String name); // @RestQuery will include parameter with key `name`

        @GET
        Set<Extension> getByOptionalName(@RestQuery Optional<String> name);

        @GET
        Set<Extension> getByFilter(@RestQuery Map<String, String> filter);  // Each `Map` entry represents exactly one query parameter

        @GET
        Set<Extension> getByFilters(@RestQuery MultivaluedMap<String, String> filters); // `MultivaluedMap` allows you to send array values
    }
```

Jakarta REST resource:
```java
    package org.acme.rest.client;

    import org.eclipse.microprofile.rest.client.inject.RestClient;

    import jakarta.ws.rs.GET;
    import jakarta.ws.rs.Path;
    import java.util.Set;

    @Path("/extension")
    public class ExtensionsResource {

        @RestClient 
        ExtensionsService extensionsService;


        @GET
        @Path("/id/{id}")
        public Set<Extension> id(String id) {
            return extensionsService.getById(id);
        }

        @GET
        @Path("/properties")
        public RestResponse<Set<Extension>> responseProperties(@RestQuery String id) {
            RestResponse<Set<Extension>> clientResponse = extensionsService.getByIdResponseProperties(id); 
            String contentType = clientResponse.getHeaderString("Content-Type");
            int status = clientResponse.getStatus();
            String setCookie = clientResponse.getHeaderString("Set-Cookie");
            Date lastModified = clientResponse.getLastModified();

            Log.infof("content-Type: %s status: %s Last-Modified: %s Set-Cookie: %s", contentType, status, lastModified,
                    setCookie);

            return RestResponse.fromResponse(clientResponse);
        }
    }
```

# Automatisiertes Testen - RestAssured

Warum RESTassured? Zum automatisierten Testen von REST-Endpunkten

Wenn man z.B. `http://localhost:8080/lotto/{id}` Endpunkt testen möchte, der das zurückgeben sollte:

```json
    {
    "lotto":{
        "lottoId":5,
        "winning-numbers":[2,45,34,23,7,5,3],
        "winners":[
            {
                "winnerId":23,
                "numbers":[2,45,34,23,3,5]
            },
            {
                "winnerId":54,
                "numbers":[52,3,12,11,18,22]
            }
        ]
    }
    }
```

kann man so nen Test erstellen:

```java
    @Test public void
    lotto_resource_returns_200_with_expected_id_and_winners() {

        when().
                get("/lotto/{id}", 5).
        then().
                statusCode(200).
                body("lotto.lottoId", equalTo(5),
                    "lotto.winners.winnerId", hasItems(23, 54));

    }
```

weiteres Beispiel:

```java
    given().
            config(RestAssured.config().jsonConfig(jsonConfig().numberReturnType(BIG_DECIMAL))).
    when().
            get("/price").
    then().
            body("price", is(new BigDecimal(12.12));
```

# Quarkus - CDI

CDI: Contexts and Dependency Injection (DI)

Warum? Wartbarkeit vom Code und leichtere Testbarkeit (Implementierungen können ausgetauscht werden)

**bean**: Objekt, das von Container gemanaged wird und einfache **Services** anbietet (wie zB Dependency Injection oder Callbacks)

Beispiel bean:
```java
    import jakarta.inject.Inject;
    import jakarta.enterprise.context.ApplicationScoped;
    import io.micrometer.core.annotation.Counted;

    @ApplicationScoped 
    public class Translator {

        @Inject
        Dictionary dictionary; 

        @Counted(value = "translate.method.counted") 
        String translate(String sentence) {
        // ...
        }
    }
```

Jedes bean hat eine **Scope**:
- `ApplicationScoped`: Einzige instanz wird für die App benutzt und für alle Injektionspunkte geteilt. Die Instanz wird "lazily" erstellt, also sobald die erste Methode aufgerufen wird
- `Singleton`: Ähnlich zu ^ aber die Instanz wird sofort erstellt
- `RequestScoped`: Die Instanz ist mit der momentanen HTTP Request assoziiert 
- `Dependent`: Jeder Injektionspunkt erstellt eine neue Instanz
- `SessionScoped`: Wird mit `HttpSession`s genutzt
- `TransactionScoped`: Existiert so lange wie die Transaktion existiert

# Quarkus - JPA

Jakarta (Quarkus Java Persistence API (JPA)). Anstatt Java Database Connectivity (JDBC)

**ORM**: Object-Relational-Mapping. "Wie speichere ich meine Java-Objekte in der DB und umgekehrt wie konvertiere ich ein DB-Resultat zu Java-Objekt?"

Komponententen:
- `Entity`: Die Persistence-Objects. Diese werden als Records in der DB gespeichert
- `Persistence`: Statische Methoden um `EntityManagerFactory` zu bekommen
- `EntityManagerFactory`: Erstellt `EntityManager`s
- `EntityManager`: Interface, dass die persistence-Operationen von Objekten verwaltet
- `EntityTransaction`: one-to-one Relation mit `EntityManager`, für jeden Manager werden Operationen von dieser Klasse verwalte
- `Query`: Interface, dass implementiert werden kann um relationale Objekte zu erhlaten

## Beispiel

```java
    public class Employee {
        private int eid;
        private String ename;
        private double salary;
        private String deg;
        
        public Employee(
            int eid, String ename,
            double salary, String deg) {
            super();
            this.eid = eid;
            this.ename = ename;
            this.salary = salary;
            this.deg = deg;
        }

        public Employee() {
            super();
        }

        public int getEid() {
            return eid;
        }
        public void setEid(int eid) {
            this.eid = eid;
        }

        public String getEname() {
            return ename;
        }
        public void setEname(String ename) {
            this.ename = ename;
        }

        public double getSalary() {
            return salary;
        }
        public void setSalary(double salary) {
            this.salary = salary;
        }

        public String getDeg() {
            return deg;
        }
        public void setDeg(String deg) {
            this.deg = deg;
        }
    }
```

Beispiel Annotationen:

```java
    import javax.persistence.Column;
    import javax.persistence.Entity;
    import javax.persistence.Table;

    @Entity
    @Table(name = "employee")
    public class Employee implements Serializable {
        @Id
        @Column(name = "id")
        private int id;

        @Column(name = "employee_name")
        private String name;
    }
```

Beispiel `EntityManager` (DAO-Object)
```java
    package com.tutorialspoint.eclipselink.service;
    import javax.persistence.EntityManager;
    import javax.persistence.EntityManagerFactory;
    import javax.persistence.Persistence;
    import com.tutorialspoint.eclipselink.entity.Employee;

    public class CreateEmployee {
        public static void main(String[] args) {
            // parameter EclipseLink JPA is the persistence unit in peristence.xml
            EntityManagerFactory emfactory =
                Persistence.createEntityManagerFactory("Eclipselink_JPA");
            
            EntityManager entitymanager = emfactory.createEntityManager();
            
            entitymanager.getTransaction().begin();

            Employee employee = new Employee(); // Mapping is loaded via annotations or xml file
            employee.setEid(1201);
            employee.setEname("Gopal");
            employee.setSalary(40000);
            employee.setDeg("Technical Manager");

            entitymanager.persist(employee); // storing is done by persistence-manager
            entitymanager.getTransaction().commit(); // committing the changes
            entitymanager.close();

            emfactory.close();
        }
    }
```

Beispiel Query
```java
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
...
public List<Author> getAuthorsByLastName(String lastName) {
    // QueryString
    String queryString = "SELECT a FROM Author a " +
        "WHERE a.lastName IS NULL OR LOWER(a.lastName) = LOWER(:lastName)";

    // create Query
    TypedQuery<Author> query = getEntityManager()
        .createQuery(queryString, Author.class);

    // Filling the parameters
    query.setParameter("lastName", lastName);

    // Execute the query
    return query.getResultList();
}
```

Beispiel (composite) Primary Keys mit `@IdClass` (sollte man nutzen, wenn PK-Klasse nicht modifizierbar ist):
```java
    public class AccountId implements Serializable {
        private String accountNumber;
        private String accountType;

        // default constructor
        public AccountId(String accountNumber, String accountType) {
            this.accountNumber = accountNumber;
            this.accountType = accountType;
        }

        // equals() and hashCode()
    }
```
```java
    @Entity
    @IdClass(AccountId.class)
    public class Account {
        @Id
        private String accountNumber;

        @Id
        private String accountType;
        
        // other fields, getters and setters
    }
```

anderes beispiel mit `@EmbeddedId` (sollte man nutzen wenn wir die ID oft als Objekt nutzen):
```java
    @Embeddable
    public class BookId implements Serializable {
        private String title;
        private String language;

        // default constructor
        public BookId(String title, String language) {
            this.title = title;
            this.language = language;
        }

        // getters, equals() and hashCode() methods
    }
```
```java
    @Entity
    public class Book {
        @EmbeddedId
        private BookId bookId;

        // constructors, other fields, getters and setters
    }
```

PK-Klassen müssen außerdem einen Konstruktor ohne Argument haben, Getter und Setter für alles haben, serialisierbar sein und sinnvolle Equals&HashCode implementierung haben

**Relationen Beispiele:**

`OneToOne`:
```java
    @Entity
    @Table(name = "users")
    public class User {
        @Id
        @GeneratedValue(strategy = GenerationType.AUTO)
        @Column(name = "id")
        private Long id;

        //...

        @OneToOne(cascade = CascadeType.ALL)
        @JoinColumn(name = "address_id", referencedColumnName =
        "id")
        private Address address;

        // ... getters and setters
    }

    // ---

    @Entity
    @Table(name = "address")
    public class Address {
        @Id
        @GeneratedValue(strategy = GenerationType.AUTO)
        @Column(name = "id")
        private Long id;

        //...

        @OneToOne(mappedBy = "address")
        private User user;

        //... getters and setters
    }
```

`ManyToOne` und `OneToMany`:
```java
    @Entity
    @Table(name="CART")
    public class Cart {
        // ...

        @OneToMany(mappedBy="cart_id")
        private Set<Items> items;

        // getters and setters
    }

    // ...

    @Entity
    @Table(name="ITEMS")
    public class Items {
        //...

        @ManyToOne
        @JoinColumn(name="cart_id", nullable=false)
        private Cart cart;
        
        // getters and setters
    }
```

Composite foreign keys:
```java
    @Entity(name = "Phone")
    @Table(name = "phone")
    public class Phone {
        @Id
        @Column(name = "`number`")
        private String number;

        @ManyToOne
        @JoinColumns({
            @JoinColumn(name = "company_id", referencedColumnName = "company_id"),
            @JoinColumn(name = "employee_number",referencedColumnName = "employee_number")
        })
        private Employee employee;

        // getter setter, equals-Hashode, other relations
    }
```

`ManyToMany` (benötigt `course_rating`-Tabelle in der Mitte):
```java
    class Student {
        // ...
        @OneToMany(mappedBy = "student")
        Set<CourseRating> ratings;
        // ...
    }
    class Course {
        // ...
        @OneToMany(mappedBy = "course")
        Set<CourseRating> ratings;
        // ...
    }

    // ---

    @Entity
    class CourseRating {
        @EmbeddedId
        CourseRatingKey id; // see “Composite Key”

        @ManyToOne
        @MapsId("studentId")
        @JoinColumn(name = "student_id")
        Student student;

        @ManyToOne
        @MapsId("courseId")
        @JoinColumn(name = "course_id")
        Course course;

        int rating;

        // standard constructors, getters, and setters
    }
```

Inheritance:
```java
    @Entity
    @DiscriminatorValue(1)
    public class Book extends MyProduct {
        private String author;
    }

    @Entity
    @DisriminatorValue(2)
    public class Pen extends MyProduct {
        private String color;
    }

    // ---

    @Entity(name="products")
    @Inheritance(strategy = InheritanceType.SINGLE_TABLE) // `InheritanceType.JOINED` for joined table
    @DiscriminatorColumn(name="product_type", discriminatorType = DiscriminatorType.INTEGER) 
    public class MyProduct {
        // ...
    }
```

Transactions:
```java
    public static void main(String args[]) {
        // EntityManager persist example
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa-unit");
        EntityManager entityManager = emf.createEntityManager();
        
        try {
            // JPA Provider transaction management begins
            entityManager.getTransaction().begin();

            // do something with the entities

            Player p = new Player();
            p.setPassword("abc123");
            p.setName("Cameron");
            p.setTest("Testing!!!");
            
            entityManager.persist(p);
            entityManager.getTransaction().commit();
            // JPA Provider transaction management ends
        } catch(Exception e) {
            entityManager.getTransaction().rollback();
        }
    }
```

# Panache

Patterns (check ich ned so ganz also chatgpt):
- **Repository Pattern**: Abstraktion über Datenzugriff für eine Entität oder Aggregate (z. B. UserRepository). Bietet CRUD-Methoden, versteckt ORM/SQL-Details und wird von Domänenlogik verwendet.
- **Unit of Work**: Koordiniert Änderungen über mehrere Repositories/Entitäten in einer Transaktion; verfolgt neue/geänderte/gelöschte Objekte und führt am Ende Commit oder Rollback aus.


Beispiel mit `extends PanacheEntity`:
```java
package org.acme;

import java.time.LocalDate;
import java.util.List;
import jakarta.persistence.Entity;
import io.quarkus.hibernate.orm.panache.PanacheEntity;

@Entity
public class Person extends PanacheEntity {
    public String name;
    public LocalDate birth;
    public Status status; // Status is an enum defined with two states

    public static Person findByName(String name){
        return find("name", name).firstResult();
    }

    public static List<Person> findAlive(){
        return list("status", Status.Alive);
    }

    public static void deleteStefs(){
        delete("name", "Stef");
    }
}
```

Was macht das? Die Entity-Klasse bekommt CRUD-Methoden direkt (zB `Person.findById(id)` oder `myPerson.persist()`)

## Panache-Operationen

```java
    import java.time.LocalDate;
    import java.time.Month;
    import java.util.List;
    import java.util.Optional;

    // creating a person
    Person person = new Person();
    person.setName("Stef");
    person.setBirth(LocalDate.of(1910, Month.FEBRUARY, 1));
    person.setStatus(Status.Alive);

    // persist it
    personRepository.persist(person);

    // note that once persisted, you don't need to explicitly save your entity: all
    // modifications are automatically persisted on transaction commit.

    // check if it is persistent
    if(personRepository.isPersistent(person)){
        // delete it
        personRepository.delete(person);
    }

    // getting a list of all Person entities
    List<Person> allPersons = personRepository.listAll();

    // finding a specific person by ID
    person = personRepository.findById(personId);

    // finding specific persons by their IDs
    List<Person> personsById = personRepository.findByIds(List.of(personId1, personId2);

    // finding a specific person by ID via an Optional
    Optional<Person> optional = personRepository.findByIdOptional(personId);
    person = optional.orElseThrow(() -> new NotFoundException());

    // finding all living persons
    List<Person> livingPersons = personRepository.list("status", Status.Alive);

    // counting all persons
    long countAll = personRepository.count();

    // counting all living persons
    long countAlive = personRepository.count("status", Status.Alive);

    // delete all living persons
    personRepository.delete("status", Status.Alive);

    // delete all persons
    personRepository.deleteAll();

    // delete by id
    boolean deleted = personRepository.deleteById(personId);

    // set the name of all living persons to 'Mortal'
    personRepository.update("name = 'Mortal' where status = ?1", Status.Alive);
```

## REST-Beispiel

```java
    package org.acme;

    import java.net.URI;
    import java.util.List;
    import jakarta.transaction.Transactional;
    import jakarta.ws.rs.Consumes;
    import jakarta.ws.rs.DELETE;
    import jakarta.ws.rs.GET;
    import jakarta.ws.rs.NotFoundException;
    import jakarta.ws.rs.POST;
    import jakarta.ws.rs.PUT;
    import jakarta.ws.rs.Path;
    import jakarta.ws.rs.Produces;
    import jakarta.ws.rs.core.MediaType;
    import jakarta.ws.rs.core.Response;

    @Path("/persons")
    @Produces(MediaType.APPLICATION_JSON)
    @Consumes(MediaType.APPLICATION_JSON)
    public class PersonResource {

        @GET
        public List<Person> list() {
            return Person.listAll();
        }

        @GET
        @Path("/{id}")
        public Person get(Long id) {
            return Person.findById(id);
        }

        @POST
        @Transactional
        public Response create(Person person) {
            person.persist();
            return Response.created(URI.create("/persons/" + person.id)).build();
        }

        @PUT
        @Path("/{id}")
        @Transactional
        public Person update(Long id, Person person) {
            Person entity = Person.findById(id);
            if(entity == null) {
                throw new NotFoundException();
            }

            // map all fields from the person parameter to the existing entity
            entity.name = person.name;

            return entity;
        }

        @DELETE
        @Path("/{id}")
        @Transactional
        public void delete(Long id) {
            Person entity = Person.findById(id);
            if(entity == null) {
                throw new NotFoundException();
            }
            entity.delete();
        }

        @GET
        @Path("/search/{name}")
        public Person search(String name) {
            return Person.findByName(name);
        }

        @GET
        @Path("/count")
        public Long count() {
            return Person.count();
        }
    }
```

`@Transactional` macht, dass die Methode innerhalb einer DB-Transaktion ausgeführt wird
