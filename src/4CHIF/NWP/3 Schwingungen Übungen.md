!noindex


# Harmonische Schwingungen: Zettel 1, Ü2

## Angabe

Eine Sinusförmige Schwingung besitzt eine Schwingungsdauer von $0.6s$ und eine Amplitude von $40mm$. Wie groß ist die Auslenkung $0.02s$ nach Schwingungsbeginn?

## Lösung

**Gegeben ist:**
$$
T = 0.6s \quad A = 40mm \quad t = 0.02s
$$
**Gesucht ist:** 
$$
y = \text{?}
$$

**Annahme:** $\varphi_0=0$

$$
y(t) = A*\sin(\frac{2 \pi}{T} \cdot t) \\
y(0.02s) = 40mm \cdot \sin(\frac{2 \pi}{0.6} \cdot 0.02) \\
y(0.02s) \approx 8.32mm
$$

# Harmonische Schwingungen: Zettel 1, Ü3

## Angabe
Eine Sinusförmige Schwingung besitzt eine Amplitude von $10cm$ und eine Frequenz von $2Hz$. Nach welcher Zeit (vom Nulldurchgang weg) beträgt die Auslenkung erstmals $8cm$? 

## Lösung
**Gegeben ist:**
$$
A = 10cm \quad f=2Hz \quad \varphi_0=0 \quad y(t)=8cm
$$
**Gesucht ist:**
$$
t = \text{?}
$$

Gesucht ist die Zeit, bei der $8cm$ erreicht werden. 

$$
\omega = 2 \pi \cdot f \\
y(t) = A \cdot \sin(\omega \cdot t + \varphi_0) \\
y(t) = 8
$$

$$
y(t) = A \cdot \sin(2 \pi \cdot f \cdot t + \varphi_0)  \quad / \div A\\
\frac{y(t)}{A} = \sin(2 \pi \cdot f \cdot t + \varphi_0)
$$
Da $\varphi_0=0$, kann es weggelassen werden.
$$
\frac{y(t)}{A} = \sin(2 \pi \cdot f \cdot t) \quad / \arcsin(\ldots) \\
\arcsin(\frac{y(t)}{A}) = 2 \pi \cdot f \cdot t \quad / \div (2 \pi \cdot f) \\
\frac{\arcsin(\cfrac{y(t)}{A})}{2 \pi \cdot f} = t
$$
Einsetzen der Variablen:
$$
t = \frac{\arcsin(\cfrac{8 \sout{cm}}{10 \sout{cm}})}{2 \pi \cdot 2Hz}
$$
Ausrechnen von `asin(8/10)/(2*pi*2)` ergibt:
$$
t \approx 0.074s
$$

# Federpendel - Experiment
**Gegeben ist:**
$$
T = 0.437s \quad \Delta y = 5.8cm \quad F_g = 0.51N
$$

**Lösen:** 
$$
F_g = D \cdot \Delta y \\
D \approx 0.088 \frac{N}{cm}
$$
$$
T = 2 \pi \cdot \sqrt{\frac{m}{D}} \\
m \approx 43g
$$
$$
F_g = m \cdot g \\
F_g = 0.043kg \cdot 9.81 \frac{m}{s^2} \approx 0.421N
$$

# Federpendel: Ü2.1.04
## Angabe
Mit welcher Masse wurde eine **Feder** mit einer Federkonstanten von $1 \frac{N}{dm}$
belastet, wenn die Periodendauer eine Sekunde beträgt?
Skizzieren Sie drei volle Schwingungen des Pendels, 
wenn Sie eine Amplitude von $10cm$ verwenden und annehmen, 
dass zu Beginn das Federpendel nach unten aus der Gleichgewichtslage ausgelenkt wurde.
Geben Sie die Schwingungsgleichung der ungedämpften Schwingung an. 

## Lösung
**Gegeben ist:**
$$
D = 1 \frac{N}{dm} \quad T=1s \quad \Delta y=10cm
$$
**Gesucht ist:**
$$
y(t) = \text{?}
$$

**Lösen für $m$:**
$$
T = 2 \pi \cdot \sqrt{\frac{m}{D}}  \quad / \div 2 \pi\\
\frac{T}{2 \pi} = \sqrt{\frac{m}{D}} \quad / \ldots^2\\
\frac{T^2}{4 \pi^2} = \frac{m}{D} \quad / \cdot D \\
m = \frac{D \cdot T^2}{4 \pi ^2} \\
m = \frac{10kg \cdot 1s^2}{4 \pi ^2} \\
m \approx 0.253kg
$$
**Lösen für $\omega$:**
$$
\omega = 2 \pi \cdot f = \frac{2 \pi}{T} \\
\omega = 2 \pi \cdot s^{-1}
$$
**Aufstellung der gleichung $y(t)$:**
$$
y(t) = A \cdot \sin( \omega \cdot t + \varphi_0) \\
y(t) = 10cm \cdot \sin(2\pi s^{-1} \cdot t - \frac{\pi}{2})
$$
**Zeichnen der Gleichung mit Desmos mit Eingabe $10\cdot\sin(2\pi\cdot x-\frac{\pi}{2})$:**

![Gezeichneter Graph](assets/3_Uebung2-1-04.png)

# Weitere Übungen zu Schwingungen (Zettel)

**Besonders wichtig:** 2, 5, 7, 8, 9, 10, 12, 13, 14

![Weitere Übungen](assets/3_Weitere-Uebungen.jpg)

# Zettel Ü2

## Angabe
Ein harmonisch schwingender Massepunkt ist $0.2s$ nach Passieren der Ruhelage $0.45m$ von dieser entfernt. Wie groß sind die Frequenz $f$ und welche Periodendauer $T$, wenn die Amplitude $y_{max}=0.6m$ beträgt?

## Lösung

**Gegeben ist:**
$$
t = 0.2s \quad y(t) = 0.45m \quad A = 0.6m
$$

**Gesucht ist:**
$$
f = \text{?} \quad T = \text{?}
$$

**Aufstellen der Gleichung $y(t)$:**
$$
y(t) = A \cdot \sin( \omega \cdot t + \varphi_0)
$$

**Da $\varphi_0=0$, kann es weggelassen werden:**
$$
y(t) = A \cdot \sin( \omega \cdot t)
$$
**Umformen der Gleichung auf $\omega$:**
$$
y(t) = A \cdot \sin( \omega \cdot t) \quad / \div A \\
\frac{y(t)}{A} = \sin( \omega \cdot t) \quad / \arcsin(\ldots) \\
\arcsin(\frac{y(t)}{A}) = \omega \cdot t \quad / \div t \\
\omega = \frac{\arcsin(\cfrac{y(t)}{A})}{t}
$$

**Aufstellen der Gleichung $\omega$ auf $f$:**
$$
\omega = 2 \pi \cdot f \quad / \div 2 \pi \\
f = \frac{\omega}{2 \pi}
$$
**Einsetzen von $\omega$ in die obere Gleichung:**
$$
f = \frac{(\cfrac{\arcsin(\cfrac{y(t)}{A})}{t})}{2 \pi}
$$
**Einsetzen der Werte in die Gleichung**:
$$
f = \frac{(\cfrac{\arcsin(\cfrac{0.45 \sout{m}}{0.6 \sout{m}})}{0.2s})}{2 \pi}
$$
**Ausrechnen von `(asin(0.45/0.6)/0.2)/(2*pi)` gibt:**
$$
f \approx 0.675Hz
$$
**Ausrechnen von $T$:**
$$
T = \frac{1}{f}
$$
$$
T \approx 1.482s 
$$

# Zettel Ü7

## Angabe

Eine Feder hat eine Federkonstante $k = 30 \frac{N}{m}$. Wie groß ist die Masse $m$ eines daran hängendes Gewichtstückes, das Schwingungen der Amplitude $y_{max}=0.05m$ ausführt und mit der Geschwindigkeit $v = 0.8 \frac{m}{s}$ durch die Ruhelage geht?

## Lösung

**Gegeben ist:**
$$
D = 30 \frac{N}{m} \quad A = 0.05m \quad v = 0.8 \frac{m}{s} 
$$

**Gesucht ist:**
$$
m = \text{?}
$$

**Relevante Formeln:**
$$
D = \omega^2 m \\
\omega = \frac{2 \pi}{T} \\
y(t) = A \cdot \sin(\omega \cdot t)
$$
**Die Ableitung von $y(t)$ gibt die Änderung der Distanz, also die Geschwindigkeit.**

**Um $A \cdot \sin(\omega \cdot t)$ nach $t$ ableiten zu können, muss die Kettenregel angewendet werden ($(f(g(x)))' = f'(g(x)) \cdot g'(x)$):**
$$
y'(t)=A \cdot \cos(\omega \cdot t) \cdot \omega
$$
**Wenn wir hier für $t$ den Wert $0$ einsetzen (wie in der Angabe steht ""durch die Ruhelage"") und statt $y'(0)$ wir $v$ schreiben bekommen wir:**
$$
v = A \cdot 1 \cdot \omega
$$
**Um $\omega$ zu erhalten:**
$$
v = A \cdot \omega \quad / \div A \\
\omega = \frac{v}{A}
$$

**Umformen auf $m$:**
$$
D = \omega^2 m \quad / \div \omega^2 \\
m = \frac{D}{\omega^2}
$$

**Einsetzen von $\omega$ von der oberen Gleichung:**
$$
m = \frac{D}{(\cfrac{v}{A})^2}
$$
**Einsetzen der Variablen und umformen der Gleichung:**
$$
m = \frac{30 \frac{kg}{s^2}}{(\frac{0.8 \frac{m}{s}}{0.05m})^2}
$$
$$
m = \frac{30 \frac{kg}{s^2}}{\frac{0.8^2 \frac{m^2}{s^2}}{0.05^2m^2}} 
$$
$$
m = \frac{30 \cdot kg \cdot \sout{s^{-2}}}{\frac{0.8^2 \cdot \sout{m^2} \cdot \sout{s^{-2}}}{0.05^2 \sout{m^2}}} 
$$
$$
m = \frac{30 \cdot kg}{\frac{0.8^2}{0.05^2}} 
$$
$$
m = \frac{30}{\frac{0.8^2}{0.05^2}} kg
$$
**Ausrechnen von `30/((0.8**2)/(0.05**2))` gibt:**
$$
m \approx 0.117kg
$$

# Testlösungen: Ü1
## Angabe
Berechnen Sie die Fadenlänge eines Pendels, wenn dieses mit einer Geschwindigkeit von $1.808 \frac{m}{s}$ durch die Ruhelage schwingt und eine Amplitude von $1m$ hat.

## Lösung
**Da die Ableitung der Auslenkung $y(t)$ die Änderung der Auslenkung beschreibt, also die Geschwindigkeit, kann ""mit einer Geschwindigkeit von $1.808 \frac{m}{s}$ durch die Ruhelage"" umgeschrieben werden als $y'(0) = 1.808 \frac{m}{s}$.**

**Gegeben ist:**
$$
y'(0) = 1.808 \frac{m}{s} \quad A = 1m
$$
**Gesucht ist:**
$$
l = \text{?}
$$

**Relevante Formeln:**
$$
T = 2 \pi \sqrt{\frac{l}{g}} \\
\omega = \frac{2 \pi}{T} \\ 
y(t) = A \cdot \sin(\omega \cdot t + \varphi_0)
$$
**Da $\varphi_0 = 0$, kann es weggelassen werden:**
$$
y(t) = A \cdot \sin(\omega \cdot t)
$$

**Um $y(t)$ in $t$ auf $y'(t)$ umformen zu können, muss die Kettenregel angewendet werden:**
$$
y'(t) = A \cdot \cos(\omega \cdot t) \cdot \omega
$$
**Wenn wir für $t$ $0$ einsetzen fällt der Cosinus weg, da $\cos(0)=1$:**
$$
y'(0) = A \cdot \omega
$$
**Umformen auf $\omega$**:
$$
y'(0) = A \cdot \omega \quad / \div A \\
\omega = \frac{y'(0)}{A}
$$
**Umformen auf $T$:**
$$
\omega = \frac{2 \pi}{T} \quad / \times T \\
\omega \cdot T = 2 \pi \quad / \div \omega \\
T = \frac{2 \pi}{\omega}
$$
**Einsetzen von $\omega$ von der oberen Formel:**
$$
T = \frac{2 \pi}{\frac{y'(0)}{A}} 
$$
**Umformen auf $l$:**
$$
T = 2 \pi \sqrt{\frac{l}{g}} \quad / \div 2 \pi \\
\frac{T}{2 \pi} = \sqrt{\frac{l}{g}} \quad / \ldots^2 \\
\frac{T^2}{4 \pi ^2} = \frac{l}{g} \quad / \times g \\
l = \frac{T^2}{4 \pi ^2} \cdot g
$$
**Einsetzen von $T$ von der oberen Formel:**
$$
l = \frac{(\cfrac{2 \pi}{\frac{y'(0)}{A}} )^2}{4 \pi ^2} \cdot g
$$
$$
l = \frac{(\cfrac{\sout{4 \pi^2}}{\frac{(y'(0))^2}{A^2}})}{\sout{4 \pi ^2}} \cdot g
$$
$$
l = \cfrac{1}{\frac{(y'(0))^2}{A^2}} \cdot g
$$
$$
l = \frac{(y'(0))^{-2}}{A^{-2}} \cdot g
$$
$$
l = (y'(0))^{-2} \cdot A^2 \cdot g
$$
$$
l = \frac{A^2}{(y'(0))^2} \cdot g
$$
$$
l = (\frac{A}{y'(0)})^2 \cdot g
$$

**Einsetzen der Werte, wobei $g$ die Erdanziehungskraft $9.81 \frac{m}{s^2}$ ist:**
$$
l = (\frac{1m}{1.808 \frac{m}{s}})^2 \cdot 9.81 \frac{m}{s}
$$
$$
l = \frac{1 \sout{m^2}}{1.808^2 \cdot \sout{m^2} \cdot s^{-2}} \cdot 9.81 \frac{m}{s^2}
$$
$$
l = \frac{9.81m}{1.808^2 \cdot \sout{s^{-2}} \cdot \sout{s^2}}
$$
$$
l = \frac{9.81}{1.808^2}m
$$
**Ausrechnen von `9.81/(1.808**2)` ergibt:**
$$
l \approx 3m
$$

# Testlösungen: Ü2
## Angabe
Berechnen Sie nach welcher Zeit die Auslenkung einer harmonischen Schwingung $1.618cm$ beträgt bei folgenden Werten: $A = 2cm$, $f = 20Hz$, $\varphi_0 = -\frac{\pi}{2}$ \
Erstellen Sie ein Diagramm für eine Periode und zeichnen Sie den Wert zum gesuchten Zeitpunkt ein.

## Lösung
**Gegeben ist:**
$$
y(t) = 1.618cm \quad A = 2cm \quad f = 20Hz \quad \varphi_0 = -\frac{\pi}{2}
$$
**Gesucht ist:**
$$
t = \text{?}
$$
**Relevante Formeln:**
$$
y(t) = A \cdot \sin(\omega \cdot t + \varphi_0) \\
\omega = f \cdot 2 \pi
$$
**Kombinieren der Formeln:**
$$
y(t) = A \cdot \sin(f \cdot 2 \pi \cdot t + \varphi_0)
$$
**Da $\varphi_0 = - \frac{\pi}{2}$ und der Sinus um $-\frac{\pi}{2}$ verschoben den negativen Cosinus gleicht, kann es umgeschreiben werden zu:**
$$
y(t) = A \cdot (-\cos(f \cdot 2 \pi \cdot t))
$$
**Umformen der Gleichung auf $t$:**
$$
y(t) = A \cdot (-\cos(f \cdot 2 \pi \cdot t)) \quad / \div A \\
\frac{y(t)}{A} = -\cos(f \cdot 2 \pi \cdot t) \quad / \times -1 \\
-\frac{y(t)}{A} = \cos(f \cdot 2 \pi \cdot t) \quad / \arccos(\ldots) \\
\arccos(-\frac{y(t)}{A}) = f \cdot 2 \pi \cdot t \quad / \div f \quad \div2 \pi \\
$$
$$
t = \frac{\arccos(-\cfrac{y(t)}{A})}{2 \pi \cdot f}
$$
**Einsetzen der Werte:**
$$
t = \frac{\arccos(-\cfrac{1.618\sout{cm}}{2\sout{cm}})}{2 \pi \cdot 20Hz}
$$
**Ausrechnen von `acos(-1.618/2)/(40*pi)`**
$$
t \approx 0.02s
$$

**Zeichnen mit Desmos von Funktion $f\left(x\right)=2\sin\left(40\pi x-\frac{\pi}{2}\right)$ und Punkt $\left(0.02,1.618\right)$:**

![Sinusfunktion gezeichnet](assets/3_Uebung-Test2.png)

# Testlösungen: Ü3
## Angabe
Gib in normierter Gleitkommadarstellung an:

| |A|B|
|-|-|-|
|1|$7.85 \frac{g}{cm^3}$|? $\frac{kg}{m^3}$|
|2|$96.7 \frac{\mu V}{K}$|? $\frac{pV}{mK}$|
|3|$356 \frac{kcal}{h}$|? $\frac{cal}{s}$|
|4|$70000 \frac{N}{mm^2}$|? $\frac{kN}{cm^2}$|

## Lösung
### 1.
$$
\frac{1g}{1cm^3} = \frac{10^{-3}kg}{10^{-2\cdot3}m^3} = \frac{10^{-3}kg}{10^{-6}cm^3}
$$
$$
10^{-3} \div 10^{-6} = 10^{-3+6}=10^3
$$
$$
7.85\frac{g}{cm^3} = 7.85\cdot 10^3\frac{kg}{cm^3}
$$

### 2.
$$
\frac{1 \mu V}{1 K} = \frac{10^6 pV}{10^3mK}
$$
$$
10^6 \div 10^3 = 10^{6-3} = 10^3
$$
$$
96.7 \frac{\mu V}{K}=9.67 \cdot 10^{4}\frac{pV}{mK}
$$

### 3.
$$
\frac{1 kcal}{1 h} = \frac{10^3 cal}{3600s}
$$
$$
10^3 \div 3600 = 1\,000 \div 3600 = 0.2\overline{7}
$$
$$
356 \cdot 0.2\overline{7} = 98.\overline{8}
$$
$$
356 \frac{kcal}{h} = 9.\overline{8} \cdot 10^1 \frac{cal}{s}
$$

### 4.
$$
\frac{1N}{1mm^2} = \frac{10^{-3}kN}{10^{-1\cdot2}cm^2} = \frac{10^{-3}kN}{10^{-2}cm^2}
$$
$$
10^{-3} \div 10^{-2} = 10^{-3 +2} = 10^{-1}
$$
$$
70\,000\frac{N}{mm^2} = 7 \cdot 10^3 \frac{kN}{cm^2}
$$

### Gelöste Tabelle

| |A|B|
|-|-|-|
|1|$7.85 \frac{g}{cm^3}$|$7.85\cdot 10^3 \frac{kg}{m^3}$|
|2|$96.7 \frac{\mu V}{K}$|9.67 \cdot $10^{4} \frac{pV}{mK}$|
|3|$356 \frac{kcal}{h}$|$9.\overline{8} \cdot 10^1\frac{cal}{s}$|
|4|$70000 \frac{N}{mm^2}$|$7 \cdot 10^3\frac{kN}{cm^2}$|

# Testlösungen: Ü4
## Angabe
Beim Ablesen einer Federwaage ergibt sich ein Wert von $8.283N$. Das Massestück wird nun an eine Sprungfeder gehängt mit einer Federkonstante von $3 \frac{N}{cm}$. Ermitteln Sie die Frequenz des entstandenen Federpendels. 

## Lösung
**Ausrechnen von $m$**:
$$
m = \frac{8.283N}{g} = \frac{8.283N}{9.81\frac{m}{s^2}}
$$
$$
m \approx 0.844kg
$$

**Gegeben ist:**
$$
m = 0.844kg \quad D = 3 \frac{N}{cm}
$$

**Gesucht ist:**
$$
f = \text{?}
$$

**Relevante Formeln:**
$$
T = 2 \pi \sqrt{\frac{m}{D}} \\
f = \frac{1}{T} 
$$

**Kombinieren der Formeln:**
$$
f = \frac{1}{2 \pi \sqrt{\cfrac{m}{D}}}
$$

@ Formeln

# Schwingungen

$$
T = 1s \quad \ldots \text{Periodendauer} \\
f = 1Hz \quad \ldots \text{Frequenz} \\
$$
$$
T = \frac{1}{f}
$$
$$
\omega = 1s^{-1} \quad \ldots \text{Kreisfrequenz/Winkelgeschwindigkeit}
$$
$$
\omega = 2 \pi \cdot f = \frac{2 \pi}{T}
$$

# Harmonische Schwingungen

$$
y(t) = 1m \quad \ldots \text{Momentane Auslenkung} \\
A = 1m \quad \ldots \text{Amplitude} \\
\varphi_0 = 1s^{-1} \quad \ldots \text{Phasenverschiebung/Nullphasenwinkel}
$$
$$
y(t) = A \cdot \sin(\omega \cdot t + \varphi_0)
$$

# Federpendel
$$
T = 2 \pi \cdot \sqrt{\frac{m}{D}}
$$
$$
D = 1 \frac{N}{m} = 1 \frac{kg}{s^2} \quad \ldots \text{Federkonstante}
$$
$$
T \propto \sqrt{m} \quad T \propto \frac{1}{\sqrt{D}}
$$
$$
D = \omega^2 m
$$

# Fadenpendel 
$$
T = 2 \pi \sqrt{\frac{l}{g}}
$$
$$
l = 1m \quad \ldots \text{Länge des Fadenpendels} \\
g \approx 9.81 \frac{m}{s^2} \quad \ldots \text{Erdanziehungskraft}
$$
$$
\sin(\varphi) \approx \varphi
$$