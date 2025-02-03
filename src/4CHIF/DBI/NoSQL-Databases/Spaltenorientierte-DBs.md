*(Beispiel: Apache Cassandra)*

**Ademi Zinedin, Bjelak Denis, Luka Ignjatovic, Danis Mezildzic**


# 1. Einführung in Spalten-orientierte Datenbanken

## Definition:
- Speichern Daten in Spalten statt Zeilen.
- Daten sind in "Column Families" organisiert, was flexible Strukturen ermöglicht.

## Funktionsweise:
- Spalten werden dynamisch hinzugefügt.
- Daten sind verteilt gespeichert und unterstützen hohe Skalierbarkeit.


# 2. Anwendungsfälle

- **Big Data & Analysen:** Optimiert für große Datenmengen.
- **IoT- und Zeitreihendaten:** Speicherung von Sensor- und Log-Daten.
- **Globale Anwendungen:** Hohe Verfügbarkeit durch Replikation.


# 3. Implementierungen von Spalten-orientierten Datenbanken

- **Apache Cassandra** → Speichert Daten in Zeilen mit dynamischen Spalten; jede Zeile hat einen eindeutigen Schlüssel.
- **HBase** → Ähnlich wie Cassandra, basiert auf Hadoop und nutzt den HDFS-Speicher.
- **ScyllaDB** → Eine Hochleistungsalternative zu Cassandra, die stark optimiert ist.


# 4. Fokus auf Apache Cassandra

## Besonderheiten:
- **Dezentrale Peer-to-Peer-Architektur:** Kein zentraler Server.
- **Hohe Verfügbarkeit:** Daten sind in mehreren Rechenzentren repliziert.
- **CQL (Cassandra Query Language):** Ähnlich zu SQL.


# 5. Datenhaltungskonzepte

- In spaltenorientierten NoSQL-Datenbanken wie **Apache Cassandra** oder **HBase** gibt es kein festes Schema wie in relationalen Datenbanken (z. B. MySQL).
- Spalten können dynamisch hinzugefügt oder entfernt werden, ohne dass die gesamte Datenbankstruktur angepasst werden muss.
- Dies ermöglicht größere Flexibilität und ist besonders vorteilhaft für **Big Data-Anwendungen**, bei denen sich Datenstrukturen häufig ändern.

**Beispiel:** Eine E-Commerce-Plattform speichert Produktinformationen. Manche Produkte haben Attribute wie „Farbe“ oder „Größe“, andere nicht. In einer spaltenorientierten DB müssen nicht alle Zeilen dieselben Spalten haben.


# 6. Beispiel-Abfragen

## Einfache Abfrage (Filtern nach Künstler)
```sql
SELECT * FROM kunstwerke WHERE kuenstler='Josef Floch';
```
**Ergebnis:** Gibt alle Kunstwerke von Josef Floch zurück.

## Komplexe Abfrage (Durchschnittsgröße je Künstler)
```sql
SELECT kuenstler, AVG(groesse) AS durchschnittsgroesse
FROM kunstwerke
GROUP BY kuenstler;
```
**Ergebnis:** Berechnet die durchschnittliche Größe der Kunstwerke pro Künstler.


# 7. Vergleich: Relationale vs. Spalten-orientierte Datenbanken

| **Kriterium**       | **Relationale DB (z. B. MySQL)** | **Spaltenorientierte DB (z. B. Apache Cassandra)** |
|---------------------|--------------------------------|-------------------------------------------------|
| **Schema**         | Fest                          | Flexibel (Spalten können dynamisch hinzugefügt werden) |
| **Performance**    | Gut für Transaktionen        | Gut für Big Data Analysen (schnelle Lese- und Schreiboperationen) |
| **Skalierung**     | Vertikal (stärkere Hardware) | Horizontal (mehr Server hinzufügen) |


# 8. CAP-Dreieck

**Cassandra ist AP (Availability + Partition Tolerance)**

- **Verfügbarkeit:** Ständige Erreichbarkeit.
- **Partitionstoleranz:** Funktioniert trotz Netzwerkausfällen.


# 9. Vor- und Nachteile

| **Vorteile**                             | **Nachteile**                                  |
|-------------------------------------------|-----------------------------------------------|
| Hohe Skalierbarkeit und Performance      | Keine Unterstützung für Joins                |
| Globale Verfügbarkeit der Daten          | Komplexes Schema-Design                      |
| Kein Single Point of Failure             | Kein vollständiges ACID-Transaktionsmodell   |


# 10. Sales-Pitch Vorbereitung

**Warum Cassandra?**
- Hohe Leistung für große Datenmengen.
- Weltweite Datenverfügbarkeit.
- Skalierbarkeit ohne Performanceverlust.

**Mögliche Gegenargumente:**
- Kein ACID (Transaktionssicherheit).
- Erfordert Anpassungen beim Datenmodell.

**Schlussfolgerung:** Apache Cassandra ist eine leistungsfähige spalten-orientierte NoSQL-Datenbank, ideal für skalierbare und hochverfügbare Anwendungen in verteilten Systemen.