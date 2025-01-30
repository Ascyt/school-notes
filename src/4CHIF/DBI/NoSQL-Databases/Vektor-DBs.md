# Vektoren
- Mathematische Darstellung eines Punktes im Raum
- Knnen aber auch mehr als drei Dimensionen haben - sogar hunderte oder tausende
- Liste an Zahlen (Koordinaten)
- Richtung und eine Länge

# Vektordatenbanken
- Daten werden in Vektoren gespeichert
- Nach groben Eigenschaften
- Wichtig für KA: Machine Learning bzw. Deep Learning Systeme

# Anwendungsfälle
- Suchmaschinen & KI
- Bilderkennung & Videoanalyse
- Sprachverarbeitung & Audio
- Empfehlungssysteme

# Verschiedene Vektordatenbanken
- Weaviate 
- **Milvus**
- Pinecone
- Qdrant

# Milvus Datenbank
- Open Source
- Sehr flexibel
- Starke Performance
- Klare Dokumentation

## Setup
- Van GitHub installieren
- Anaconda Umgebung erstellenund alle Dependencies hinzufügen
- Mittels Python verwenden

# Beispielfunktionen 
- Suche nach Ähnlichkeit
- Nicht möglich in SQL, da nur exakte Suche möglich ist
- Durch mathematische Abstandsberechnungen wie: Euklidische Distanz, Cosine Similarity

# Daten in Vektoren umwandeln
- Klassische Datenbanken speichern Text oder Zahlen direkt
- Vektordatenbanken speichern Daten als numerische Repräsentationen
- Ähnliche Begriffe wie "Wolf" oder "Katze"  haben Vektoren, die nahe beinandere liegen

# Datenhaltung - Schema & Beziehung
- Speicherung als hochdimensionale Vektoren
- Indexierunug für effiziente Suche
- Keine direkte Fremdschlüssel
- Verknüpfung durch Ähnlichkeiten

# Indexierungsmethoden
- **Brute-Force**: genau, langsam, hohere Speicherverbrauch
- **IVF (Clustering)**: schnell, ungenau, mittlerer Speicherverbrauch
- **HNSW**: sehr schnell, sehr genau, hoher Speicherverbrauch
- **PQ**: schnell, weniger genau, sehr wenig Speichervebrauch

# Einordnung im CAP-Dreieck
- **Partition Tolerance** und **Availability**

# Mehrbenutzerbetrieb und Transaktionen
- Keine Transaktionen
- Auf paralelle Abfragen optimiert
  - Deadlocks: Aufgrund von Sperrmechanismen von Milvus selten
  - Lost Update: Gleichzeitige Änderung eines Vektors

# Vergleich zu relationalen Datenbanken

|Klassisch|Vektor|
|---------|------|
|Tabellen, Spalten, Zeilen|Mehrdimensionale Vektoren|
|Exakt|Semantschi (Ähnlichkeitssuche)|

# Vorteile
- Semantische Suche
- Effiziente Verarbeitung unstrukturierter Daten
- Skalierbarkeit & Performance

# Nachteile
- Hoher Speicherbedarf
- Komplexe Implementierung
- Schwierig für häufige Updates