# Übersicht
- Scylla DB
- Alternative zu Cassandra
- Schemalose Tabelle
- Key-Value 
- Hochleistungsfähig (in C++ geschrieben)
- Geringe Latenz, hohe skalierbarkeit
- Knoten werden im Cluster automatisch verteilt und sind gleichmäßig
- Daten werden aus Consistent Hashing verteilt
- Replikation sorgt dass Daten auf mehreren knoten gespeichert werden, um Ausfallsicherheit zu gewährleisten

# Anwendungsfälle
- IoT Anwendungen
- Medien-Streaming-Dienste
- Echtzeit-Analysen
- Machine Learning Feature Store

# Implementierung

- Kann lokal oder in der Cloud mit und ohne Docker gelaufen werden

# Vorteile

- Niedrige Latenzen 
- Asynchrone Verarbeitung
- Automatische Lastverteilung
- Cassandra-Kompatibilität
- Hohe skalierbarkeit
- Flexible Datenmodelle

# Nachteile
- Steilere Lernkurve
- Begrenzte Unterstützung für komplexe Abfragen
- Weniger Standarttools, sorgfältige Planung ist nötig 

# Mehrbenutzerbetrieb

- Für hohe Parallelität optimiert durch eine Shared-Nothing-Architektur
- Deadlocks: Gibt es niht wegen Lightweight Transactions
- Transactions: Keine komplexen Transaktionen, wegen LWT
- LWT $\rightarrow$ funktioniert nur bei bestimmten Datenblock $\rightarrow$ nicht so flexibel

# CAP-Dreieck

- Consistency, Availability, Partition Tolerance
- Scyllar ist primär AP