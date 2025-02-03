Sebastian Radic, Timon Schmalzer, Semih Yüzuak, Leopold Mistelberger, Luis Schörgendorfer

# Was ist eine In-Memory-Datenbank und wie funktioniert sie?

- Speichert die Daten direkt im RAM anstatt auf einer SSD
- Dadurch sind sie extrem schnell, weil Lese- und Schreibzugriffe ohne die Latenzzeiten von Festplatten erfolgen
- Eine bekannte In-Memory-Datenbank ist **Redis**
- Speichert Daten als Schlüssel-Wert-Paare
- Unterstützt verschiedene Datenstrukturen wie Strings, Hashes, Listen, Sets und Sorted Sets
- Großer Vorteil für Anwendungen mit hohen Anforderungen von Geschwindigkeit und Skalierbarkeit

# Anwendungsfälle

- **Caching:** Zwischenspeicherung von häufig verwendeten Daten, um die Performance zu steigern
- **Session-Management:** Speicherung von Sitzungsdaten in Webanwendungen, sodass Benutzerinteraktionen schnell abrufbar sind
- **Echtzeit-Analysen:** Verarbeitung von Streaming-Daten in Echtzeit (Finanztransaktionen)
- **Leaderboards & Ranglisten:** Verwaltung von Highscores in Online-Spielen
- **Message Queues:** Speichern und Abrufen von Nachrichten in Messaging Systemen

# Beispiele für In-Memory-Datenbanken

- **Redis**
- Memcached
- VoltDB
- SAP HANA

# Warum wir uns für In-Memory-Datenbank: Redis entschieden haben?

- **Einfache Einrichtung:** Installation und Konfiguration ist unkompliziert, und Redis kann sofort verwendet werden
- **Leicht verständliche Befehle:** bietet einfache Befehle wie SET, GET, HSET, HGET ...
- **Direkte Nutzung im Terminal:** kann direkt über die Kommandozeile (redis-cli) bedient werden
- **Sehr hohe Geschwindigkeit:** Abfragen und Schreibvorgänge extrem schnell
- **Minimaler Overhead:** benötigt wenig Ressourcen und läuft auch auf leistungsschwachen Systemen

# Datenhaltung & Schema-Definition

- **Redis** speichert Daten schemalos als Schlüssel-Wert-Paare, sodass man flexibel neue Felder hinzufügen kann
- Beziehungen können über Schlüsselkonventionen oder Sets abgebildet werden
- Es gibt kein festes Schema wie in relationalen Datenbanken, was die Anpassung an sich ändernde Anforderungen erleichtert

# Mehrbenutzerbetrieb & Transaktionen

- **Redis** unterstützt Transaktionen über MULTI, EXEC, WATCH, um mehrere Operationen ununterbrochen durchzuführen
- Deadlocks sind unwahrscheinlich, da Redis ein Single-Threaded Event-Loop Modell verwendet
- Alle Anfragen werden nacheinander in einer einzigen Verarbeitungsschleife bearbeitet.

# Redis im CAP-Dreieck

- Redis fällt in die Kategorie CP (Consistency & Partition Tolerance)
- Garantiert Konsistenz, da Schreibvorgänge repliziert werden können
- Bei Netzwerkausfällen kann die Verfügbarkeit eingeschränkt sein
- Macht Redis wertvoll für Anwendungen, die strikte Datenintegrität erfordern

# Vergleich mit relationalen Datenbanken

| Feature              | Redis (In-Memory DB) | Relationale DB (z. B. MySQL) |
|----------------------|----------------------|------------------------------|
| Datenmodell          | Key-Value Store      | Tabellen mit festen Schemata |
| Geschwindigkeit      | Sehr schnell (RAM)   | Langsamer (Festplatte)       |
| Schema               | Kein fixes Schema    | Strukturiertes Schema        |
| Persistenz           | Optional (Snapshots/AOF) | Immer vorhanden          |
| Abfragen             | Einfache Befehle (GET, HSET) | SQL-Abfragen            |
| Mehrbenutzerbetrieb  | Single-Threaded, Transaktionen | ACID-Transaktionen     |

# Fazit

- Redis ist eine leistungsstarke In-Memory-Datenbank, die sich besonders für schnelle Datenzugriffe eignet.
- Sie bietet eine einfache Bedienung, hohe Performance und flexible Datenstrukturen.
- Relationale Funktionen wie Joins und komplexe Abfragen fehlen, weshalb Redis häufig als Ergänzung zu relationalen Datenbanken verwendet wird.
- Redis kann als Cache, Message Broker oder Datenbank eingesetzt werden und ist damit ein wichtiges Werkzeug in der modernen Softwareentwicklung.