# Übersicht
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