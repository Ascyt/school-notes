# Docker/DockerCompose

https://docker-curriculum.com/

**Docker**: Leichtgewichtige Virtualisierung um Applikationen in isolierten *Containers* laufen zu lassen. 

Unterschied zu einer VM: (https://www.atlassian.com/microservices/cloud-computing/containers-vs-vms)
- **VM**: Komplett isoliert, als wenn es ein komplett anderer Rechner ist. Das erlaubt auch für interaktive Entwicklung. Ist jedoch sehr langsam und braucht viel Speicher.
- **Containerisierung**: Sehr schnell und platzsparend (da kein komplettes zweites Betriebsystem simuliert werden muss), ist auch allgemein sehr robust, kann aber Sicherheitslücken aufweisen (da alle Container die selbe Hardware nutzen).

**Konzepte:**
- *Images*: Die "Baupläne" der Applikation. Schreibgeschützter Binärcode. Images werden entweder mit `docker build` (mit Dockerfile und Kontext) erstellt oder mittels `docker pull` vom Docker Hub fertig heruntergeladen. 
- *Containers*: Diese werden von Images erstellt und lassen die eigentliche Applikation laufen. 
- *Volume*: Verzeichnis im Laufwerk, das die Applikation zum permanenten Speichern von Daten nutzen kann
- *Docker Daemon*: Das Hintergrundprogramm welches die Container dauerhaft verwaltet. 
- *Docker Client*: Command-Line-Tool um mit dem Daemon zu interagieren
- *Docker Registry*: Ähnlich wie es bei `git` Websites wie *GitHub*, *GitLab* oder *BitBucket* gibt, gibt's sowas ähnliches auch mit Docker-Images statt Repositories. Von dort kann man automatisiert Docker Images herunterladen.
- *Docker Hub*: Docker's offizielle Registry, man kann von dort z.B. das `postgres`-Image automatisiert herunterladen. https://hub.docker.com/explore/

`docker run`
- `-d`: Detached (Terminal blockiert nicht und der Container läuft als Hintergrundprozess weiter)
- `--name [...]`: Name, welches der Container haben soll
- `-p [a]:[b]` zb `-p 8888:80`: Hier ist `[a]` bzw. `8888` der öffentliche Port (der vom Host-OS bzw. Internet gesehen wird) und `80` der interne Port (der was nur von Docker selber gesehen wird)

`docker stop` zum Stoppen eines Containers

`docker pull` damit man ein Image vom Docker-Hub bekommt. Man kann auch optional die Version angeben (default `latest`): `docker pull ubuntu:18.04`

## Dockerfile

Enthält Commands, welches Docker nutzt um ein Image zu erstellen. So kann dieser Prozess automatisiert werden. Die Datei heißt einfach `Dockerfile` ohne Extension. 

Beispiel einer Flask-App. Anfangen mit dem Base-Image (hier Python), dann alle Dateien kopieren, Dependencies installieren, Port exposen, und Container sagen welchen Command er zum starten nutzen soll:
```dockerfile
FROM python:3.8

# set a directory for the app
WORKDIR /usr/src/app

# copy all the files to the container
COPY . .

# install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# define the port number the container should expose
EXPOSE 5000

# run the command
CMD ["python", "./app.py"]
```

## Mit einem Container verbinden

Zuerst können wir mit `docker ps -a` sehen, welche Container momentan am laufen sind. 

Dann können wir mittels `docker exec -it [id] sh` in das CLI vom Container mit ID `[id]` gehen. Hier steht `-it` für "interactive terminal", und das kann auch mit `docker run` gleich verwendet werden.

## Architektur

Basiert auf Client-Server-Modell. *Docker Client* redet mit dem *Docker Daemon*, welcher die Container managet. 

![architektur](https://media.geeksforgeeks.org/wp-content/uploads/20251218122638607429/docker_host.webp)
