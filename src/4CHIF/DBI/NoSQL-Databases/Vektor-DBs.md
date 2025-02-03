# Was sind Vektoren

- Ein **Vektor** ist eine mathematische Darstellung eines Punktes im Raum.
- Vektoren können aber auch mehr als drei Dimensionen haben – sogar **Hunderte oder Tausende**.
- Liste an Zahlen (Koordinaten)
- Richtung und eine Länge

# Was ist eine Vektordatenbank

- Daten werden in Vektoren gespeichert
- nach groben Eigenschaften
- Wichtig für KI: **Machine-Learning- und Deep-Learning-Systeme**

# Anwendungsfälle

- **Suchmaschinen & KI**
- **Bilderkennung & Videoanalyse**
- **Sprachverarbeitung & Audio**
- **Empfehlungssysteme**

# Verschiedene Vektordatenbanken

- Weaviate
- Milvus
- Pinecone
- Redis
- Qdrant

# Unsere Datenbank - Milvus

- Open-Source
- unsere DB läuft über einen Docker-Container
- sehr flexibel
- starke Performance
- klare Dokumentation

# Setup von Milvus

- **Betriebssystem:** Linux, MacOs
- Von **Github** installiert
- Anaconda **Umgebung** erstellt und alle **dependencies** hinzugefügt
- Mittels Python Code **erstellt / konfiguriert**

# Einfügen und Löschen

## Einfügen

```python
def add_audio_file(self, audio_file: str):
    try:
        embedding = self.extract_openl3_features(audio_file)
        data = [
            [audio_file],
            [embedding.tolist()]
        ]
        self.collection.insert(data)
        print(f"Successfully added {audio_file} to database")
    except Exception as e:
        print(f"Failed to add {audio_file} to database: {e}")
```

## Löschen

```python
def delete_by_id(self, id: int):
    try:
        delete_result = self.collection.delete(f'id == {id}')
        if delete_result.delete_count > 0:
            print(f"Successfully deleted entry with ID {id} from database")
        else:
            print(f"No matching entry found for ID {id}")
    except Exception as e:
        print(f"Failed to delete entry with ID {id} from database: {e}")
```

# Suche nach Ähnlichkeit

- **SQL-Datenbank:** Exakte Suche --> name = "Franz"
- **Vektordatenbank:** Nach ähnlichen Vektoren suchen
- Durch mathematische Abstandsberechnungen wie:
  - **Euklidische Distanz:** Entfernung von Punkten
  - **Cosine Similarity:** Ähnlichkeit der Winkel

# Daten in Vektoren umwandeln

- Klassische Datenbanken speichern Text oder Zahlen **direkt** (z. B., „Hund“, „Katze“).
- Vektordatenbanken speichern Daten als **numerische Repräsentationen**.
- Ähnliche Begriffe wie „Wolf“ oder „Katze“ haben Vektoren, die **nahe beieinander liegen**.

# Datenhaltung – Schema & Beziehung

- Speicherung als hochdimensionale Vektoren
- Indexierung für effiziente Suche
- Keine direkten Fremdschlüssel
- Verknüpfung durch Ähnlichkeiten

# Indexierungsmethoden

- **Brute-Force** = genau, langsam, Speicherverbrauch = hoch
- **IVF (Clustering)** = schnell, ungenau, Speicherverbrauch = mittel
- **HNSW** = sehr schnell, sehr genau, Speicherverbrauch = hoch
- **PQ** = schnell, weniger genau, Speicherverbrauch = sehr wenig

# Einordnung im CAP-Dreieck

- **$\textcolor{lime}{+}$ Partition Tolerance:** hochgradig verteilt um Daten zu verarbeiten, bei Ausfällen müssen Knoten weiterarbeiten
- **$\textcolor{lime}{+}$ Availability:** hohe Priorität, ständiger Zugriff auf Daten muss möglich sein
- **$\textcolor{red}{-}$ Consistency:** keine sofortige Aktualisierung, eventuelle Konsistenz, mögliche Verschlechterung von Performance

# Mehrbenutzerbetrieb und Transaktionen

- Keine Transaktionen
- Auf parallele Abfragen optimiert
  - Deadlocks: Selten da meist mehr geschrieben als gelesen wird
  - Lost Update: Gleichzeitige Änderung eines Vektors

# Vergleich zu relationalen Datenbanken

| Klassische SQL-Datenbank | Vektordatenbank |
|--------------------------|-----------------|
| Tabellen, Spalten, Zeilen | Mehrdimensionale Vektoren |
| Exakt                    | Semantisch (Ähnlichkeitssuche) |
| Texte, Zahlen, strukturierte Werte | Bilder, Audio, Texte als Vektoren |
| Rechnungsverwaltung, Shops | KI, Empfehlungen |