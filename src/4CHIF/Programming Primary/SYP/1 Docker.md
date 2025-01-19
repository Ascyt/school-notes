# Stütz Technology Notes
- [Docker-Übersicht](https://htl-leonding-college.github.io/docker-lecture-notes/)
- [Docker-Grundlagen](https://htl-leonding-college.github.io/docker-lecture-notes/docker.html#bookmark-document-start)

# Virtualisierung 
"Nachbildung", andere Guest-OS rennen auf Host-OS

# Image / Bild 
- Unveränderbar (immutable)
- Schichten
- Beim Start $\rightarrow$ wird zu einem Container

# Container 
- Genormtes Maß (Standardisierung)
- Besteht aus Prozess und Files
- Stop $\rightarrow$ Prozesse löschen, Files bleiben
- Delete $\rightarrow$ Files löschen

# Daemon
Kleines Program, welches im Hintergrund rennt (z.B.: [JetBrains Toolbox](https://www.jetbrains.com/toolbox-app/))

# CLI
Command-line interface $\rightarrow$ Schnittstelle zwischen Anwender und Computer

# Registry
Sammlung an Images $\rightarrow$ [dockerhub](https://hub.docker.com/)

# Wie funktioniert Docker?
Dockerfile $\rightarrow$ Anweisungen, wie das Image erstellt werden soll

Zwei Arten Images zu erlangen:
- Docker file `--(docker build)` $\rightarrow$ Image
- Image aus Registry `--(docker pull)` $\rightarrow$ Image

# Volumes
## Variante 1: Files werden im Container gespeichert
Nachteil: Files können schnell verloren gehen - löschen des Containers

## Variante 2: Bind Mount
Files werden in einem Ordner im eigenen File-System gespeichert
funktioniert unter WSL nicht

## Variante 3: Named Volumes:
Ebenfalls Ordner im File-System $\rightarrow$ kein direkter Zugriff möglich

# Cron Jobs
Prozesse / Aufgaben, welche automatisch zu bestimmten Uhrzeiten erledigt werden
Frei konfigurierbar (z.B.: Back-Ups)

# In der Praxis

Zeigt Repository von Images:

```
docker image ls
```

Startet container basierend am "alpine" image, führt echo command aus

```
docker run alpine echo Hello 4chif
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

