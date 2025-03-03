# Überblick

- `import pandas as pd`
- Pandas kann mit `read_csv` eine CSV-Datei lesen
- Indexe müssen **eindeutig** sein und dürfen **nicht null** sein
- `inplace=True` sagt, dass die Variable gleich verändert werden soll und nicht das Ergebnis returnt wird.
- `random_state`: Beliebige Zahl, um etwas zufällig zu generieren, wo aber immer dieselben Ergebnisse bei der selben Zahl geliefert werden
- `chock_data[chock_data['Rating'] == 'sehr lecker']` um nach Rows zu filtern (SQL's `WHERE`)