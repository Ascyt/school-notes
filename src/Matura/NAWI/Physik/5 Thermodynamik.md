# Kinetische Gastheorie

**Das ideale Gas**: Stark vereinfachtes Modell eines realen Gases, kann jedoch das thermodynamische Verhalten gut beschreiben. 

**Gasdruck eines idealen Gases**: Hier ist die $N$ die Anzahl der Teilchen mit Masse $m$ einer Geschwindigkeit $v$ eingesperrt in einem Volumen $V$ (Teilchendichte = $\frac{N}{V}$). Mittlere Impulsbetrag $\Delta p$ in einer Zeit $\Delta t$ auf eine Wandfläche der Größe $A$ durch elastische Stöße ergibt sich aus:
$$
|\Delta\vec{p}|=\frac{1}{6}\cdot\left(\frac{N}{V}\cdot A\cdot v\cdot\Delta t\right)\cdot 2mv
$$
hier beschreibt der eingeklammerte Teil die Teilchen, die mit der Wand wechselwirken können, weil sie die Wand in einer Zeit $\Delta t$ erreichen können. 

**Druck $p$:**
$$
p=\frac{1}{3}\cdot\frac{N}{V}\cdot m\cdot v^2 = \frac{2}{3}\cdot \frac{N}{V}\cdot\overline{E_\text{kin}}
$$

**Bar:**
$$
1\ \text{bar}=10^5\ \text{Pa}=1\ 000\ \text{hPa}
$$

**Boltzmannkonstante $k$:**
$$
k\approx 1.3806488\cdot10^{-23}\frac{\text{J}}{\text{K}}
$$

**Zustandsgleichung des idealen Gases:**
$$
p\cdot V=N\cdot k\cdot T
$$

**Anzahl der Teilchen in einem Mol (Avogadrokonstante $N_A$):**
$$
N_A=6.022\cdot 10^{23}\text{mol}^{-1}
$$

**Gesetz von Avogadro**: Ein Mol eines beliebigen Gases nimmt beim Druck von $p_0=1.01325\ \text{bar}$ und einer Temperatur von $T_0=273.15\ \text{K}$ ($0\degree\text{C}$) ein Volumen von $V_m=22.4\ \text{dm}^3$ ein. Joa. 

**Universelle Gaskonstante $R$:**
$$
R=N_A\cdot k\approx8.314\frac{\text{J}}{\text{K}\cdot\text{mol}}
$$

Für $n$ Mol eines idealen Gases gilt:
$$
p\cdot V=n\cdot R\cdot T
$$

**Spezifische Gaskonstante $R_s$**: Hier ist $M$ die Masse eines Mols des speziellen Gases.
$$
R_s=\frac{R}{M}
$$
Es gilt also:
$$
p\cdot V = m\cdot R_s\cdot T
$$

Besondere Fälle (konst = konstant):

|Name|$p$ konst?|$V$ konst?|$n$ konst?|$T$ konst?|Proportionalität|Was ist konst?|Formel|
|-|-|-|-|-|-|-|-|
|Gesetz von Boyle-Mariotte|$\textcolor{red}{\times}$|$\textcolor{red}{\times}$|$\textcolor{lime}{\checkmark}$|$\textcolor{lime}{\checkmark}$|$p\propto \frac{1}{V}$|$p\cdot V$|$\frac{p_1}{p_2}=\frac{V_2}{V_1}$|
|(erstes) Gesetz von Gay-Lussac|$\textcolor{lime}{\checkmark}$|$\textcolor{red}{\times}$|$\textcolor{lime}{\checkmark}$|$\textcolor{red}{\times}$|$V\propto T$|$\frac{V}{T}$|$\frac{V_1}{V_2}=\frac{T_1}{T_2}$|
|Gesetz von Amontons/zweites von Gay-Lussac|$\textcolor{red}{\times}$|$\textcolor{lime}{\checkmark}$|$\textcolor{lime}{\checkmark}$|$\textcolor{red}{\times}$|$p\propto T$|$\frac{p}{T}$|$\frac{p_1}{p_2}=\frac{T_1}{T_2}$|
|Gesetz der Gleichförmigkeit|$\textcolor{lime}{\checkmark}$|$\textcolor{red}{\times}$|$\textcolor{red}{\times}$|$\textcolor{lime}{\checkmark}$|$V\propto N$|$\frac{N}{V}$|$\frac{V_1}{V_2}=\frac{N_1}{N_2}$|

Infos dazu:
- Die Gesetze, bei denen der Druck nicht konstant ist (Boyle-Mariotte & Amontons) versagen bei zu hohen Druck.
- Gesetz der Gleichförmigkeit sagt aus, dass ein ideales Gas überall die selbe Dichte aufweist. 