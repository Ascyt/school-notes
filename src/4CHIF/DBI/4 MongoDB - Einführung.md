# Eigenschaften
- Dokumenten-orientiert
- Schemafrei
- Ausgelegt auf große Datenmengen (hu**mongo**us=gigantisch)
- Benutzt **JSON** (gespeichert als **BSON** (Binary JSON))
- Open-Source

# Datenorganisation
- **Document**: Grundeinheit zum Speichern, keine Relationen; wie eine Tabellenzeile
- **Collection**: Sammlung von Dokumenten, schemafrei; wie eine Tabelle
- **Database**: Sammlung von Collections, ein Server kann mehrere DBs verwalten

![SQL-MongoDB](assets/sql-mongodb.png)

# JSON & BSON

- JavaScript Object Notation
- Wird benutzt in REST 

Beispiel:
```json
{
"name": "HP Laptop",
"price": 1200,
"tags": ["Linux supported", "Ultrabook"]
}
```

![JSON](assets/json.png)

## BSON
- Binary JSON
- Intern von MongoDB verwendet
- Bietet auch `date`-Datentyp
- lightweight, transversierbar, effizient

# Operationen

![sql-mongodb](assets/sql-mongodb-queries.png)

## Create
![create](assets/mongo-create.png)

## Read
![read](assets/mongo-read.png)

## Update
![update](assets/mongo-update.png)

## Delete
![delete](assets/mongo-delete.png)

## Filters
![filters](assets/mongo-filters.png)

# Beispiele für Abfragen

![mongo-bsp1](assets/mongo-bsp1.png)

![mongo-bsp2](assets/mongo-bsp2.png)

# Vorteile und Nachteile

## Vorteile
- $\textcolor{lime}{+}$ **Skalierbarkeit**: Gute horizontale Skalierbarkeit
- $\textcolor{lime}{+}$ **Flexibilität**: Keine Schemadefinition notwendig

## Nachteile
- $\textcolor{red}{-}$ **Kein ACID**: Keine strikte ACID-Konformität wie traditionelle SQL-DBs
- $\textcolor{red}{-}$ **Datenanalyse**: SQL Bietet mehr Möglichkeiten für komplexe Abfragen
- $\textcolor{red}{-}$ **Keine Transaktionen**

# CAP-Theorem
- Früher: Verfügbarkeit kann leicht ausfallen
- Jetzt: Primär Verfügbarkeit und Partitionstoleranz (AP)