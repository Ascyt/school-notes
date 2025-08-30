# Kinematik

$\Rarr$ Beziehungen zwischen **Weg** ($\vec{s}$), **Geschwindigkeit** ($\vec{v}$) und **Beschleunigung** ($\vec{a}$)

**Bezugssystem**: Geschwindigkeiten und ähnliche Größen sind immer **relativ** to einem Bezugssystem, z.B. die ruhende Umgebung auf der Erde oder ein anderes bewegendes Objekt. 

- **Translation** (Schiebung): Fortschreitende Bewegung
- **Rotation** (Drehung): Drehbewegung

## Weg, Geschwindigkeit, Beschleunigung

Die Formeln:
$$
\vec{s}=\vec{v} \cdot t 
$$
$$
\vec{v}=\vec{a}\cdot t 
$$

sind eigentlich so alleinestehend nicht das gesamte Bild, da $\vec{s}(t)$, $\vec{v}(t)$ und manchmal auch $\vec{a}(t)$ (meist aber ein konstanter Wert) Funktionen sind. Deswegen, um den Wert an einem spezifischen Zeitpunkt zu erhalten, muss der Durchschnittswert verwendet werden (Integral zum Punkt gibt gesamte Summe, $\div t$ gibt Durchschnitt): 

$$
\vec{s}(t)=\frac{\int_0^t \vec{v}(t) \ dt}{t} \cdot t = \int_0^t \vec{v}(t) \ dt
$$
$$
\vec{v}(t)=\frac{\int_0^t \vec{a}(t) \ dt}{t} \cdot t = \int_0^t \vec{a}(t) \ dt
$$

d.H. dass der Weg abgeleitet die Geschwindigkeit abgeleitet die Beschleunigung ist:
$$  
\vec{a}\ (t) = \vec{v}\ '(t) = \vec{s}\ ''(t)
$$

Die Einheiten können wiefolgt hergeleitet werden:

$$
\vec{s} \quad \ldots[\text{m}]
$$
$$
\vec{s}(t)=\vec{v}\cdot t\quad \ldots \left[\text{m}=\frac{\text{m}}{\text{s}} \cdot \text{s}\right]
$$
$$
\vec{v}(t)=\vec{a}\cdot t\quad\ldots\left[\frac{\text{m}}{\text{s}}=\frac{m}{s^2}\cdot s\right]
$$

### Übung: Herleitung zeitfreie Gleichung

$$
\vec{a}(t) = \vec{a} \quad \text{(konstant)}
$$
$$
\vec{v}(t) = \int \vec{a}(t)\space dt = \int x\space dt = \vec{a}\cdot t
$$
$$
\vec{s}(t) = \int\vec{v}(t)\space dt = \int (\vec{a}\cdot t) \space dt =  \frac{\vec{a}\cdot t^2}{2}
$$

## Freier Fall
Eigentlich einfach herleitbar von Weg, Geschwindigkeit, Beschleunigung, also schreibe ich hier nicht alle Formeln auf. 

Wichtig ist aber die **Erdbeschleunigung**:
$$
g \approx 9.81\frac{\text{m}}{\text{s}^2}
$$

### Übung: S38 B1.1.11: Zehnmeterturm

**Angabe:**

Wir lassen eine Kugel von einem Zehnmeterturm fallen. Wie lange ist diese in der Luft, bevor sie auf den Boden landet?

**Lösung:**

Gegeben:

$$
g = 9.81\frac{\text{m}}{\text{s}^2}
$$

$$
h = 10\text{m}
$$

$$
\vec{s}(t) = 0
$$

Gesucht:
$$
t =\ ?
$$

Gleichungen aufsetzen:

$$
\vec{a}(t) = g
$$

$$
\vec{v}(t) = \int \vec{a}(t)\ dt = g \cdot t
$$

$$
\vec{s}(t) = h - \int \vec{v}(t)\ dt=h-\frac{g\cdot t^2}{2}
$$


Gleichsetzen:
$$
h-\frac{g\cdot t^2}{2} = 0\quad/+\frac{g\cdot t^2}{2}
$$
Umformen:
$$
h = \frac{g\cdot t^2}{2} \quad /\times 2 \quad /\div g
$$
$$
\frac{2h}{g}=t^2 \quad / \sqrt\ldots
$$
$$
\sqrt{\frac{2h}{g}}=t
$$

Einsetzen:
$$
t=\sqrt{\frac{2\cdot10\text{m}}{9.81\frac{\text{m}}{\text{s}^2} }}=\sqrt{\frac{2\cdot10}{9.81}s^2}=\sqrt{\frac{20}{9.81}}s
$$
Ausrechnen:
```
sqrt(20/9.81) =1.4278431229270645
```

Lösung:
$$
t \approx 1.4278
$$

## Wurf

Ein schiefer Wurf mit einen Winkel $\alpha$ kann mittels Vektorrechnung und/oder Abspaltung in x (horizontal) und y (vertikal) Werte berechnet werden. Da in Polarkoordinatenform der Winkel von rechts aus gegen den Uhrzeigensinn verläuft, beschreibt der Cosinus die x-Komponente und der Sinus die y-Komponente:

$$
\vec{v}(t)\cdot\cos(\alpha)=\vec{v}_x(t)
$$
$$
\vec{v}(t)\cdot\sin(\alpha)=\vec{v}_y(t)
$$

Hier wird nur $\vec{v}_y$ von $g$ beeinflusst.

## Rotation

Ähnlich zu Translation aber mit anderen Symbolen:

|T Name|T Symbol|T Einheit||R Name|R Symbol|R Einheit|
|-|-|-|-|-|-|-|
|Weg|$\vec{s}$|$\text{m}$||Drehwinkel|$\varphi$|$\text{rad}$|
|Geschwindigkeit|$\vec{v}$|$\frac{\text{m}}{\text{s}}$||Winkelgeschwindigkeit|$\omega$|$\frac{\text{rad}}{\text{s}}$|
|Beschleunigung|$\vec{a}$|$\frac{\text{m}}{\text{s}^2}$||Winkelbeschleunigung|$\alpha$|$\frac{\text{rad}}{\text{s}^2}$|

Zusätzlich kann aber der Drehwinkel aus Bogenlänge und Radius geformt werden:

$$
\varphi = \frac{b}{r}
$$