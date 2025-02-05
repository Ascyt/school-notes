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
$\textcolor{red}{-}$ Datenvolatilität (Flüchtigkeit von RAM)\
$\textcolor{red}{-}$ Speicherkapazität

## Anwendungsfälle
- Caching
- Session-Management
- Echtzeit-Analysen
- Leaderboards & Ranglisten
- Message Queues

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

# Anwendungsfälle
- Big Data & Analysen
- IoT- und Zeitreihendaten
- Globale Anwendungen

## Beispiele
- **Apache Cassandra**
- HBase
- ScyllaDB

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

## Anwendungsfälle
- Echtzeit-Analysen
- IoT und Zeitreihendaten
- Daten-Streming und Messaging
- Konfigurationsdaten

## Beispiele

- **ScyllaDB**: Alternative zu Apache Cassandra

# Vektor

## Erklärung
- Ein Vektor ist eine **mathematische Darstellung eines Punktes in einen $n$-dimensionalen Raum**.
- Wichtig für Artificial Intelligence: **Machine-Learning- und Deep-Learning-Systeme**
- Suche nach **Ähnlichkeit** anstatt genaue Treffer durch mathematische Abstandsberechnungen
- Ähnliche Daten haben Vektoren, die nahe beinander liegen
- Keine Transaktionen 
- Deadlocks sind unwahrscheinlich
- CAP-Dreieck: **AP**

## Anwendungsfälle
- Suchmaschinen und Artificial Intelligence
- Bilderkennung & Videoanalyse
- Sprachverarbeitung & Audio
- Empfehlungssysteme wie bei YouTube oder Spotify

## Beispiele
- **Milvus**
- Weaviate
- Pinecone
- Qdrant

# Zeitreihen

## Erklärung 
- Effiziente Speicherung und Verarbeitung von **hochfrequenten Zeitseriendaten**
- **Schemafrei**, basiert auf einem linearen Speicher mit Zeitstempeln
- Optimiert für Append-Only-Operationen, mit automatischer Kompression
- Keine ACID Transaktionen
- Deadlocks sind nicht möglich
- CAP-Dreieck: **CP**

### Vorteile
$\textcolor{lime}{+}$ Hohe Performance \
$\textcolor{lime}{+}$ Gut für IoT und Sensordaten im allgemeinen \
$\textcolor{lime}{+}$ Einfache Integration, Retention Policies

### Nachteile
$\textcolor{red}{-}$ Keine Unterstützung für Joins \
$\textcolor{red}{-}$ Leistung bei Transaktionen, kein vollständiges ACID-Transaktionsmodell

## Anwendungsfälle
- IoT (Sensordaten)
- System- und Netzwerkmonitoring
- Finanz- und Marktanalysen
- Log- und Eventdaten
- Performance-Tracking 

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
- CAP-Dreieck: **AP** oder **CP**, kommt darauf an

## Vorteile & Nachteile

### Vorteile
$\textcolor{lime}{+}$ Flexibel \
$\textcolor{lime}{+}$ Kostensparend \
$\textcolor{lime}{+}$ Agil und skalierbar

### Nachteile
$\textcolor{red}{-}$ Leistungskompromisse \
$\textcolor{red}{-}$ Hohe Lernkurve \
$\textcolor{red}{-}$ Limitierte Features

## Anwendungsfälle
- Content-Management-Systeme
- IoT
- Logistik unt Lieferkettenmanagement
- Soziale Netzwerke
- Gesundheitswesen

## Beispiele
- **ArangoDB**
- OrientDB
- Couchbase
- Microsoft Azure Cosmos DB

# Fazit (Tabelle)

| Datenbanktyp | Merkmal | CAP-Dreieck & ACID | Vorteil | Nachteil | Wichtigster Anwendungsfall | Wichtigstes Beispiel |
|-|-|-|-|-|-|-|
| In-Memory | Daten im RAM, Schlüssel-Wert-Paare, schemalos | CP, unterstützt ACID | Extrem schnell, einfache Architektur | Hohe Kosten, Datenvolatilität | Caching | Redis |
| Spaltenorientiert | Daten in Spalten, flexible Strukturen, kein festes Schema | AP, keine ACID | Hohe Skalierbarkeit, kein Single Point of Failure | Keine Joins, komplexes Schema-Design | Big Data & Analysen | Apache Cassandra |
| Key-Value | Schlüssel-Wert-Paare, hohe Leistung, horizontale Skalierbarkeit | AP, keine ACID | Hohe Leistung, automatische Skalierung | Komplexe Verwaltung, nicht für ACID-Transaktionen geeignet | Echtzeit-Analysen | ScyllaDB |
| Vektor | Mathematische Darstellung, Suche nach Ähnlichkeit | AP, keine ACID | Wichtig für AI, Ähnlichkeitssuche | Keine Transaktionen | Suchmaschinen & AI | Milvus |
| Zeitreihen | Effiziente Speicherung von Zeitseriendaten, schemafrei | CP, keine ACID | Hohe Performance, gut für IoT | Keine Joins, keine Transaktionen | IoT (Sensordaten) | InfluxDB |
| Multi-Model | Unterstützt mehrere Datenmodelle, flexibel | AP oder CP, unterstützt ACID | Flexibel, kostensparend | Leistungskompromisse, hohe Lernkurve | Content-Management-Systeme | ArangoDB |