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

# Aggregationen
- Daten aus n-beliebigen Collections **extrahieren**, **transformieren**, und **analysieren**
- Effiktiv für komplexe Abfragen und Datenmanipulationen

## $match
Filtert Dokumente, die bestimmte Bedingungen erfüllen.

**Beispiel**: Nur Bestellungen mit dem Status `completed` und einem Datum nach dem 1. Jänner 2022 zurückgeben.

![mongo-aggr-match](assets/mongo-aggr-match.png)

**Operatoren**: 
- `$eq`: Equal to (`==`)
- `$ne`: Not equal to (`!=`)
- `$gt`: Greater than (`>`)
- `$lt`: Less than (`<`)
- `$gte`: Greater than or equal to (`>=`)
- `$lte`: Less than or equal to (`<=`)
- `$in`: In array
- `$nin`: Not in array

## $group
Gruppiert Dokumente basierend auf einem oder mehreren Feldern und
führt Aggregationen wie Summe, Durchschnitt, Min/Max usw. durch.

**Beispiel**: Bestellungen nach Kunden gruppieren und die Summe der Beträge sowie die Anzahl der Bestellungen für jeden Kunden zurückgeben.

![mongo-aggr-group](assets/mongo-aggr-group.png)

**Akkumuluatoren**:
- **`$sum`**: Summe
- **`$avg`**: Durchschnitt
- **`$min`**: Niedrigster Wert
- **`$max`**: Höhster Wert
- **`$push`**: Element zu einem Array hinzufügen
- **`$addToSet`**: Wie `$push` aber vermeidet Duplikate
- **`$first`**: Erstes Element
- **`$last`**: Letztes Element

## $sort
Sortiert Dokumente basierend auf einem oder mehreren Feldern.

**Beispiel**: Bestellungen nach Datum sortieren, beginnend mit dem neuesten Datum.

![mongo-attr-sort](assets/mongo-attr-sort.png)

## $project
Projektion von Feldern, um nur bestimmte Felder in den Ergebnissen
anzuzeigen.

**Beispiel**: Nur die Kunden-ID, den Betrag und das Jahr der Bestellung zurückgeben.

![mongo-attr-project](assets/mongo-attr-project.png)

## $lookup
Verknüpft Dokumente aus einer anderen Collection mit den Dokumenten in der aktuellen Collection (ähnlich zu JOIN).

**Beispiel**: Die Bestellungen und Kunden werden basierend auf der Kunden-ID verknüpft und die Kundeninformationen in einem eingebetteten Feld `customer_info` zurückgibt.

![mongo-attr-lookup](assets/mongo-attr-lookup.png)

# Schema
|SQL (RDBMS)|MongoDB|
|-|-|
|Datenmodell $\Rarr$ Applikation|Applikation $\Rarr$ Datenmodell|
|Während Entwicklung Schemaänderung notwendig $\rarr$ Datenmodel "denormalisieren" $\rarr$ Performanceverlust|Applikation bestimmt Datenmodell|
|Fokus auf **Datenspeicher**|Fokus auf **Datennutzung**|