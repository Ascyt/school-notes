@ Stoff
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

## Multiplikation/Division
**Beispiel:**
$$
x = 6 \plusmn 0.2 \quad y = 3 \plusmn0.1
$$
**Herleitung der Formel:** (nicht umbedingt wichtig, nur für's Verständnis)
$$
z = x \cdot y = (x_0 \plusmn |\Delta x|) \cdot (y_0 \plusmn |\Delta y|) =
$$
$$
= x_0 \cdot y_0 \plusmn y_0 \cdot |\Delta x| \plusmn x_0 \cdot |\Delta y| \plusmn |\Delta x| \cdot |\Delta y|
$$
$|\Delta x| \cdot |\Delta y|$ ist vernachlässigbar klein, deswegen kann es weggelassen werden. 
$$
\Delta z = y_0 \cdot |\Delta x| \plusmn x_0 \cdot |\Delta y|
$$
$$
\frac{\Delta z}{z_0} = |\frac{\Delta x}{x_0}| + |\frac{\Delta y}{y_0}|
$$

**Das heißt:** Bei einer Addition/Subtraktion muss der **absolute Fehler** und bei einer Multiplikation/Division muss der **relative Fehler** addiert werden.

@ Übungen
&3 Fehlerrechnung Übungen.md