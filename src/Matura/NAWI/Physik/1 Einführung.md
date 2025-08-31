# Arbeitsweise 

1. **Beobachtung**
2. **Versuch/Experiment**
3. **Hypothese**
4. **Theorie**


# SI-Einheiten

|Grundgröße|Symbol|Grundeinheit|Abkürzung|
|-|-|-|-|
|Länge|$l$|Meter|$\text{m}$|
|Zeit|$t$|Sekunde|$\text{s}$|
|Masse|$m$|Kilogramm|$\text{kg}$|
|Temparatur|$T$|Kelvin|$\text{K}$|
|Stromstärke|$I$|Ampere|$\text{A}$|
|Lichtstärke|$I$|Candela|$\text{cd}$|
|Stoffmenge|$n$|Mol|$\text{mol}$|

# Skalar vs. Vektoriell

- **Skalar**: Eine einzelne Zahl
- **Vektoriell**: Gerichtete größe, z.B. Weg $\vec{s}$, wird oft mit Pfeil dargestellt

Wichtig ist, dass dinge wie Beschleunigung ($\vec{a}$) oder Kraft ($\vec{F}$) immer vektorielle Größen sind. Falls diese Dinge hier nicht in die gleiche Richtung zeigen muss man aufpassen. 

# Vektorrechnung

(kommt so evntl. nicht zur Matura, kann aber hilfreich sein)

**Vektorlänge:**
$$
||\vec{v}||=v=\sqrt{{v}_x^2+{v}_y^2+{v_z}^2}
$$

**Polarkoordinaten $\hArr$ Kartesischen Koordinaten:**
$$
\vec{v}=\begin{pmatrix}
    \vec{v}_x\\
    \vec{v}_y
\end{pmatrix}=\begin{pmatrix}
    r\cdot\cos\phi \\
    r\cdot\sin\phi
\end{pmatrix}
$$
$$
r=||\vec{v}||\qquad \phi=\operatorname{atan2}(\vec{v}_x, \vec{v}_y)
$$
$$
\operatorname{atan2}(x, y) = \begin{cases}
   \arctan\left(\frac{y}{x}\right)       & \text{if } x > 0\\
   \arctan\left(\frac{y}{x}\right) + \pi & \text{if } x < 0 \text{ and } y \ge 0\\
   \arctan\left(\frac{y}{x}\right) - \pi & \text{if } x < 0 \text{ and } y < 0\\
   \frac{\pi}{2}                         & \text{if } x = 0 \text{ and } y > 0\\
  -\frac{\pi}{2}                         & \text{if } x = 0 \text{ and } y < 0\\
   \text{undefined}                      & \text{if } x = 0 \text{ and } y = 0.
\end{cases}
$$
**Vektoraddition:**
$$
\vec{a}+\vec{b}=
\begin{pmatrix}
    a_x \\
    a_y \\
    a_z
\end{pmatrix}+\begin{pmatrix}
    b_x \\
    b_y \\
    a_z
\end{pmatrix}=\begin{pmatrix}
    a_x + b_x \\
    a_y + b_y \\
    a_z + b_z
\end{pmatrix}
$$

**Skalarprodukt:**
$$
\vec{a}\cdot\vec{b}=a_x\cdot b_x+a_y\cdot b_y+a_z\cdot b_z
$$

**Kreuzprodukt** (nur definiert für $\reals^3$)
$$
\vec{a}\times\vec{b}=
\begin{pmatrix}
    a_x \\
    a_y \\
    a_z
\end{pmatrix}\times\begin{pmatrix}
    b_x \\
    b_y \\
    a_z
\end{pmatrix}=\begin{pmatrix}
    a_y\cdot b_z - a_z\cdot b_y \\
    a_z\cdot b_x - a_x\cdot b_z \\
    a_x\cdot b_y - a_y\cdot b_x
\end{pmatrix}
$$
In Farben:
$$
\vec{a}\times\vec{b}=
\begin{pmatrix}
    \textcolor{red}{a} \\
    \textcolor{lime}{a} \\
    \textcolor{blue}{a}
\end{pmatrix}\times\begin{pmatrix}
    \textcolor{red}{b} \\
    \textcolor{lime}{b} \\
    \textcolor{blue}{b}
\end{pmatrix}=\begin{pmatrix}
    \textcolor{lime}{a}\cdot \textcolor{blue}{b} - \textcolor{blue}{a}\cdot \textcolor{lime}{b} \\
    \textcolor{blue}{a}\cdot \textcolor{red}{b} - \textcolor{red}{a}\cdot \textcolor{blue}{b} \\
    \textcolor{red}{a}\cdot \textcolor{lime}{b} - \textcolor{lime}{a}\cdot \textcolor{red}{b}
\end{pmatrix}
$$

**Rotierung eines Punktes** in der XY-Rotationsebene:
$$
\vec{v}=\begin{pmatrix}
    \vec{v}_x\\
    \vec{v}_y
\end{pmatrix}
$$

$$
\vec{v}'=\begin{pmatrix}
    \vec{v}_x\cos\phi-\vec{v}_y\sin\phi \\
    \vec{v}_x\sin\phi+\vec{v}_y\cos\phi 
\end{pmatrix}
$$

Zur 3-Dimensionalen Rotation kann die obige Formel für die Rotationsebenen XY, XZ, YZ angewendet werden. Hierbei wird die übrige Koordinate nicht verändert. 

**Rotierung eines 3D-Punktes mithilfe Quaternionen $\mathbb H$** (anders zur Rotierung der obigen Methode sind Axen relativ zur momentanen Rotation):

$$
j\cdot k = i \qquad i\cdot j = k \qquad k \cdot i = j \\
k\cdot j = -i \qquad j\cdot i = -k \qquad i \cdot k = -j \\
i^2=j^2=k^2=ijk=-1
$$
$$
q = w+xi+yj+zk \qquad q^*=w-xi-yj-zk
$$
$$
\phi\text{ um die X-Achse: } \cos(\frac{\phi}{2})+i\sin(\frac{\phi}{2}) \\
\phi\text{ um die Y-Achse: } \cos(\frac{\phi}{2})+j\sin(\frac{\phi}{2}) \\
\phi\text{ um die Z-Achse: } \cos(\frac{\phi}{2})+k\sin(\frac{\phi}{2})
$$
$$
\vec{v} = 
\begin{pmatrix}
    \vec{v}_x \\
    \vec{v}_y \\
    \vec{v}_z
\end{pmatrix}=i\vec{v}_x+j\vec{v}_y+k\vec{v}_z
$$
$$
\text{Quaternion }q_1\text{ um Quaternion }q_2\text{ rotieren: }q_1\cdot q_2 \\
\text{Vektor }\vec{v}\text{ um Quaternion }q\text{ rotieren: } q\cdot \vec{v}\cdot q^*
$$

# Messfehler

Bei z.B.:
$$
T = \frac{\Delta t}{n} \qquad \text{und damit}\qquad f=\frac{1}{T}=\frac{n}{\Delta t}
$$
$$
\text{Messfehler von }n\text{:} \quad \plusmn1
$$
Aus:
$$
f\plusmn\Delta f=\frac{n\plusmn1}{\Delta t}=\frac{n}{\Delta t}\plusmn\frac{1}{\Delta t}
$$
ergibt sich:
$$
\text{Messfehler von }f\space(\Delta f)\text{:} \quad \plusmn \frac{1}{\Delta t}
$$

- **Systematische Fehler**: Sind nicht leicht zu identifizieren und ihre Auswirkungen sind nicht leicht bekannt. Können durch wiederholte Messungen oder erhöhten Rechenaufwand **nicht** verringert werden.
- **Statische Fehler**: Ungenauigkeiten beim Ablesen, von Schwankungen oder Rauschen, etc. Sind prinzipiell **unvermeidbar**, sind aber mathematisch erfass- und korrigierbar. 
