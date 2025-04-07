$$
f(x)=\sum_{n=0}^{\infty} c_n\cdot x^n=c_0+c_1\cdot x+c_2\cdot x^2+c_3\cdot x^3
$$

**Konvergenzradius**: Intervall für $x$ sodass Reihe konvergiert

$$
\lim_{n \rarr \infty} |\frac{c_n}{c_n+1}|=r
$$
$$
|x| < r \quad \text{Rand überprüfen}
$$

## Beispiel: 3.17

$$
\sum_{n=1}^{\infty} \frac{x^n}{n} = \sum_{n=1}^{\infty} \frac{1}{n}\cdot x^n
$$
$$
c_n = \frac{1}{n}
$$

$$
\lim_{n \rarr\infty}|\frac{c_n}{c_n+1}=\lim_{n\rarr \infty}+\frac{\frac{1}{n}}{\frac{1}{n+1}}=\frac{n+1}{n}\Rarr1=r
$$

$$
x = 1 \quad \sum_{n=1}^{\infty} \frac{1}{n} \Rarr \text{divergent}
$$
$$
x = -1 \quad \sum_{n=1}^{\infty} \xrightarrow{\text{Leibnitz}} \text{konvergent}
$$

$$
[-1;1[ \quad \text{Konvergenzbereich!}
$$