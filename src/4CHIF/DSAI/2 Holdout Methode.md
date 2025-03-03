# Überblick
> Niemals auf Daten testen, auf denen man trainiert hat!!

- **Train-Test-Split** `[################# 80% Train ##################|@@@ 20% Test @@@]`
  - Immer zufällig!
  - Im Test sollen Sachen von jeder Klasse drinnen sein, wenn man z.B. Blutkrebs erkennen will und 95% gesunde Menschen im Dataset sind, will man den Blutkrebs natürlich auch testen können
  - Auch möglich: in 3 Splitten, z.B. 70% Train, 15% Val, 15% Test
- **Cross-Validation**: z.B. in 5 Splitten, 4/5 werden Pro Schritt benutzt, einer wird Weggelassen, jeweils pro Schritt etwas anderes