# Mechanik

## Kinematik & Dynamik

**Allgemeine Symbolik:**

|T Name|T Symbol|T Einheit||R Name|R Symbol|R Einheit|
|-|-|-|-|-|-|-|
|Weg|$\vec{s}$|$\text{m}$||Drehwinkel|$\varphi$|$\text{rad}$|
|Geschwindigkeit|$\vec{v}$|$\frac{\text{m}}{\text{s}}$||Winkelgeschwindigkeit|$\omega$|$\frac{\text{rad}}{\text{s}}$|
|Beschleunigung|$\vec{a}$|$\frac{\text{m}}{\text{s}^2}$||Winkelbeschleunigung|$\alpha$|$\frac{\text{rad}}{\text{s}^2}$|
|Masse|$m$|$\text{kg}$||Trägheitsmoment|$J$|$\text{kg}\cdot\text{m}^2$|
|Kraft|$\vec{F}$|$\frac{\text{kg}\cdot\text{m}}{\text{s}^2}=\text{N}$||Drehmoment|$M$|$\text{N}\cdot\text{m}$|
|Impuls|$\vec{p}$|$\text{N}\cdot\text{s}$||Drehimpuls|$L$|$\text{N}\cdot\text{m}\cdot\text{s}$|

**Allgemeine Formeln:**
$$
\vec{s}(t)=\vec{v} \cdot t \quad \ldots\text{falls }\vec{v}\text{ konstant}
$$
$$
\vec{v}(t)=\vec{a}\cdot t \quad \ldots\text{falls }\vec{a}\text{ konstant}
$$ 
<br />

$$
\vec{s}(t_2)=\vec{s}(t_1) +\int_{t_1}^{t_2} \vec{v} \ dt
$$
$$
\vec{v}(t_2)=\vec{v}(t_1) +\int_{t_1}^{t_2} \vec{a} \ dt
$$

<br />

$$
\frac{\Delta \vec{s}}{\Delta t}=\vec{v}
$$
$$
\frac{\Delta \vec{v}}{\Delta t}=\vec{a}
$$
<br />

$$
\vec{F} = m\cdot\vec{a}
$$
$$
\vec{p} = m\cdot\vec{v}
$$
<br />

$$
\vec{p}(t_2)=\vec{p}(t_1) +\int_{t_1}^{t_2} \vec{F} \ dt
$$
<br />

$$
\frac{\Delta\vec{p}}{\Delta t}=\vec{F}
$$
<br />

$$
(\vec{M}|\vec{L})=\vec{r}\times(\vec{F}|\vec{p})
$$
$$
(M|L) = r\cdot (F|p) \cdot \sin(\varphi)
$$


**Spezifische Symbolik:**

|Name|Symbol|Einheit|
|-|-|-|
|Frequenz|$f$|$\text{Hz}=\frac{1}{s}$|
|Periodendauer|$T$|$\text{s}$|
|Dichte|$\rho$|$\frac{\text{kg}}{\text{m}^3}$|
|Federkonstante/Richtgröße|$D$|$\frac{\text{N}}{\text{m}}$|
|Reibungszahl/Reibbeiwert|$\mu$|$1$|

**Spezifische Formeln:**
$$
T = \frac{1}{f}
$$
<br />

$$
\vec{F}_G=G\cdot\frac{m_1\cdot m_2}{r^2}
$$
<br />

$$
\rho = \frac{m}{V}
$$
<br />

$$
\vec{F} = D \cdot \Delta x
$$
$$
\vec{F}_\text{Reibung} = \mu \cdot F_N
$$
$$
\vec{F}_\text{Trägheit} = -m \cdot \vec{a}
$$
<br />

$$
\vec{a}_\text{Zentripetal}=\frac{\Delta v}{\Delta t}=\frac{v^2}{r}
$$
$$
\vec{F}_\text{Zentrifugal}=m\cdot \omega^2 \cdot r=m\cdot\frac{v^2}{r}
$$
$$
\vec{F}_\text{Coriolis}=2\cdot m\cdot \omega\cdot v_r\cdot \sin\beta
$$
<br />


**Konstanten:**

|Name|Symbol|Wert|
|-|-|-|
|Erdbeschleunigung|$g$|$9.81 \frac{\text{m}}{\text{s}^2}$|
|Gravitationskonstante|$G$|$6.67384 \cdot 10^{-11} \frac{m^3}{kg \cdot s^2}$|

## Statik

**Symbolik:**

|Name|Symbol|Einheit|
|-|-|-|
|Druck|$p$|$\frac{N}{m^2}=\text{Pa}$|
|Mechanische Spannung|$\sigma$|$\text{Pa}$|
|Dehnung|$\varepsilon$|$1$|
|Elastitätsmodul|$E$|$\frac{1\ \text{Pa}}{1}$|
|Schubwinkel|$\gamma$|$\text{rad}$|
|Schubspannung|$\tau$|$\text{Pa}$| 
|Schubmodul|$G$|$\frac{1\ \text{Pa}}{1}$|

**Formeln:**
$$
F_1 \cdot r_1 = F_2 \cdot r_2
$$
$$
p = \frac{F_N}{A}
$$
$$
\sigma = \frac{F}{A}
$$
$$
\varepsilon = \frac{\Delta l}{l}
$$
$$
\sigma = E\cdot \varepsilon
$$
$$
\tau = G \cdot \gamma
$$

## Energie, Leistung und Wirkungsgrad

**Symbolik:**

|Name|Symbol|Einheit|
|-|-|-|
|Arbeit|$W$|$\text{N}\cdot\text{m}=J$|
|Leistung|$\overline{P}$|$\frac{\text{J}}{\text{s}}=\text{W}$|
|Wirkungsgrad|$\eta$|$1$|

**Arbeitsformen:**

|Arbeit Name|Arbeit Symbol|Energie Name|Energie Symbol|
|-|-|-|-|
|Hubarbeit|$W_\text{Hub}$|Potenzielle Energie|$E_\text{pot}$|
|Dehnungsarbeit|$W_\text{Dehn}$|Elastische Energie|$E_\text{el}$|
|Beschleunigungsarbeit|$W_\text{a}$|Kinetische Energie|$E_\text{kin}$|
|Reibungsarbeit|$W_R$|Innere Energie|$U$|
|Rotationsarbeit|$W_\text{Rot}$|Rotationsenergie|$E_\text{Rot}$|

**Formeln:**

$$
W = \vec{F} \cdot \vec{s}
$$
$$
\overline{P}=\frac{\Delta W}{\Delta t}
$$

## Zusammengefasst

|Name|Symbol|Einheit|Formel|Integriert nach Zeit|
|-|-|-|-|-|
|Weg|$\vec{s}$|$\text{m}$|||
|Geschwindigkeit|$\vec{v}$|$\frac{\text{m}}{\text{s}}$||Weg|
|Beschleunigung|$\vec{a}$|$\frac{\text{m}}{\text{s}^2}$||Geschwindigkeit|
|Masse|$m$|$\text{kg}$||
|Impuls|$\vec{p}$|$\text{N}\text{s}$|$m\cdot \vec{v}$||
|Kraft|$\vec{F}$|$\text{N}$||Impuls|
|Arbeit|$W$|$\text{J}$|$\vec{F}\cdot s$|
|Leistung|$P$|$\text{W}$||Arbeit|

# Elektrizitätslehre

**Symbolik:**

|Name|Symbol|Einheit|
|-|-|-|
|Elektrische Ladung|$Q$|$\text{A}\cdot\text{s}=\text{C}$|
|Elektrische Feldstärke|$E$|$\frac{\text{N}}{\text{C}}$|
|Elektrischer Fluss|$\Phi$|$\frac{\text{N}\text{m}^2}{\text{C}}$|
|Potenzial|$V$|$\frac{\text{J}}{\text{C}}=\text{V}$|
|Spannung|$U$|$\text{V}$|
|Kondensatorkapazität|$C$|$\frac{\text{A}\cdot\text{s}}{\text{V}}=\text{F}$

**Konstanten:**

|Name|Symbol|Wert|
|-|-|-|
|Elementarladung|$e$|$1.6022\cdot10^{-19}\text{C}$|
|Dielektrizitätskonstante|$\varepsilon_0$|$8.854\cdot10^{-12} \frac{\text{A}^2\text{s}^2}{\text{N}\text{m}^2}$|
|Elektronvolt|$eV$|$1.6022 \cdot 10^{-19}\text{J}$|

**Formeln:**

$$
F=\frac{1}{4\pi\cdot\varepsilon_0}\cdot\frac{Q_1\cdot Q_2}{r^2}
$$
$$
\vec{E}=\frac{\vec{F}}{q}
$$
$$
\Phi_E=E\cdot A
$$
$$
Q=\varepsilon_0\cdot\Phi_E
$$
$$
W = q\cdot \vec{E}\cdot\vec{s}
$$
$$
W = Q\cdot \frac{q}{4\pi\varepsilon_0}\cdot (\frac{1}{r_2}-\frac{1}{r_1})
$$
$$
V=\frac{W}{Q}
$$
$$
U=\Delta V
$$
$$
C=\frac{Q}{U}=\frac{\varepsilon_0\cdot A}{d}=\frac{\varepsilon_0\cdot\varepsilon_r\cdot A}{d}
$$

> natürlich mehr als das, aber ich überspringe das Thema (vorerst zumindest)

# Schwingungen & Wellen

**Symbolik:**

|Name|Symbol|Einheit|
|-|-|-|
|Auslenkung|$y$|$\text{m}$|
|Dämpfungskonstante|$\delta$|$\text{s}^{-1}$|
|Wellenvektor|$\vec{k}$|$\text{m}^{-1}$|
|Wellenlänge|$\lambda$|$\text{m}$|
|Brennweite|$f$|$\text{m}$|
|Brechkraft|$D$|$\text{m}^{-1}=\text{dpt}$|

**Konstanten:**

|Name|Symbol|Wert|
|-|-|-|
|Schallgeschwindigkeit|$c_\text{Schall}$|$340\frac{\text{m}}{\text{s}}$|
|Lichtgeschwindigkeit|$c_\text{Licht}$|$299\ 792\ 458\frac{\text{m}}{\text{s}}$

**Formeln:**

$$
y(t)=r_0\cdot e^{-\delta\cdot t}\cdot\sin(\sqrt{{\omega_0}^2-\delta^2}\cdot t+\varphi_0)
$$
$$
D = \left|\frac{\Delta F}{\Delta y}\right| = \omega^2\cdot m = -\frac{F}{y}
$$
<br />

$$
y_1(t)=2r\cdot\left(\sin\left((\omega_1+\omega_2)\cdot\frac{t}{2}\right)\cdot\cos\left((\omega_1-\omega_2)\cdot\frac{t}{2}\right)\right)
$$
$$
\frac{\omega_1-\omega_2}{2\pi}=f_1-f_2
$$
<br />

|Pendelart|Formel für die Periodendauer|
|-|-|
|Federpendel|$2\pi\sqrt{\frac{m}{D}}$|
|Drehpendel|$2\pi\sqrt{\frac{J}{D^*}}$|
|Fadenpendel|$2\pi\sqrt{\frac{l}{g}}$|
|Physisches Pendel|$2\pi\sqrt{\frac{J}{m\cdot g\cdot s}}$|

$$
y(\vec{x}, t)=r\cdot \sin(\omega \cdot t - \vec{k}\cdot\vec{x}) 
$$
$$
|\vec{k}|=k=\frac{\omega}{c}=\frac{2\pi}{\lambda}
$$
<br />

$$
c=\sqrt{\frac{\sigma}{\rho}}=\sqrt{\frac{F}{A\cdot\rho}}
$$
$$
\frac{\sin\alpha}{\sin\beta}=\frac{c_1}{c_2}=\frac{\lambda_1}{\lambda_2}=\frac{n_2}{n_1}
$$
$$
\alpha=\arctan\left(\frac{n_2}{n_1}\right)
$$
$$
\alpha_\text{Grenz}=\arcsin\left(\frac{n_2}{n_1}\right)=\arcsin\left(\frac{c_1}{c_2}\right)=\arcsin\left(\frac{\lambda_1}{\lambda_2}\right)
$$
<br />

$$
D = \frac{1}{f}
$$

|Name|Symbol|
|-|-|
|Brennweite|f|
|Gegenstandsgröße|G|
|Gegenstandsweite|g|
|Bildgröße|B|
|Bildweite|b|
|Vergrößerung|v|
|Sehwinkel mit Instrument|$\alpha_V$|
|Sehwinkel ohne Instrument|$\alpha$|

$$
v=\frac{B}{G}=\frac{b}{g}
$$
$$
v=\frac{B}{G}=\frac{b}{g}
$$
$$
v < 0;\ b>0?\qquad \text{reell; umgekehrtes Bild}\\
v > 0;\ b<0?\qquad \text{virtuell; aufrechtes Bild}
$$
$$
v=\frac{\tan\alpha_V}{\tan\alpha}
$$
$$
v_\text{Fernrohr}=\frac{f_\text{Objektiv}}{f_\text{Okular}}
$$
<br />

|Name|Symbol|Einheit|
|-|-|-|
|Schalldruck|$p$|$\frac{\text{N}}{\text{m}^2}=\text{Pa}$|
|Schallintensität|$I$|$\frac{\text{J}}{\text{m}^2\cdot\text{s}}=\frac{\text{W}}{\text{m}^2}$|
|Schallkennidempedanz|$Z$|$\frac{\text{kg}}{\text{s}\cdot\text{m}^2}$|
|Schallintentsitätspegel|$L$|$\text{dB}$|

$$
p=\frac{F}{A}\qquad [p]=\frac{\text{N}}{\text{m}^2}=\text{Pa}
$$
$$
I=\frac{E}{t\cdot A}
$$
$$
Z=\frac{p^2}{I}
$$
$$
I(r)=\frac{P}{4\pi r^2}
$$
$$
I(x)=I_0\cdot e^{-a\cdot x}
$$
$$
L=10\cdot\log_{10}\left(\frac{I}{I_0}\right)=20\log_{10}\left(\frac{p}{p_0}\right)
$$
<br />

$$
f=\frac{f_0}{1-\frac{v}{c}}\qquad\ldots\text{sich näherndem Sender}
$$

$$
f=\frac{f_0}{1+\frac{v}{c}}\qquad\ldots\text{sich entfernendem Sender}
$$

# Thermodynamik

**Symbolik:**

|Name|Symbol|Einheit|
|-|-|-|
|Anzahl der Teilchen|$N$|$1$|
|Temperatur|$T$|$\text{K}$|
|Wärme|$Q$|$\text{J}$|
|Enthalpie|$H$|$\text{J}$|
|Spez. Wärmekapazität bei konst. Vol.|$c_V$|$\frac{\text{kJ}}{\text{kg}\cdot\text{K}}$|
|Spez. Wärmekapazität bei konst. Druck|$c_p$|$\frac{\text{kJ}}{\text{kg}\cdot\text{K}}$|
|Isentropenexponent|$\kappa$|$1$|
|Entropie|$S$|$\frac{\text{J}}{\text{K}}$|

**Konstanten:**

|Name|Symbol|Wert|
|-|-|-|
|Boltzmannkonstante|$k$|$1.3806488\cdot10^{-23}\frac{\text{J}}{\text{K}}$|
|Avogadrokonstante|$N_A$|$6.022\cdot 10^{23}\text{mol}^{-1}$|
|Universielle Gaskonstante|$R$|$N_A\cdot k\approx8.314\frac{\text{J}}{\text{K}\cdot\text{mol}}$

**Formeln:**

$$
|\Delta\vec{p}|=\frac{1}{6}\cdot\left(\frac{N}{V}\cdot A\cdot v\cdot\Delta t\right)\cdot 2mv
$$
$$
p=\frac{1}{3}\cdot\frac{N}{V}\cdot m\cdot v^2 = \frac{2}{3}\cdot \frac{N}{V}\cdot\overline{E_\text{kin}}
$$
$$
p\cdot V=N\cdot k\cdot T
$$
$$
p\cdot V=n\cdot R\cdot T
$$
$$
R_s=\frac{R}{M} \qquad M\ldots\text{Masse von 1 mol des speziellen Gases}
$$
$$
p\cdot V = m\cdot R_s\cdot T
$$

|Name|$p$ konst?|$V$ konst?|$n$ konst?|$T$ konst?|Proportionalität|Was ist konst?|Formel|
|-|-|-|-|-|-|-|-|
|Gesetz von Boyle-Mariotte|$\textcolor{red}{\times}$|$\textcolor{red}{\times}$|$\textcolor{lime}{\checkmark}$|$\textcolor{lime}{\checkmark}$|$p\propto \frac{1}{V}$|$p\cdot V$|$\frac{p_1}{p_2}=\frac{V_2}{V_1}$|
|(erstes) Gesetz von Gay-Lussac|$\textcolor{lime}{\checkmark}$|$\textcolor{red}{\times}$|$\textcolor{lime}{\checkmark}$|$\textcolor{red}{\times}$|$V\propto T$|$\frac{V}{T}$|$\frac{V_1}{V_2}=\frac{T_1}{T_2}$|
|Gesetz von Amontons/zweites von Gay-Lussac|$\textcolor{red}{\times}$|$\textcolor{lime}{\checkmark}$|$\textcolor{lime}{\checkmark}$|$\textcolor{red}{\times}$|$p\propto T$|$\frac{p}{T}$|$\frac{p_1}{p_2}=\frac{T_1}{T_2}$|
|Gesetz der Gleichförmigkeit|$\textcolor{lime}{\checkmark}$|$\textcolor{red}{\times}$|$\textcolor{red}{\times}$|$\textcolor{lime}{\checkmark}$|$V\propto N$|$\frac{N}{V}$|$\frac{V_1}{V_2}=\frac{N_1}{N_2}$|

$$
f(v)=4\pi\cdot\left(\frac{m}{2\pi k T}\right)^{1.5}\cdot v^2\cdot \exp\left(-\frac{mv^2}{2kT}\right)
$$
<br />

$$
Q+W=\Delta U
$$
$$
W=-p\cdot\Delta V
$$
$$
U=c_V\cdot m\cdot T
$$
$$
H=U+p\cdot V
$$
$$
H = c_p\cdot m\cdot T
$$
<br />

$$
Q=\Delta U=c_V\cdot m\cdot \Delta T\qquad\ldots \Delta V=0
$$
$$
Q=\Delta U=c_p\cdot m\cdot \Delta T\qquad\ldots \Delta p=0
$$
$$
W=p\cdot V\cdot \ln\left(\frac{V_1}{V_2}\right)\qquad\ldots \Delta T=0
$$
$$
\frac{T_1}{T_2}=\left(\frac{V_2}{V_1}\right)^{\kappa-1}\qquad \text{oder}\qquad T\cdot V^{\kappa-1}=\text{konst.}\qquad\ldots \Delta Q=0
$$
$$
\frac{T_1}{T_2}=\left(\frac{p_1}{p_2}\right)^{(\kappa-1)\div\kappa}\qquad \text{oder}\qquad T^\kappa\cdot p^{1-\kappa}=\text{konst.}\qquad\ldots \Delta Q=0
$$
$$
\frac{p_1}{p_2}=\left(\frac{V_2}{V_1}\right)^\kappa\qquad \text{oder}\qquad p\cdot V^\kappa=\text{konst.}\qquad\ldots \Delta Q=0
$$
<br />

**Carnotprozess Tabelle:**

|Zustandsänderung|Was ist $0$?|Was gilt?|Formel|
|-|-|-|-|
|$1\Rarr2$|$\Delta T,\Delta U$|$W_\text{ab}=-Q_\text{zu}$|$Q_\text{zu}=m\cdot R\cdot T_1\cdot\ln\left(\frac{V_2}{V_1}\right)$|
|$2\Rarr3$|$\Delta Q$|$Q_\text{zu}=0$|$\frac{m\cdot R}{\kappa-1}\cdot(T_2-T_1)$|
|$3\Rarr4$|$\Delta T,\Delta U$|$W_\text{zu}=-Q_\text{ab}$|$Q_\text{ab}=m\cdot R\cdot T_2\cdot\ln\left(\frac{V_4}{V_3}\right)$|
|$4\Rarr1$|$\Delta Q$|$Q_\text{ab}=0$|$W_\text{zu}=\frac{m\cdot R}{\kappa-1}\cdot(T_1-T_2)$|

$$
|Q_\text{zu}|>|Q_\text{ab}|
$$
$$
\eta=\frac{T_1-T_2}{T_1}
$$
<br />

$$
S=k\cdot\ln(W)
$$

# Moderne Physik


**Konstanten:**

|Name|Symbol|Wert|
|-|-|-|
|Lichtgeschwindigkeit|$c_0$|$299\ 792\ 458\frac{\text{m}}{\text{s}}$|

**Formeln:**

$$
v_\text{ges}=\cfrac{v_1+v_2}{1+\cfrac{v_1\cdot v_2}{{c_0}^2}}
$$
<br />

$$
\gamma = \left(1-\left(\cfrac{v}{c_0}\right)^2\right)^{-0.5} \qquad \ldots\gamma=1\quad\text{bei}\quad v=0
$$
<br />

$$
x_b = \gamma (x - v t)
$$
$$
t_b = \gamma \left( t - \frac{v}{{c_0}^2} x \right)
$$
$$
y_b = y \\
z_b = z
$$
<br />

$$
m_d=\gamma\cdot m_0
$$
$$
E_\text{ges}=m_d\cdot{c_0}^2
$$
$$
E_\text{kin}=(m_d-m_0)\cdot {c_0}^2
$$
$$
p=m_0\cdot v\cdot\gamma
$$
$$
f_B=f_Q\sqrt{\frac{c_0-v}{c_0+v}}
$$
<br />

$$
x_h=x_O\cdot\left(1-g\frac{\Delta h}{{c_0}^2}\right)\qquad \ldots\text{mit }x=[f|h|l]
$$

