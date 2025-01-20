# Stütz Technology Notes
- [Docker-Übersicht](https://htl-leonding-college.github.io/docker-lecture-notes/)
- [Docker-Grundlagen](https://htl-leonding-college.github.io/docker-lecture-notes/docker.html#bookmark-document-start)

# Wie funktioniert Docker?
Dockerfile $\rightarrow$ Anweisungen, wie das Image erstellt werden soll

Zwei Arten Images zu erlangen:
- Docker file `--(docker build)` $\rightarrow$ Image
- Image aus Registry `--(docker pull)` $\rightarrow$ Image

# Docker Compose
Orchestriert mehrere Container (startet mehrere gleichzeitig, wartet aber bis alle gestartet sind)

# Virtualisierung 
"Nachbildung", andere Guest-OS rennen auf Host-OS.
Um Cross-Platform zu ermöglichen (z.B. Linux auf Windows, oder Alpine auf Ubuntu)

**Schwergewichtig** (Normale Virtualisierung):
```
[       App        ]
[ Operating System ]
[   Virtual Box    ]
[ Operating System ]
[     Hardware     ]
```
^❌ nein! ❌^

**Leichtgewichtig** (Docker):
```
[    Libraries     ] (können auf OS zugreifen)
[      Docker      ]
[ Operating System ]
[     Hardware     ]
```
^✅ ja! ✅^

# Image 
- Unveränderbar (immutable)
- Schichten
- Beim Start $\rightarrow$ wird zu einem Container

# Container 
- Besteht aus Prozess und Files
- `stop` $\rightarrow$ Prozesse löschen, Files bleiben
- `delete` $\rightarrow$ Files löschen

Ein Container hat ein **Standardmaß**, was bedeutet dass die **Schnittstelle nach außen normiert ist** (Firewall etc. gibt es trotzdem, ansonsten ist alles genormt)

Wir bauen z.B. 3 Container:
1. **Frontend** (GUI, Angular)
2. **Backend** (Quarkus)
3. **Datenbank** (MySQL)

# Registry
Sammlung an Images $\rightarrow$ [dockerhub](https://hub.docker.com/)

# Volumes
## Variante 1: Files werden im Container gespeichert
Nachteil: Files können schnell verloren gehen - löschen des Containers

## Variante 2: Bind Mount
Files werden in einem Ordner im eigenen File-System gespeichert
funktioniert unter WSL nicht

## Variante 3: Named Volumes:
Ebenfalls Ordner im File-System $\rightarrow$ kein direkter Zugriff möglich

# In der Praxis

Zeigt Repository von Images:

```
docker image ls
```

Startet container basierend am "alpine" image, führt echo command aus

```
docker run alpine echo Hello 4chif
```

## Aufsetzen eines Javaprojektes

~`$ nano HelloWorld.java`~
```java
public class HelloWorld {
    public static void main(String[] args) {
        System.out.println("Hello World!");
    }
}
```
Dann: `Strg`+`o` $\rightarrow$ `Enter` $\rightarrow$ `Strg`+`x`

```
$ javac HelloWorld.java
$ java HelloWorld
```
$\rightarrow$ `Hello World!`

## Erstellen / Benutzen eines Dockerfiles

~`$ nano Dockerfile`~
```
FROM eclipse-temurin:21
COPY ./HelloWorld.java .
RUN javac HelloWorld.java
CMD java HelloWorld
```

```
$ docker build -t hello-world .
$ docker image ls
$ docker run --name hello-world hello-world
$ docker container ls -a
$ docker container rm [NAME / HASH des Containers]
$ docker run -it hello-world /bin/bash
\# ll
\# exit
$ rm Dockerfile
```

~`$ nano Dockerfile`~
```
FROM ubuntu:22.04
RUN apt update
RUN apt install -y nginx
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 80
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
```

```
$ docker build -t my-webserver:v1.0 .
$ docker run --rm -p 8080:80 --name my-web my-webserver:v1.0
```

# Installation

```
sudo apt update

for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done

sudo apt install -y apt-transport-https ca-certificates curl software-properties-common

lsb_release -a

sudo nano /etc/apt/sources.list.d/docker.list

echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu jammy stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt update

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

sudo install -m 0755 -d /etc/apt/keyrings

sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc

sudo chmod a+r /etc/apt/keyrings/docker.asc

sudo apt install -y docker-ce docker-ce-cli containerd.io

sudo docker --version

sudo docker run alpine echo Hello 4chif
```