# Multi-Model Databases

Aaron Schreiegg, Filip Schauer, Emil Silber, Axel Csomany, Simon Pesut

# Inhalt

- Multi-Model Databases im allgemeinen
  - Überblick
  - Beschreibung
  - Vorteile, Nachteile und Anwendungsfälle
  
# Inhalt [zweite Folie, selber Titel]

- Konkrete Systeme (ArangoDB, OrientDB, Couchbase, MS Azure Cosmos DB)
- ArangoDB
  - Einführung ArangoDB
  - Konzepte & Schema (AQL)
  - Live-Demo ArangoDB

[Logo von ArangoDB irgendwo rein machen]

# Multi-Model Databases im allgemeinen [Titelfolie]
[-> Aaron Schreiegg]

## Übersicht

- "Mehrere Datenbanken in einem"
- Mehrere Datenmodelle
  - Document Model
  - Graph Model
  - Key-Value Model
  - Relational Model
- Verschiedene Data Types

# Datenmodelle [Titelfolie]

# Document Model
- JSON-ähnliche Dokumente
- Semi-Strukturierte Daten
- Beispiel: [Code im VS als .json-Datei einfügen und screenshotten]
```
{
    "id": 1,
    "name": "Laptop",
    "price": 1200
}
```

[Notiz: Speicherung von JSON-ähnlichen Dokumenten wie Semi-Strukturierte Daten z.B. Product Catalogs]

# Graph Model
- Nodes und Edges
- Für Relationship-based Data oder Recommendation Systems
- Beispiel: ["Ein Benutzer ist durch eine "hat gekauft"-Beziehung mit Produkten verbunden.". Am besten ähnliches Bild dazu im internet finden und beschreiben]

[Notiz: Daten in Form von "Nodes" (Knoten) und "Edges" (Kanten). Das ist perfekt für Relationship-based Data wie soziale Netzwerke oder Recommendation Systems.]

# Key-Value Model
- Einfaches Key-Value-Pair
- Schnelle Datenabfrage
- Beispiel: [wieder screenshotten und einfügen]
```
"order_123": { 
    "total": 500, 
    "items": ["item1", "item2"] 
}
```

# Relation Model
- Klassische Tabellenstruktur (Columns, Rows)
- Ideal für Transactional Systems

[Bild von relationale Tabellenstruktur auf Google finden oder evntl. eigenes Projekt screenshotten]

# Abfrage-Engines [Titelfolie]

# Abfrage-Engines
- Kombinierte Abfragesprachen
  - AQL
  - Gremlin
  - SQL
- ACID-Unterstützung

[Bilder: Evntl. Code-Snippet oder ähnliches zu AQL einfügen, und/oder Grafik ausm Internet zu ACID]

[Notiz: Kombinierte Abfragesprachen wie ... [erwähnen dass AQL von ArangoDB ist] für mehrere Datenmodelle. Unterstützung von ACID (Atomicity, Consistency, Isolation, Durability) je nach Anwendung]

# Vorteile, Nachteile und Anwendungsfälle [Titelfolie]
[-> Filip Schauer]

# Vorteile
- Flexibel
- Reduzierte Komplexität
- Kostensparung
- Optimisierte Integration
- Agilität
- Skalierbarkeit

[Notiz: Flexibel: Kombination verschiedener Datenmodellen in einer Plattform
Reduzierte Komplexität: Kein Betrieb mehrerer spezialisierter Databases notwendig
Kostensparung: Eine einzige Database Engine reduziert Infrastruktur- und Wartungskosten
Optimisierte Integration: Daten aus unteschiedlichen Datenmodellen
Agilität: Schnelle Anpassung an verschiedenen Use Cases
Skalierbarkeit: Viele Multi-Model Databases unterstützen verteilte Architekturen]

# Nachteile
- Komplexe Architektur
- Leistungskompromisse
- Hohe Lernkurve
- Limitierte Features

[Notiz: Mehrere Datenmodelle->erhöhte interne Komplexität. Leistungskompromisse, weil:
Multi-Model DBs weniger spezialisiert als Single-Model DBs, spezialisierte Systeme sind schneller für große Graphs oder hochfrequente Transaktionen.
Schwierig zum lernen und zum verstehen, da sich Entwickler mit mehreren Datemodellen und Abfragesprachen vertraut machen müssen
Limitierte Features: Nicht alle unterstützten Datenmodelle sind gleichermaßen optimiert]

# Anwendungsfälle
- Content-Management-Systeme
- Internet of Things
- Logistik und Lieferkettenmanagement
- Soziale Netzwerke
- Gesundheitswesen

[Pro Punkt jeweils ein kleines Bild einfügen]

# Verschiedene Systeme [Titelfolie]
[-> Axel Csomany]

- OrientDB
- Couchbase
- Microsoft Azure Cosmos DB
- ArangoDB
[Logo für jedes System in den folgenden Folien zeigen]

# OrientDB
- Open-Source
- Dokumente, Graphen und Objektorientierung
- SQL-ähnliche Abfragesprache

[Notiz: Open source, basierend auf Java. Unterstützt ..., Abrfagesprache ist wie bei vielen Multi-Model DBs ähnlich zu SQL]
[Bilder: Logo, Java logo]

# Couchbase
- Key-Value- und dokumentenorientierte Speicherung
- N1QL als eigene Abfragesprache

[Bilder: Logo, Key-Value/dokumentorientiert irgendwie sowas]
[Notiz: ..., N1QL ist auch wieder ähnlich zu SQL]

# Microsoft Azure Cosmos DB
- Cloud-basiert, global verteilt
- Unterstützt verschiedene APIs und Modelle

[Bilder: Logo, evntl. auch Microsoft oder Azure]
[Notiz: Cloud-basiert und global verteilte Datenbank. Unterstützt Dokumente, Graphen, Gremlin API, usw.]

# ArangoDB
- Ehemalig Open-Source
- Dokument-, Graph- und Key-Value-Modelle
- AQL als eigene Abfragesprache
[Bilder: Logo]

# [Kein Titel]
- Viele Systeme (auch CrateDB, EnterpriseDB, MarkLogic, SAP HANA, Virtuoso, SurrealDB und viele mehr)
- Unsere Wahl: ArangoDB

[Notiz: Wie man schon gesehen hat, gibt es viele solcher Systeme ... unsere Wahl war jedoch ArangoDB, da es oft benutzt wird, es interessant scheint etc.]

# ArangoDB
- Vor Oktober 2023 Open Source
- Gratis Community-Edition
- 2012 veröffentlicht
- Vereinigt drei Hauptmodelle:	
    1: Dokumentenorientiertes Modell (ähnlich wie MongoDB)
    2: Graphorientiertes Modell
	3: Key-Value-Modell
- Für klein und groß, skalierbar

[Notiz: Vor oktober 2023 war ArangoDB open-source, jetzt gibt's eine Community Edition für nicht kommerzielle Zwecke und <100GB Daten...
Dokumentenorientiertes Modell: Speicherung von JSON-Dokumenten
Graphorientiertes Modell: Speichern von Knoten (Vertices) und Kanten (Edges)
Key-Value-Modell: Schneller Zugriff auf einzelne Schlüssel/Werte;
sowohl für kleine Projekte als auch "Enterprise-Lösungen" geeignet  ]

# Warum ArangoDB
- Einheitliche Engine
- Einheitliche Abfragesprache (AQL)
- Einfache Installation & Cross-Plattform
- Skalierbarkeit

[Notiz: Einheitliche Engine: Dokumente, Graphen und Key-Value in einer Engine (RocksDB-Storage),
Einheitliche Abfragesprache AQL: Abfrage über alle Modelle hinweg mit SQL-ähnlicher Syntax
Einfache Installation & Cross-Plattform: Läuft auf Windows, Linux und macOS, 
(bereits erwähnt) Skalierbarkeit: Einfache Cluster-Konfiguration für hohe Verfügbarkeit und Lastenverteilung
// Cluster-Konfiguration: Betrieb eines Datenbankenmanagementsystems auf mehreren physisch oder virtuell getrennten Servern (Nodes), die miteinander verknüpft sind]

# Installation und erste Erfahrungen [Titelfolie]
[-> Emil Silber]

# Installation
- Einfach über Installationspaket oder Docker
- Port 8529 
- ArangoDB Web UI

[Bilder: Screenshot from Web UI]
[Notiz: Kann über ein Installationspaket oder mit Docker sehr einfach eingerichtet werden. läuft standardmäßig auf Port 8529. über das Webinterface ArangoDB Web UI kann direkt auf die Datenbank zugegriffen werden]

# Besonderheiten
- Schnell wechselbar zwischen Graph- und Dokumentenansicht
- AQL-Abfragen sind bei bestehenden SQL-Grundkenntnisse einfach zum lernen
- Foxx Framework, für Microservices/REST-Services direkt in der Datenbank

# Einordnung im CAP-Dreieck
- Nicht direkt einordbar
- Anpassbare Konsistenz, flexible Verfügbarkeit
- Von Natur aus Partitionstolerant

# Konzepte und Schema [Titelfolie]
[Notiz: Was uns beim ersten Nutzen aufgefallen ist ... ]

# Dokumentenspeicherung
- JSON
- eindeutige _key-Eigenschaft
- optional _id bzw. _ref  

[Notiz: Dokumente sind standardmäßig im JSON-Format; haben eine eindeutige _key-Eigenschaft (primär Schlüssel); Optional kann man _id bzw. _rev zur eindeutigen Identifikation und Versionsverwaltung verwenden]

# Graphenspeicherung
- Vertex-Collections (Knoten) und Edge-Collections (Kanten) 
- Kanten verweisen auf _from und _to
- Mehrere Graphen können nebeneinander existieren
[Notiz: durch Vertex-Collections (Knoten) und Edge-Collections (Kanten) definiert; Kanten verweisen auf _from und _to (beides Dokumenten-IDs), wodurch man Beziehungen definieren kann; Mehrere Graphen können nebeneinander existieren, so kann man verschiedene Beziehungsstrukturen verwalten]

# Key-Value-Speicherung
  - Dokumente auch als Key-Value-Paare behandelbar
  - Super für teils unstrukturierte und schnelle Schlüssel-Wert-Zugriffe

[Notiz: Im Grunde lassen sich Dokumente auch wie Key-Value-Paare behandeln, indem man nur den Schlüssel _key kennt und schnell direkt den Wert abfragt. Hier glänzt ArangoDB in Szenarien, in denen man teils unstrukturierte (Dokumentenmodell) und teils sehr schnelle Schlüssel-Wert-Zugriffe benötigt.]

# Schema-Definiton [Titelfolie]

# Schema-Definition
- Schemalos im Sinne von klassischen relationalen Datenbanken
  - Kein festes Schema erzwungen
  - Man kann "Flexibilität nutzen"
- Ab Version 3.7+: Möglichkeit auf Schema-Validierung

[Notiz: 	
ArangoDB ist schemalos im Sinne von klassischen relationalen Datenbanken
- Standardmäßig wird kein festes Schema erzwungen
- Man kann "Flexibilität nutzen", d.h. Dokumente können unterschiedlich aufgebaut sein 
	- Es gibt keine Pflichtangaben, welche Felder ein Dokument enthalten muss
	- Es muss nicht definiert werden, welchen Datentyp ein Feld haben soll.
	- Dokumente in derselben Collection können unterschiedliche Strukturen besitzen.	
- ab der Version 3.7+ gibt es die Möglichkeit der Schema-Validierung
  - Man kann Validierungsregeln für Collections definieren, um die Struktur/Typen der Dokumente einzuschränken
  - Hierdurch lassen sich Fehler oder unpassende Dokumentenstrukturen vermeiden]

# Beziehungen
- Dokumentorientierte Beziehungen
  - Verweis auf _id eines anderen Dokuments
  - Ähnlich wie Foreign-Keys
- Graphorientierte Beziehungen
  - Explizit in Edge-Collections gespeichert
  - Felder _from und _to
  -> Durchführung echter Graphabfragen (z.B. GRAPH_TRAVERSAL)

[Notiz: Dokumentenorientierte Beziehungen 
- Man verweist in einem Dokument auf die _id eines anderen Dokuments
- ähnlich wie bei "normalen" Foreign Keys, aber ohne strikte Relationen Constraints 
Graphorientierte Beziehungen 
- werden explizit in Edge-Collections gespeichert
- eine Edge-Collection hat Felder _from und _to, die jeweils auf die _id-Werte von Dokumenten in Vertex-Collections zeigen
- Dadurch können echte Graphabfragen (z.B. GRAPH_TRAVERSAL in AQL) ausgeführt werden.]  

# Fazit [Titelfolie]
[-> Filip Schauer]

# Multi-Model Databases
- Ein nicht spezialisiertes System für mehrere Anwendungsfälle
- Flexibel, kostensparend, agil, skalierbar
- Komplex, Leistungsverluste, Lernkurve

# ArangoDB
- Starker Fokus auf Community und Entwicklung
- AQL als gemeinsame Abfragesprache
- Einfaches Setup, moderate Lernkurve
- Features wie Direkte Intergration von Graphfunktionen, Web-UI, Foxx-Services für serverseitige JS-Lösungen, ...

# Live-Demo [Titelfolie]
[-> Simon Pesut]

# Vielen Dank [Titelfolie]
[Bilder: Verwendete Bilder, Logos, etc.]