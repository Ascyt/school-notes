# Test Sommersemester

## 1

### Angabe
Auf dem Boden eines 2m tiefen Wasserbeckens liegt eine Münze. Berechne um wieviel verschoben sie erscheint, wenn man unter einem Winkel von 50° gegen das Lot zur Wasseroberfläche blickt und die Brechzahl des Wassers 1,4 beträgt.

### Lösung
$$
\sin(\alpha)\cdot n_1 = \sin(\beta)\cdot n_2
$$
Da $n_1 = 1$:
$$
\sin(\alpha) = \sin(\beta) \cdot n_2 \quad / \div n_2
$$
$$
\frac{\sin(\alpha)}{n_2} = \sin(\beta) \quad / \arcsin(\ldots)
$$
$$
\arcsin(\frac{\sin(\alpha)}{n_2}) = \beta
$$
Einsetzen der Variablen:
$$
\arcsin(\frac{\sin(50\degree)}{1,4}) = \beta
$$
Berechnen:
```
asin(sin(50/180*pi)/1.4)/pi*180 =33.173393969833796
```
Verschiebung:
$$
s = d \cdot (\tan(\alpha)-\tan(\beta))
$$
Hier:
$$
s = 2m \cdot (\tan(50\degree)-\tan(33.17\degree))
$$
Berechnen:
```
2*(tan(50/180*pi)-tan(33.173393969833796/180*pi)) =1.0760698753684785
```
**Lösung:** 1.076m

## 2
### Angabe
Ein Strichgitter wird mit Licht der Wellenlänge 800nm ($\lambda$) beleuchtet. Auf einem Schirm der 7m ($L$) vom Gitter entfernt ist, haben die Beugungsmaxima 1. Ordnung ($k$) einen Abstand von 5cm ($x$) zu einander. Berechne die Gitterkonstante ($d$).

### Lösung
$$
\tan(\theta)=\frac{x}{\lambda \cdot L} \quad \arctan(\ldots)
$$

$$
\theta=\arctan\left(\frac{x}{\lambda \cdot L}\right)
$$
Einsetzen:
$$
\theta=\arctan(\frac{5cm}{0.0000008m \cdot 7m})
$$
Berechnen:
```
atan(5/(0.0000008*7))/pi*180 =89.99993582872696 
```

$$
\sin(\theta) \cdot d = \lambda \cdot k
$$
Da $k=1$:
$$
\sin(\theta) \cdot d = \lambda \quad / \div d
$$
$$
\sin(\theta)=\frac{\lambda}{d} \quad / \ldots^{-1}
$$
$$
\frac{1}{\sin(\theta)}=\frac{d}{\lambda} \quad / \cdot \lambda
$$
$$
\frac{\lambda}{\sin(\theta)}=d
$$
Einsetzen:
$$
\frac{0.0000008m}{\sin(89.99993582872696\degree)} = d
$$
Berechnen:
```
0.0000008/sin(89.99993582872696/180*pi) =8.000000000005017e-07
```

**Lösung:** $d = 8\cdot 10^{-7}m = 800nm$