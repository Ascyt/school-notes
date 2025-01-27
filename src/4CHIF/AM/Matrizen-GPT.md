
# Determinante

Die Determinante ist eine spezielle Zahl, die einer quadratischen Matrix zugeordnet ist. Sie gibt Auskunft über bestimmte Eigenschaften der Matrix, wie z.B. ob die Matrix invertierbar ist.

Für eine 2x2-Matrix 
$$
A = \begin{pmatrix} a & b \\ c & d \end{pmatrix}
$$
ist die Determinante definiert als:
$$
\text{det}(A) = ad - bc 
$$

# Multiplikation von Matrizen

Die Multiplikation von Matrizen ist nur möglich, wenn die Anzahl der Spalten der ersten Matrix gleich der Anzahl der Zeilen der zweiten Matrix ist. Für zwei Matrizen $A$ und $B$ mit kompatiblen Dimensionen ergibt sich das Produkt $C = A \cdot B$.

Für zwei 2x2-Matrizen:
$$
A = \begin{pmatrix} a & b \\ c & d \end{pmatrix}, \quad B = \begin{pmatrix} e & f \\ g & h \end{pmatrix}
$$

ist das Produkt:
\[ C = A \cdot B = \begin{pmatrix} ae + bg & af + bh \\ ce + dg & cf + dh \end{pmatrix} \]

# Inverse Matrix (2x2)

Die inverse Matrix $A^{-1}$ einer 2x2-Matrix $A$ existiert nur, wenn die Determinante von $A$ ungleich null ist. Die Inverse wird berechnet als:

Für $A = \begin{pmatrix} a & b \\ c & d \end{pmatrix}$ mit $\text{det}(A) \neq 0$:
$$
A^{-1} = \frac{1}{\text{det}(A)} \begin{pmatrix} d & -b \\ -c & a \end{pmatrix} 
$$

# Gleichungssysteme

Matrizen können verwendet werden, um lineare Gleichungssysteme zu lösen. Ein Gleichungssystem der Form:

$$
A \mathbf{x} = \mathbf{b} 
$$

kann durch die Inverse der Matrix $ A $ gelöst werden, sofern $ A $ invertierbar ist:

$$
\mathbf{x} = A^{-1} \mathbf{b} 
$$

# Transformationsmatrizen

Transformationsmatrizen werden verwendet, um geometrische Transformationen wie Translation, Rotation, Skalierung und Spiegelung im Raum darzustellen. Eine Transformationsmatrix wirkt auf einen Vektor, um ihn in einen neuen Vektor zu transformieren.

Beispiel einer 2D-Rotationsmatrix um den Ursprung um den Winkel $\theta$:
$$
R = \begin{pmatrix} \cos(\theta) & -\sin(\theta) \\ \sin(\theta) & \cos(\theta) \end{pmatrix} 
$$

Diese Matrix rotiert einen Vektor im Uhrzeigersinn um den Winkel $\theta$.