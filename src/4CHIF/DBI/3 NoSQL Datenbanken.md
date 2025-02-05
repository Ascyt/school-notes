# In-Memory-DBs

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