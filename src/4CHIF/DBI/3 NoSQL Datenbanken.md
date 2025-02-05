# In-Memory

## Erklärung

- Daten werden **direkt im RAM** anstatt auf einer SSD bzw. HDD gespeichert
- Daten werden als **Schlüssel-Wert-Paare** gespeichert
- Unterstützt **verschiedene Datenstrukturen** wie Strings, Hashes, Lists oder Sets
- Schemalos
- Unterstützt Transaktionen
- Deadlocks sind unwahrscheinlich
- CAP-Dreieck: **CP**

## Vorteile & Nachteile

### Vorteile
$\textcolor{lime}{+}$ Extrem schnell \
$\textcolor{lime}{+}$ Gut für Anwendungen mit hohen Anforderungen von Geschwindigkeit und Skalierbarkeit \
$\textcolor{lime}{+}$ Einfache Architektur

### Nachteile
$\textcolor{red}{-}$ Hohe Kosten
$\textcolor{red}{-}$ Datenvolatilität: Da RAM flüchtig ist, besteht das Risiko des Datenverlusts bei einem Stromausfall oder Systemabsturz. 
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
