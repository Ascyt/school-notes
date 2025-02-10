# Fehler

Es gibt zwei Arten von Fehlern:

## Absoluter Fehler
*Um wieviel liege ich daneben?*
$$
x-x_0 = \Delta x \quad \ldots \quad \text{Istwert}-\text{Sollwert}
$$

## Relative Fehler
*Um wieviel liege ich Prozentuell daneben?*
$$
\frac{\Delta x}{x_0} \quad \ldots \quad \frac{\text{Istwert}-\text{Sollwert}}{\text{Sollwert}}
$$

# Fehlerfortpflanzung

## Addition/Subtraktion

**Beispiel:**
$$
x = 6 \plusmn 0.2 \quad y = 3 \plusmn0.1
$$

**Addition:**
- Maximaler Wert: $9.3$
- Minimaler Wert: $8.7$
- $\rightarrow 9 \plusmn 0.3$ 

**Subtraktion:**
- Maximaler Wert: $3.3$
- Minimaler Wert: $2.7$
- $\rightarrow 3 \plusmn 0.3$

**Also:**

$$
z = x \plusmn y
$$
$$
|\Delta z| = |\Delta x| + |\Delta y|
$$