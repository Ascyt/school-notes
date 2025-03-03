# Überblick
z.B.:
- Sehr gut → 0
- Gut → 1
- Befriedigend → 2
- Genügend → 3
- Nicht Genügend → 4

ABER: Wenn es z.B. eine Liste von Ländern gibt, gibt es hier keine Sortierung also soll es nicht in Zahlen konvertiert werden.

- **Metrisch**: z.B. Körpergröße
- **Ordinal**: z.B. Schulnoten oder Bewertungen
- **Nicht ordinal**: z.B.Farben, Länder. Hier müssen die Optionen **in Spalten aufgeteilt werden** (One-Hot-Encoding: weil hier nur einer auf `1` sein)

Bei binären Problemen (z.B. männlich/weiblich) ist es egal, ob man es in Spalten aufteilt oder nicht.