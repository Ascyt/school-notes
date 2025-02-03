# Scylla Datenbank

- Verteilte No-SQL Datenbank

hohe Leistung, das heißt schnell, geringe Latenz und horizontale Skalierbarkeit

- Hochoptimale Alternative zu Apache Cassandra vollständig kompatibel mit Cassandra-Query-Language-Ökosystem (CQL).
- NO-SQL: Speichert Daten in schemalosen tabellenorientierten Struktur. Ist geeignet für alle Arten von Struktur.
- Key-Value und Wide-Column Datenmodell: tabellenbasiert wie Cassandra, Daten in Schlüsselwertpaaren und Spalten organisiert.

# Hauptmerkmale

1. **Hochleistungsfähig:**
   - ScyllaDB wurde in C++ entwickelt (im Gegensatz zu Cassandra, das auf Java basiert), wodurch es die Ressourcen effizienter nutzt.

2. **Geringe Latenz:**
   - Dank eines Shared-Nothing-Architekturmodells werden Lese- und Schreibanforderungen ohne Konflikte zwischen CPU-Kernen verarbeitet.
   - Unterstützt Echtzeit-Anwendungen mit Antwortzeiten im Bereich von Millisekunden.

3. **Hohe Skalierbarkeit:**
   - Unterstützt horizontale Skalierung, d. h., es können weitere Serverknoten hinzugefügt werden, um die Kapazität zu erhöhen.
   - Automatische Verteilung von Daten auf Knoten im Cluster.

4. **Kompatibilität:**
   - CQL-Kompatibilität: Anwendungen, die für Apache Cassandra geschrieben wurden, können ohne Änderungen auf ScyllaDB laufen.
   - Integration mit Ökosystem-Tools wie Apache Kafka, Spark und Grafana.

# Funktionsweise

1. **Verteilte Architektur:**
   - Ein ScyllaDB-Cluster besteht aus mehreren Knoten (Nodes), die gleichwertig sind.
   - Daten werden mit einem Consistent Hashing-Algorithmus auf die Knoten verteilt.
   - Replikation sorgt dafür, dass Daten auf mehreren Knoten gespeichert werden, um Ausfallsicherheit zu gewährleisten.

2. **Asynchronität und Thread-Per-Core:**
   - ScyllaDB verwendet einen asynchronen IO-Mechanismus und einen Thread-per-Core-Ansatz. Jeder CPU-Kern verarbeitet Daten unabhängig, was Locking-Overheads vermeidet.

3. **Speicherverwaltung:**
   - ScyllaDB verwaltet Speicher direkt und verwendet eine optimierte Datenstruktur namens Memtable, bevor Daten auf die Festplatte geschrieben werden.
   - Daten werden in SSDs gespeichert, wobei Schreibvorgänge in kompakten SSTables (Sorted Strings Tables) organisiert werden.

4. **Lesen und Schreiben:**
   - **Schreiben:** Neue Daten werden zuerst in den Memtables gespeichert und dann auf die Festplatte geschrieben.
   - **Lesen:** ScyllaDB liest Daten aus dem Cache (wenn verfügbar) oder direkt von der Festplatte.

# Anwendungsbereiche

- Echtzeit-Analysen:
- IoT und Zeitreihendaten:
- Daten-Streaming und Messaging:

# Konkrete Implementierungen dieser Datenbank-Art:

ScyllaDB gehört zur Familie der verteilten NoSQL-Datenbanken und ist kompatibel mit Apache Cassandra. Weitere Vertreter dieser Art sind:

- Apache Cassandra
- Amazon Keyspaces (for Apache Cassandra)
- DataStax Enterprise (DSE)

# Entscheidung für ScyllaDB und deren Besonderheiten:

Ich habe mich für ScyllaDB entschieden, da sie eine leistungsstarke, skalierbare und Cassandra-kompatible NoSQL-Datenbank ist. Sie bietet:

- Niedrige Latenzen durch optimierte Speicherverwaltung
- Hohe Durchsatzraten durch asynchrone Verarbeitung
- Automatische Lastverteilung mit dem shard-per-core-Ansatz
- Cassandra-Kompatibilität, wodurch bestehende Cassandra-Treiber genutzt werden können

# Mehrbenutzerbetrieb

ScyllaDB ist für hohe Parallelität optimiert und nutzt eine **Shared-Nothing-Architektur**, um Anfragen unabhängig zu verarbeiten.

# Deadlocks

Da ScyllaDB auf **optimistische Synchronisation** setzt (kein traditionelles Locking wie in relationalen DBs), gibt es keine Deadlocks. Stattdessen nutzt es **Lightweight Transactions (LWT)**, um Konflikte zu vermeiden.

# Transaktionen

ScyllaDB kann nicht so komplexe Transaktionen wie eine klassische SQL-Datenbank ausführen.

Stattdessen gibt es **Lightweight Transactions (LWT)**, die sicherstellen, dass Änderungen in einer bestimmten Reihenfolge passieren. Das funktioniert aber nur innerhalb einer einzelnen Daten-Partition (also eines bestimmten Datenblocks). Es ist **nicht so flexibel wie eine klassische SQL-Datenbank**, aber dafür schneller und ohne Deadlocks.

# Einordnung und Vergleich von Datenbanken

## Wo würden Sie Ihre Datenbank im CAP-Dreieck einordnen?

### Einordnung der ScyllaDB im CAP-Dreieck

| Eigenschaft            | Beschreibung                                                                 |
|------------------------|------------------------------------------------------------------------------|
| Consistency (Konsistenz) | - Unterstützt verteilte Konsistenzmodelle (Tunable Consistency) - Ermöglicht starke Konsistenz je nach Konfiguration |
| Availability (Verfügbarkeit) | - Hohe Verfügbarkeit durch verteilte Architektur - Nutzbar auch bei Teilausfällen dank Replikation |
| Partition Tolerance    | - Entwickelt für Partitionstoleranz in verteilten Systemen - Robuste Performance auch bei Netzwerkproblemen |

![cap](https://thecustomizewindows.cachefly.net/wp-content/uploads/2021/01/CAP-Theorem-Explained.png)

"ScyllaDB bietet flexible Optionen, um das CAP-Dreieck optimal auszubalancieren, je nach den spezifischen Anforderungen."

## Vor- und Nachteile der ScyllaDB im Vergleich zu relationalen Datenbanken

| Vorteile von ScyllaDB | Nachteile von ScyllaDB |
|-----------------------|------------------------|
| Hohe Skalierbarkeit (nahezu lineare horizontale Skalierung) | Steilere Lernkurve im Vergleich zu relationalen Datenbanken |
| Geringe Latenz durch optimierte Architektur (C++ statt Java) | Begrenzte Unterstützung für komplexe Abfragen (kein SQL, sondern CQL) |
| Flexible Konsistenzmodelle für unterschiedliche Anwendungsfälle | |

| Vorteile von relationalen DBs | Nachteile von relationalen DBs |
|-------------------------------|-------------------------------|
| Starkes Schema (verlässliche Struktur) | Begrenzte Skalierbarkeit (vertikal) |
| Einfache und optimierte Abfragen mit SQL | Weniger geeignet für semi- oder unstrukturierte Daten |
| ACID-Transaktionen für Datenkonsistenz | |

"ScyllaDB ist besonders für Big Data und Echtzeitanalysen geeignet, während relationale Datenbanken durch ihre Einfachheit und Zuverlässigkeit punkten."

# Fazit

- ScyllaDB ist eine leistungsstarke NoSQL-Datenbank, die für hohe Skalierbarkeit und geringe Latenz optimiert ist.
- Sie bietet flexible Konsistenzmodelle, die an spezifische Anforderungen angepasst werden können.
- Relationale Datenbanken bleiben die beste Wahl für klassische Anwendungen mit stark strukturierten Daten.
