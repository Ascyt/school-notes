# 📌 Allgemein

**Typ:** Zeitserien-Datenbank (TSDB)  
**Funktion:** Speichert und verarbeitet hochfrequente Zeitseriendaten effizient  
**Architektur:** Schemafrei, basiert auf einem linearen Speicher mit Zeitstempeln  
**Abfragesprache:** InfluxQL oder Flux  
**Speicherung:** Optimiert für Append-Only-Operationen, mit automatischer Kompression  

## 📊 Anwendungsfälle

- 📡 **IoT (Sensor-Daten)**
- 🖥 **System- und Netzwerk-Monitoring**
- 💰 **Finanz- und Marktanalysen**
- 📜 **Log- und Event-Daten**
- 🚀 **Performance-Tracking (z. B. DevOps, Application Monitoring)**


# ⚡ Entscheidung und Besonderheiten von InfluxDB

✅ **Hohe Performance** (schnelles Schreiben und Lesen)  
✅ **Retention Policies** (automatische Datenlöschung)  
✅ **Einfache Integration** (MQTT, Grafana)  
✅ **IoT-Fokus** (ideal für Sensordaten)  

## 🔍 Vergleich mit anderen Zeitserien-Datenbanken

| Datenbank     | Vorteile | Nachteile |
|--------------|---------|-----------|
| **Prometheus** | Perfekt für Monitoring und Alerting | Nicht ideal für langfristige Speicherung |
| **TimescaleDB** | Nutzt SQL, ideal für komplexe Abfragen | Schreibgeschwindigkeit langsamer als InfluxDB |
| **OpenTSDB** | Unterstützt viele Backends (z. B. HBase) | Schwergewichtiger, weniger benutzerfreundlich |
| **Druid** | Echtzeit-Analysen mit niedriger Latenz | Komplexe Einrichtung |

# 🛠 Erweiterte Konzepte und Theorien

## 🏛 Was ist das **CAP-Theorem**?

1️⃣ **Consistency (C)** – Jeder Nutzer sieht immer die aktuellsten und konsistenten Daten.  
2️⃣ **Availability (A)** – Das System antwortet immer, selbst wenn einige Knoten ausfallen.  
3️⃣ **Partition Tolerance (P)** – Die Datenbank funktioniert auch bei Netzwerkproblemen weiter.  

📌 **InfluxDB ist eine CP-Datenbank** (Consistency & Partition Tolerance)
✅ Konsistenz (C): Daten bleiben korrekt und aktuell.  
✅ Partitionstoleranz (P): Funktioniert trotz Netzwerkausfällen weiter.  
❌ **Keine hohe Verfügbarkeit (A):** Knoten-Ausfälle können zu Verzögerungen führen.  

## 🏗 Vergleich: **InfluxDB vs. Relationale Datenbanken**

| Merkmal | InfluxDB (NoSQL, Zeitserien) | Relationale Datenbanken (SQL) |
|---------|--------------------------|----------------------------|
| **Schema** | Schemalos, neue Felder ohne vorherige Definition möglich | Festes Schema, jede Spalte muss vorher definiert werden |
| **Datenmodell** | Messungen mit Tags (Metadaten) & Feldern (Werte) | Tabellen mit Zeilen & Spalten |
| **Zeitstempel** | Automatische Speicherung von Zeitstempeln | Manuelles Hinzufügen eines `timestamp`-Feldes nötig |
| **Beziehungen** | ❌ Keine echten `JOINs`, nur Gruppierungen über Tags | ✅ Relationen mit Primär- & Fremdschlüsseln, `JOINs` möglich |
| **Skalierbarkeit** | 🚀 Horizontale Skalierung für Big Data | 📦 Oft begrenzte Skalierbarkeit ohne Zusatzarchitektur |
| **Einsatzgebiete** | 🌍 IoT, Monitoring, Sensordaten, Logs | 🏦 Banken, E-Commerce, ERP-Systeme |

## 🌍 Unternehmen & Nutzung von InfluxDB

| Unternehmen | Warum nutzen sie InfluxDB? |
|------------|--------------------------|
| 🚗 **Tesla** | Echtzeit-Sensordaten aus Elektroautos überwachen |
| 🎬 **Netflix** | Server- und Streaming-Performance in Echtzeit analysieren |
| ✈️ **Airbus** | Daten aus Flugzeugsensoren speichern & auswerten |
| 🚖 **Uber** | GPS-Daten & Server-Monitoring für den Fahrdienst |
| 🏭 **Siemens** | IoT-Daten für Smart Factories und Industrie 4.0 |
| 💳 **PayPal** | Echtzeit-Überwachung von Zahlungssystemen |

## 📂 Konzepte der Datenhaltung

📌 **Schema in relationalen Datenbanken:**  
Relationale Datenbanken basieren auf Tabellen mit festen Spaltenstrukturen.  
Daten werden durch Primär- und Fremdschlüssel verknüpft.  

📌 **Schema in InfluxDB:**  
InfluxDB ist schemalos – neue Felder können dynamisch hinzugefügt werden.  
Daten werden als **Measurements** gespeichert, die durch **Tags & Felder** definiert sind.  

Beispiel einer Datenstruktur in InfluxDB:
```plaintext
Measurement: environment
Tags: room=101, sensor_id=12
Felder: temperature=23.4, humidity=60
Zeitstempel: 2025-01-20T12:30:00Z
```
✅ **Hohe Effizienz bei Schreiboperationen**  
✅ **Schnelle Datenanalyse**  


# 🔄 Mehrbenutzerbetrieb und Transaktionen

## 🛠 **Parallele Zugriffe**
- **Time-Structured Merge Tree**: Spezielles Speicherformat für optimierte Speicherung.
- **Write-Ahead Logging**: Neue Daten werden zuerst in eine Protokolldatei geschrieben.

## 🔄 **Transaktionen in InfluxDB**
- ❌ **Keine klassischen ACID-Transaktionen** wie in relationalen Datenbanken.
- ✅ **Schnelles Schreiben**, auch wenn die Knoten noch nicht vollständig synchron sind.

## 🔄 **Mehrbenutzerbetrieb & Deadlock-Prävention**
📌 **Beispiel:** Eine Fabrik mit hunderten Sensoren speichert Daten parallel.  
✅ **Vorteile:** Geschwindigkeit, Zuverlässigkeit, Skalierbarkeit.  
❌ **Deadlock?** Kein Problem! Daten werden linear geschrieben, es gibt keine komplexen Sperren oder Abhängigkeiten.


# 🔗 Quellen

📄 [InfluxDB Dokumentation](https://docs.influxdata.com) (Zugriff: 29.01.2025)  
📄 [Bitmotec Blog](https://www.bitmotec.com/blog/influxdb-einfuehrung-in-die-open-source-zeitreihendatenbank/) (Zugriff: 21.01.2025)  
📄 [InfluxData University](https://university.influxdata.com/catalog/) (Zugriff: 27.01.2025)  
