@ Stoff

# Einführung

Schwingungen sind **zeitlich periodische** Bewegungen eines Körpers um seiner Ruhelage. 
Ursache für die Schwingung sind Rückstellkraft und Trägheit des Körpers. 
Ein Schwingungsfähiger Körper wird auch **Oszillator** genannt.

![Fadenpendel](assets/3_Einfuehrung.png)

# Wichtige Größen

$$
T \ldots \text{Periodendauer} \quad [T] = 1s \\
f \ldots \text{Frequenz} \quad [f] = 1Hz 
$$

$$
T = \frac{1}{f}
$$

$$
\omega \ldots \text{Kreisfrequenz/Winkelgeschwindigkeit} \quad [\omega] = 1s^{-1}
$$
$$
\omega = 2 \pi \cdot f = \frac{2 \pi}{T}
$$

# Harmonische Schwingungen

Eine Schwingung heißt harmonisch, wenn die momentane Auslenkung (Elongation) $y$ aus der Gleichgewichtslage durch die Gleichung:
$$
y(t) = A \cdot \sin(\omega \cdot t + \varphi_0)
$$
beschrieben wird.
$$
A \ldots \text{Amplitude (max. Auslenkung)} \\
\varphi_0 \ldots \text{Phasenverschiebung/Nullphasenwinkel}
$$
Rechteck- und Sägezahnschwingungen sind **nicht** harmonisch.

Andere Gleichungen:
$$
y(t) = A \cdot \sin(\frac{2 \pi}{T} \cdot t)
$$

# Federpendel

Das Hook'sche Gesetz für die Federkraft einer Schraubenfeder entspricht dem linearen Kraftgesetz. 
Daher vollführt ein Federpendel **harmonsiche Schwingungen**. 

![Federpendel beschrieben](assets/3_Federpendel.png)
^ todo: use svg instead of png

$$
T = 2 \pi \sqrt{\frac{m}{D}}
$$
$$
D \ldots \text{Federkonstante} \quad [D]=1 \frac{N}{m} = 1 \frac{kg}{s^2}
$$
$$
\Rightarrow T \propto \sqrt{m}, \quad T \propto \frac{1}{\sqrt{D}}
$$
$$
D = \omega^2 \cdot m
$$

# Fadenpendel
*s. Buch S. 22*

Beim Fadenpendel hängt eine Masse $m$ an einem Faden mit vernachlässigbarer Masse.
Idealisiert man die Masse zu einem Massenpunkt und denkt den Faden masselos, erhält man ein mathematisches Pendel.

Periodendauer eines Fadenpendels (gilt nur für kleine Auswirkungen ($\varphi < 30 \degree$)):
$$
T = 2 \pi \sqrt{\frac{l}{g}}
$$

Das **linear Kraftgesetz** gilt auch nur unter der Bedingung kleiner Auswirkungen.

![Fadenpendel](assets/3_Fadenpendel.png)

**Kleinwinkelnäherung:** $\sin(\varphi) \approx \varphi$

$$
\vec{F_g} \ldots \text{Gewichtskraft} \\
\vec{F_S} \ldots \text{Spannkraft} \\
\vec{F_R} \ldots \text{Rückstellkraft}
$$

@ Übungen

&3 Schwingungen Übungen.md