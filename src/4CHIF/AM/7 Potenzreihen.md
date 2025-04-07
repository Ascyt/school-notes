# Einführung
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

# Beispiel: 3.17

$$
\sum_{n=1}^{\infty} \frac{x^n}{n} = \sum_{n=1}^{\infty} \frac{1}{n}\cdot x^n
$$
$$
c_n = \frac{1}{n}
$$

$$
\lim_{n \rarr\infty}\left|\frac{c_n}{c_n+1}\right|=\lim_{n\rarr \infty}\frac{\frac{1}{n}}{\frac{1}{n+1}}=\frac{n+1}{n}\Rarr1=r
$$

$$
x = 1 \quad \sum_{n=1}^{\infty} \frac{1}{n} \rarr \text{divergent}
$$
$$
x = -1 \quad \sum_{n=1}^{\infty} \xrightarrow{\text{Leibnitz}} \text{konvergent}
$$

$$
[-1;1[ \quad \text{Konvergenzbereich!}
$$

# Beispiel: 3.18a

$$
\sum_{n=1}^{\infty} x^n
$$
$$
c_n = 1 \quad \Rarr \quad r=1
$$

$$
x=1 \quad \sum_{n=1}^{\infty}1 \rarr \text{divergent}
$$
$$
x=-1 \quad \sum_{n=1}^{\infty} (-1)^n \rarr \text{divergent}
$$

$$
]-1;1[ \quad \text{Konvergenzbereich}
$$

# Beispiel: 3.18b

$$
\sum_{n=1}^{\infty} \frac{x^n}{n!} 
$$
$$
c_0 = \frac{1}{n!}
$$
$$
\lim_{n\rarr\infty}\left|\frac{\frac{1}{n!}}{\frac{1}{(n+1)!}}\right|=\frac{(n+1)!}{n!}=n+1\rarr\infty
$$