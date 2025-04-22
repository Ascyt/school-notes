# Embedded Documents
- Dokumente innerhalb Dokumente
- Ermöglicht speichern komplexer Datenstrukturen, ohne seperater Collections 

![mongo-embedded-document](assets/mongo-embedded-document.png)

## Vorteile
- $\textcolor{lime}{+}$ **Datenintegrität**: Stellen sicher, dass Daten, die zusammengehören, immer zusammen gespeichert werden
- $\textcolor{lime}{+}$ **Leistung**: Eine Abfrage kann sich auf eine einzelne Collection beschränken, anstatt über mehrere Collections suchen zu müssen
- $\textcolor{lime}{+}$ **Lesbarkeit**: Ermöglichen, Datenmodelle intuitiver und natürlicher auszudrücken

## Nachteile
- $\textcolor{red}{-}$ **Erhöhte Größe**: Erhöhte Größe des Hauptdokuments, kann **Leistung** beim Schreiben beeinträchtigen
- $\textcolor{red}{-}$ **Komplexität**: Erhöhte Komplexität der Datenstrukture, vor allem wenn es viele verschachtelte Dokumente gibt
- $\textcolor{red}{-}$ **Erschwertes Aktualisieren**: Aktualisieren von Daten kann vor allem dann erschwert sein, wenn sich das eingebettete Dokument auf mehrere andere bezieht. 

## Embedded oder Linked?
### Fragestellungen
- Wie oft wird auf die eingebetteten Daten zugegriffen?
- Werden die eingebetteten Daten für Abfragen verwendet?
- Ändern sich die eingebetteten Daten oft?

### Grundlegendes
- Verwende standartmäßig **embedded**, außer es gibt einen überzeugenden Grund, das nicht zu tun, (z.B. wenn es notwendig ist, auf ein Objekt alleine zugreifen zu können)
- Joins und Lookups sollen vermieden werden, außer wenn sie zu einem besseren Schema-Design führen
- Arrays sollten nicht unbegrenzt wachsen können