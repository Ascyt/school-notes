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
[\vec{s}] \quad \ldots \text{m}
$$
$$
[\vec{s}(t)=\vec{v}\cdot t]\quad \ldots \text{m}=\frac{\text{m}}{\text{s}} \cdot \text{s}
$$
$$
[\vec{v}(t)=\vec{a}\cdot t]\quad \ldots \frac{\text{m}}{\text{s}}=\frac{m}{s^2}\cdot s
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

Diese ist leicht abhängig vom Ort auf der Erde (Aufgrund der Zentrifugalkraft an den Polen höher als am Äquator).

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

Folgendes trifft für Änderungen zu:

$$
\frac{\Delta \varphi}{\Delta t}=\omega
$$
$$
\frac{\Delta \omega}{\Delta t}=\alpha
$$

Die Frequenz und Periodendauer:
$$
\text{Frequenz } f = \frac{\text{Anzahl der periodischen Vorgänge}}{\text{Dazu benötigte Zeit}}
$$
$$
[f] = \text{Hz} \quad \text{(Hertz)}
$$
$$
\text{Periodendauer } T = \frac{1}{f}
$$
$$
[T] = s
$$

# Dynamik

## Newtonische Gesetze bzw. Axiome

1. **Gleichförmige Bewegung außer bei Kraftauswirkung**: Jeder Körper verharrt im Zustand der Ruhe oder der gleichförmigen geradlinigen Bewegung, solange keine Kraft auf ihn wirkt. Wird auch "**Trägheitssatz**" genannt.
2. **Beschleunigung proportional zur Kraft**: Die Beschleunigung eines Körpers ist proportional zu der auf ihn wirkenden Kraft. Es gilt: $\vec{F}=m\cdot\vec{a}$
3. **Gleich große entgegengesetze Kräfte bei Kollision**: Wirkt ein Körper mit einer Kraft $\vec{F}_{1\rarr2}$ auf einen zweiten, so wirkt dieser mit einer gleich großen entgegengesetzten Kraft auf den ersten Körper zurück. Es gilt: $\vec{F}_{1\rarr2}=-\vec{F}_{2\rarr1}$. Wird auch "**Wechselwirkungs-**" bzw. "**Reaktionsprinzip**"" genannt. 

Diese gelten nur in einem ausgewählten Bezugssystem und nicht gleichzeitig in zwei zueinander beschleunigten. Bezugssysteme, wo diese Gesetze gelten, heißen **Inertialsysteme**.

![Bezugssystem S. 53](image.png)

## Grundgesetz der Dynamik (2. Newtonisches Gesetz)

Kraft ist gleich Masse mal Beschleunigung:

$$
\vec{F} = m \cdot \vec{a}
$$

$$
[F] = [m]\cdot[a]= \frac{\text{kg} \cdot \text{m}}{\text{s}^2} = \text{N} \quad \text{(Newton)}
$$

Eine Kraft von $1\text{N}$ beschleunigt einen Körper der Masse $1\text{kg}$ mit $1\frac{\text{m}}{\text{s}^2}$.

**Superpositionsprinzip**: Wirken mehrere Kräfte auf einen einzigen Körper so haben sie die gleiche Wirkung wie eine einzelne Kraft, welche die **Vektorsumme** der Kräfte ist.

## Masse, Trägheit und Gewicht

Wenn wir zwei Massen ($m_1$ und $m_2$) haben, über sie gegenseitig eine Gravitation (Schwerkraft) aus:

$$
\vec{F}_G=G\cdot\frac{m_1\cdot m_2}{r^2}
$$

Hier ist $G$ die Gravitationskonstante:
$$
G \approx 6.67384 \cdot 10^{-11} \frac{m^3}{kg \cdot s^2}   
$$

diese Kraft ist auch gleich der Masse mal der Fallbeschleunigung:
$$
\vec{F}_G=m\cdot \vec{g}
$$

Die Masse kann man entweder mittels Schwere ("wie stark ist es von der Erde angezogen?") oder der Trägheit ("wie schwer ist es, es in Bewegung zu bringen?") gemessen werden, jedoch in der Praxis fast ausschließlich mit der Schwere.

## Dichte

Die Masse eines Körpers bleibt auch bei Änderung von:
- Aggregatszustand
- Form bzw. Volumen
- äußeren Bedingungen wie Druck oder Temperatur
konstant. 

Die Massendichte (auch als "spezifische Masse" bezeichnet) $\rho$ gleicht $\frac{\text{Masse}}{\text{Volumen}}$:
$$
\rho = \frac{m}{V} \qquad [\rho]=\left[\frac{\text{kg}}{\text{m}^3}\right]
$$

## Federkraft

**Federkraft** (Gesetz von Hooke): Die elastische Dehnung $\Delta x$ einer Schraubenfeder ist proportional der verformenden Kraft $F$.
$$
F = D \cdot \Delta x
$$

Die Proportionalitätskonstante $D$ heißt **Federkonstante** oder **Richtgröße** (je größer, desto "härter" ist die Feder). Die Einheit:
$$
[D] = \frac{[F]}{[\Delta x]} = \frac{\text{N}}{\text{m} }
$$

![Dehnungsdiagramm S. 62](image-1.png)

## Reibungskräfte

- **Äußere Reibung**: An den Außenflächen von Festkörpern
- **Innere Reibung**: Tritt zwischen Fluidteilchen (Flüssigkeiten, Gase, Dämpfe, etc.) auf
  
**Größenordnung**: $F_\text{Haftreibung} > F_\text{Gleitreibung} > F_\text{Rollreibung}$

![Größenordrung Reibungskräfte S. 63](image-2.png)

- **Haftreibung** (Ruhreibung): Gegensätzlich zur wirkenden Kraft, bis ein maximaler material- und oberflächenabhängiger Wert überschreitet wird. Dann setzt die Gleit- bzw. Rollreibung ein. 
- **Gleit**- und **Rollreibung**: Versucht, die Bewegung zwischen Körpern zu verzögern, jedoch bewegen sich beide Körper trotzdem relativ zu einander. 

**Reibungskraft** (Gesetz von Coulomb) ist der Verschieberichtung entgegengerichtet, und proportional der Normalkraft $\vec{F}_N$ auf die Berührungsfläche:

$$
\vec{F}_\text{Reibung}=\mu\cdot F_N
$$

wobei $\mu$ die dimensionslose **Reibungszahl** bzw. **Reibbeiwert** ist:
$$
\mu=\frac{F_\text{Reibung}}{F_N}
$$

