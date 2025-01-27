# Trennung der Variablen
Nur möglich für Funktionen 1. Ordnung (d.H. max. 1 Ableitung)

Form der Gleichung muss sein:
$$
y' = f(x) \cdot g(y)
$$

## Beispiel
$$
y' = x^2 \cdot y
$$

**$y'$ als Bruch darstellen und umformen:**
$$
\frac{dy}{dx}=x^2 \cdot y \quad / \times dx \quad \div y
$$
$$
\frac{dy}{y}= x^2 \cdot dx
$$
**Beide Seiten nach $dx$ integrieren:**
$$
\frac{1}{y}dy = x^2 \cdot dx \quad / \int \ldots dx
$$
$$
\ln(y) + C_1 = \frac{x^3}{3}+C_2
$$
**Wir können beide Konstanten $C_1$ und $C_2$ in einer ($C_3$) zusammenfassen:**
$$
\ln(y) = \frac{x^3}{3} + C_3
$$
**Umformen:**
$$
\ln(y) = \frac{x^3}{3} + C_3 \quad / e^{(\ldots)}
$$
$$
y = e^{\frac{x^3}{3} + C_3}
$$
$$
y = e^{\frac{x^3}{3}} \cdot e^{C_3}
$$
**Da $e^{C_3}$ auch nur eine Konstante ist, kann sie als $C$ zusammengefasst werden:**
$$
y = e^{\frac{x^3}{3}} \cdot C
$$

### Probe

**Annahme:**
$$
y(0) = 4 
$$

**Einsetzen von $4$ als $C$:**
$$
y = 4 \cdot e^{\frac{x^3}{3}}
$$
$$
y' = 4 \cdot e^{\frac{x^3}{3}} \cdot x^2
$$
$$
y' = y \cdot x^2
$$