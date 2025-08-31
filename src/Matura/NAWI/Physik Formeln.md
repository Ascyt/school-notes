# Mechanik

## Kinematik & Dynamik

**Allgemeine Symbolik:**

|T Name|T Symbol|T Einheit||R Name|R Symbol|R Einheit|
|-|-|-|-|-|-|-|
|Weg|$\vec{s}$|$\text{m}$||Drehwinkel|$\varphi$|$\text{rad}$|
|Geschwindigkeit|$\vec{v}$|$\frac{\text{m}}{\text{s}}$||Winkelgeschwindigkeit|$\omega$|$\frac{\text{rad}}{\text{s}}$|
|Beschleunigung|$\vec{a}$|$\frac{\text{m}}{\text{s}^2}$||Winkelbeschleunigung|$\alpha$|$\frac{\text{rad}}{\text{s}^2}$|
|Masse|$m$|$\text{kg}$||Trägheitsmoment|$J$|$\text{kg}\cdot\text{m}^2$|
|Kraft|$\vec{F}$|$\text{N}$||Drehmoment|$M$|$\text{N}\cdot\text{m}$|
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

**Formeln:**

$$
W = \vec{F} \cdot \vec{s}
$$

$$
W_\text{Dehn}=\frac{F_\text{Dehn}\cdot s_\text{Dehn}}{2}=\frac{D\cdot s^2}{2}
$$