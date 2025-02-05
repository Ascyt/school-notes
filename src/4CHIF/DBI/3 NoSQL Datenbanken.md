# In-Memory

## Erklärung

- Daten werden **direkt im RAM** anstatt auf einer SSD bzw. HDD gespeichert
- Daten werden als **Schlüssel-Wert-Paare** gespeichert
- Unterstützt **verschiedene Datenstrukturen** wie Strings, Hashes, Lists oder Sets
- Schemalos
- Unterstützt ACID-Transaktionen
- Deadlocks sind unwahrscheinlich
- CAP-Dreieck: **CP**

## Vorteile & Nachteile

### Vorteile
$\textcolor{lime}{+}$ Extrem schnell \
$\textcolor{lime}{+}$ Gut für Anwendungen mit hohen Anforderungen von Geschwindigkeit und Skalierbarkeit \
$\textcolor{lime}{+}$ Einfache Architektur

### Nachteile
$\textcolor{red}{-}$ Hohe Kosten \
$\textcolor{red}{-}$ Datenvolatilität: Da RAM flüchtig ist, besteht das Risiko des Datenverlusts bei einem Stromausfall oder Systemabsturz. \ 
$\textcolor{red}{-}$ Speicherkapazität

## Beispiele

- **Redis**
- Memcached
- VoltDB
- SAP HANA

# Spaltenoriert

## Erklärung

- Speichern von Daten in **Spalten anstatt Zeilen**
- Daten sind in **"Column Families"** organisiert, was flexible Strukturen ermöglicht
- Kein festes Schema
- Spalten können dynamisch hinzugefügt bzw. entfernt werden
- Schlechte Transaktionsunterstützung
- CAP-Dreieck: **AP**

## Vorteile & Nachteile

### Vorteile
$\textcolor{lime}{+}$ Gut für Anwendungen, bei denen sich Datenstrukturen häufig ändern \
$\textcolor{lime}{+}$ Hohe Skalierbarkeit und Performance \
$\textcolor{lime}{+}$ Kein Single Point of Failure

### Nachteile
$\textcolor{red}{-}$ Keine Unterstützung für Joins \
$\textcolor{red}{-}$ Komplexes Schema-Design \
$\textcolor{red}{-}$ Leistung bei Transaktionen, kein vollständiges ACID-Transaktionsmodell

## Beispiele
- **Apache Cassandra**
- HBase
- ScyllaDB

# Vektor

## Erklärung
- Ein Vektor ist eine **mathematische Darstellung eines Punktes in einen $n$-dimensionalen Raum**.
- Wichtig für Artificial Intelligence: **Machine-Learning- und Deep-Learning-Systeme**
- Suche nach **Ähnlichkeit** anstatt genaue Treffer durch mathematische Abstandsberechnungen
- Ähnliche Daten haben Vektoren, die nahe beinander liegen
- Keine Transaktionen 
- Deadlocks sind unwahrscheinlich
- CAP-Dreieck: **AP**

## Beispiele
- **Milvus**
- Weaviate
- Pinecone
- Qdrant

# Key-Value

## Erklärung

- Daten werden als **Schlüssel-Wert-Paare** gespeichert
- ScyllaDB ist eine verteilte NoSQL-Datenbank, die auf der Architektur von Apache Cassandra basiert
- Entwickelt für **hohe Leistung** und **geringe Latenz**
- Unterstützt **horizontal skalierbare** Architekturen
- Bietet **starke Konsistenz** und **Verfügbarkeit**
- Keine ACID Transaktionen
- CAP-Dreieck: **AP**

## Vorteile & Nachteile

### Vorteile
$\textcolor{lime}{+}$ Hohe Leistung und niedrige Latenz durch optimierte Nutzung von Hardware-Ressourcen \
$\textcolor{lime}{+}$ Automatische Sharding- und Replikationsmechanismen für einfache Skalierbarkeit \
$\textcolor{lime}{+}$ Kompatibel mit dem Cassandra Query Language (CQL), was den Umstieg erleichtert \
$\textcolor{lime}{+}$ Geringere Betriebskosten durch effiziente Ressourcennutzung

### Nachteile
$\textcolor{red}{-}$ Komplexität bei der Verwaltung und Konfiguration in großen verteilten Systemen \
$\textcolor{red}{-}$ Erfordert ein gewisses Maß an Fachwissen für die optimale Nutzung und Fehlerbehebung \
$\textcolor{red}{-}$ Nicht für alle Anwendungsfälle geeignet, insbesondere wenn ACID-Transaktionen erforderlich sind

## Beispiele

- **ScyllaDB**: Alternative zu Apache Cassandra

# Zeitreihen

## Erklärung 
- Effiziente Speicherung und Verarbeitung von hochfrequenten Zeitseriendaten
- Schemafrei, basiert auf einem linearen Speicher mit Zeitstempeln
- Optimiert für Append-Only-Operationen, mit automatischer Kompression
- Keine ACID Transaktionen
- CAP-Dreieck: **CP**

### Vorteile
$\textcolor{lime}{+}$ Hohe Performance \
$\textcolor{lime}{+}$ Gut für IoT und Sensordaten im allgemeinen \
$\textcolor{lime}{+}$ Einfache Integration, Retention Policies

### Nachteile
$\textcolor{red}{-}$ Keine Unterstützung für Joins \
$\textcolor{red}{-}$ Komplexes Schema-Design \
$\textcolor{red}{-}$ Leistung bei Transaktionen, kein vollständiges ACID-Transaktionsmodell

## Beispiele

- **InfluxDB**
- Premetheus
- TimescaleDB
- OpenTSDB
- Druid

# Multi-Model

## Erklärung
- Unterstützt mehrere Datenmodelle: Document, Graph, Key-Value, Relational
- Unterstützt auch verschiedene Datentypen
- Nicht spezialisiert, für mehrere Anwendungsfälle
- Unterstützt ACID-Transaktionen

## Vorteile & Nachteile

### Vorteile
$\textcolor{lime}{+}$ Flexibel \
$\textcolor{lime}{+}$ Kostensparend \
$\textcolor{lime}{+}$ Agil und skalierbar

### Nachteile
$\textcolor{red}{-}$ Leistungskompromisse \
$\textcolor{red}{-}$ Hohe Lernkurve \
$\textcolor{red}{-}$ Limitierte Features

## Beispiele
- **ArangoDB**
- OrientDB
- Couchbase
- Microsoft Azure Cosmos DB