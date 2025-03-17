|**Klassifikation**|**Regression**|
|-|-|
|Accuracy|Mean Absolute Error (MAE)|
||Mean Squared Error|
|Recall||
|Precision||
|F1-Score||

# Confusion Matrix
|true\\predicted|**negative**|**positive**
|-|-|-|
|**negative**|true negative|false positive
|**positive**|false negative|true positive|

Beispiel: Ich trainier ein Model, welches Lungenkrebs vorhersagen soll. 

|true\\predicted|**Kein Krebs**|**Krebs**|$\sum$|
|-|-|-|-|
|**Kein Krebs**|79|1|80|
|**Krebs**|10|10|20|
$\sum$|89|11|100

Accuracy ist 89%, aber unser Modell ist nicht gut! Nur bei 50% der Menschen die wirklich Krebs haben wird er erkennt (=**Recall**).

- **Accuracy** [89%]: Wieviele von meinen Predicions sind insgesamt richtig? 
- **Recall** [50%]: Wieviele von den echten positiven erwische ich?
- **Precision** [91%]: Wieviele von meinen vorhergesagten positiven sind richtig?
- **F1-Score** [65%]: Harmonisches Mittel von Recall und Precision: $2 \cdot \frac{\text{[Recall]}\cdot\text{[Precision]}}{\text{[Recall]}+\text{[Precision]}}$