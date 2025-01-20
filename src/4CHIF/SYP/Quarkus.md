# Installation

1. **https://quarkus.io/** öffnen
2. Auf "Start Coding" klicken
3. Infos einfüllen:
    | Group | Artifact | Build Tool | Version | Java Version | Starter Code |
    |-------|----------|------------|---------|--------------|--------------|
    | `at.htl` | `rest-demo` | `Maven` | `1.0.0` | `21` | Yes |
4. "Generate your application" klicken
5. Datei entzippen
6. Im Projekt-Root soll ein `.git` sein, in den unteren Folders nicht, ansonsten viel Fehlersuche!
7. Neueste Version von [Apache Maven](https://maven.apache.org/) installieren
8. Das Projekt über Terminal starten: 
    ```
    ./mvnw clean quarkus:dev
    ```
9. Für IntelliJ: Rechtsklick auf `pom.xml` und Maven-Projekt adden
10. Neuer Terminal-Tab und `curl http://localhost:8080/hello` oder `http hello:8080` ausführen, um GET-Request zu testen
11. Neuen Folder erstellen: `http-requests` mit `request.http` Datei mit Inhalt:
    ```
    ### Description about GET hello
    GET http://localhost:8080/hello
    Content-Type: text/plain
    ```
12. Zum adden von Extensions:
    1. `pom.xml` öffnen
    2. Vor der `junit` Dependency `Alt-Insert` drücken
    3. "Add Extensions" drücken und Extensions (z.B. Dev UI) adden
    4. Oben rechts auf den Button drücken um zu updaten

# Wrapper

Der **Maven-Wrapper** ist über das eigentliche Projekt drüber gepackt. 

# REST

Requeststypen:

- `GET`: Informationen auslesen
- `POST`: Informationen erstellen
- `PUT`: Informationen ändern
- `DELETE`: Informationen löschen

**HTTP-Files** sind ein guter weg REST-Requests zu dokumentieren und zu testen: https://timdeschryver.dev/bits/http-files