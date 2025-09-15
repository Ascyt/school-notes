# Drei Säulen der Sicherheit

## 1. Transportsicherheit
Der jenige, der uns kontaktiert ist der, den ich kontaktieren möchte, und es kann niemand meine Pakete mitlesen. 

Mittel: **TLS** bzw. HTTPS

Zertifikat ist über's Betriebsystem. Problem ist: Java ist Betriebsystemunabhängig. Also: Java hat einen Keystore, und dort müssen die Schlüssel drinnen sein. In der `application.properties` muss stehen, wo die gültigen Zertifikate liegen. 

1. Zertifikat exportieren
2. `application.properties`
3. Key in den Java-Keystore importieren
4. Server starten

## 2. Identity und Authentifikation

- User
- Credentials: Passwort, Passkey, ID-Card, Biometrisch, Secret (App)

## 3. Autorisierung

Identity and Access Management:
- User
- Anwendung
- Credentials
- Berechtigungen


