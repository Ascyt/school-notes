# Einführung

**NoSQL** = **N**ot **o**nly **SQL** 

Bedeutung: Datenbanken, die einen **nicht relationalen Ansatz** verfolgen. 

- **Relationale DBs** haben Leistungsprobleme bei datenintensiven Applikationen $\rightarrow$ nur effizient, wenn sie für häufige, aber kleine Transaktionen oder für große Batch-Transaktionen mit seltenen Schreibzugriffen optimiert sind $\rightarrow$ können schlecht mit gleichzeitig hohen Datenanforderungen und häufigen Datenänderungen umgehen.
- **NoSQL-Architekturen** bieten meist nur schwache Garantien hinsichlich Konsistenz und eingeschränkte Transaktionen, sie sind auf steigende Datenmenden und häufige Datenänderungen ausgelegt. (Ausnahmen bestätigen die Regel.)

![Grafik 1](assets/nosql-1.png)
![Grafik 2](assets/nosql-2.png)

# Arten
[ Mehr dazu in [3 NoSQL Datenbanken](/4chif/dbi/3%20nosql%20datenbanken) ] 

- **Document-based**
  - Dokumente als JSON, BSON oder XML
  - Schnell & flexibel
- **Key-Value-Stores**
  - Einfachste Form
  - Sehr schnell 
- **Column-Oriented**
  - Daten in Spalten statt in Zeilen
  - Skalierbar, effizient
- **Graph-Based**
  - Konzentriet sich auf Beziehungen zwischen Elementen

![Grafik 3](assets/nosql-3.png)

# Vertikale vs. horizontale Skalierung

Ansätze zur Verbesserung der Leistung und Kapazität eines Datenbanksystems, insbesondere wenn die Datenmenge oder die Anzahl der Anfragen zunimmt. 

- **Vertikale Skalierung**: Leistung eines Servers erhöhen
- **Horizontale Skalierung**: Mehrere Servers verwenden

![Grafik 4](assets/nosql-4.png)

## Vertikale Skalierung (Scale Up)

Leistung eines einzelnen Servers wird erhöht, indem man dessen Hardware aufrüstet:
- Erhöhung der CPU-Leistung (schnellere Prozessoren, mehr Kerne)
- Hinzufügen von mehr Arbeitsspeicher (RAM)
- Verwendung schnellerer Festplatten (z.B. SSDs statt HDDs)
- Netzwerk-Upgrades für höhere Bandbreite

$\textcolor{lime}{+}$ **Einfach umzusetzen**: Die bestehende Architektur bleibt erhalten, keine Änderungen an der Anwendung oder Datenbankstruktur notwending \
$\textcolor{lime}{+}$ **Von den meisten relationalen DBs unterstützt** \
$\textcolor{red}{-}$ **Begrenzte Skalierung**: Hardware-Upgrades haben physische und wirtschaftliche Grenzen. \
$\textcolor{red}{-}$ **Single Point of Failure**: Wenn der Server ausfällt, ist das gesamte System betroffen. 

## Horizontale Skalierung (Scale Out)

Zusätzliche Server (Knoten) werden in das System eingebunden, um die Last zu verteilen:
- Verteilung der Daten auf mehrere Server (Sharding)
- Replikation der Daten auf mehrere Knoten (Datenkopien zur Erhöhung der Verfügbarkeit)
- Verwendung von Load-Balancern, um Anfragen auf mehrere Server zu verteilen

$\textcolor{lime}{+}$ **Unbegrenzte Skalierbarkeit**: Theoretisch können so viele Server wie nötig hinzugefügt werden. Ideal für Anwendungen mit wachsendem Datenvvolumen oder hohen Benutzerzahlen. \
$\textcolor{lime}{+}$ **Höhere Verfügbarkeit**: Wenn ein Knoten ausfällt, können andere Knoten die Arbeit übernehmen (Fehlertoleranz). \
$\textcolor{lime}{+}$ **Kosteneffizienz**: Statt teurer High-End-Hardware können günstigere Standard-Server verwendet werden. \
$\textcolor{red}{-}$ **Komplexität**: Verteilte Systeme sind schwerer zu verwalten, erfordern Mechanismen wie Sharding, Replikation und Konsistenzmanagement. \
$\textcolor{red}{-}$ **Eventual Consistency**: Um horizontale Skalierung zu ermöglichen, wird manchmal die Konsistenz geopfert. \
$\textcolor{red}{-}$ **Nicht geeignet für relationale DBs**: Erfordert Einsatz aufwändiger Anpassungen.