# IoT-Architektur

https://www.itransition.com/iot/architecture

![architektur](image.png)

![architektur](image-1.png)

Arten von IoT:
- **Consumer IoT**: Persönliche Geräte und Smart Home Gadgets für individuellen Nutzen
- **Commercial IoT**: Geräte in Buisness-Kontexten, zB Handel, Medizin, Finanzen, um Effizienz zu erhöhen
- **Industrial IoT** (IIoT): Verbundene Maschinen, Sensoren, und andere System in der Fertigung, Energiebranche und Logistikbranche
- **Infrastructure IoT**: Großflächige System um Städte, Transport und Energieversorgung zu unterstützen

# IoT-Protokolle (MQTT)

Verschiedene Protokolle:
- **MQTT**: Leichtgewichtig. Über TCP/IP für Datensammlung von hardwarenahen Geräten
- **CoAP**: Alternative zu MQTT
- **HTTP(S)**: Für Web-basierte IoTs, ist aber schwergewichtiger als MQTT
- **AMQP**: Wird in industriellen IoT genutzt
- **DDS**: Gute Performance und gut für Echtzeit Datenaustausch wenn Risiko hoch ist

https://www.elektronik-kompendium.de/sites/net/2204051.htm

MQTT Besonderheiten:
- Verbindung bleibt auch bestehen, wenn keine Daten übertragen werden ("zustandhaltenes Protokoll")
- Leichtgewichtig, kaum Overhead
- Abgebrochene Verbindungen können wieder aufgenommen/fortgesetzt werden
- Unterschiedliche Quality of Service (QoS) Level mit verschiedenen Zuverlässigkeitsstufen 

![mqtt architektur](image-2.png)

- **MQTT-Server** (Message Broker): Zentraler Server, der die Nachrichten von ein oder mehreren Publishern entgegennimmt und an Subscriber weiterleitet
- **MQTT-Clients** (Publisher und Subscriber): Publisher ist oft ein Sensor, muss aber nicht sein. Subscriber macht irgendwas mit mit der Nachricht vom Publisher, zB je nach Werten irgendwas schalten

![mqtt topics](image-3.png)

**Topics**: Wie finden Publisher und Subscriber zu einander? Die Subscriber abonnieren "Topics" vom Broker, welche aussagen, welche Nachricht die Subscriber erhalten sollen. Der Publisher muss Inhalt und Topic beim Versand der Nachricht festlegen. 

**Quality of Service** (QoS): 3 Stufen für die Zuverlässigkeit der Zustellung
- **Level 0**: *at most once, unreliable* / *fire and forget*: Null Zuverlässigkeit, die Zustellung wird nicht garantiert
- **Level 1**: *at least once*: Die Nachricht kommt mindestens einmal (oder auch mehrmals) beim Broker an
- **Level 2**: *exactly once*: Die Nachricht kommt garantiert nur einmal beim Broker an. Ist die verlässlichste Variant, aber für Performance und Netzlast aufwendig, langsam und teuer

![qos level 0](image-4.png)
![qos level 1](image-5.png)
![qos level 2](image-6.png)

## HiveMQ

MQTT-Client Software. 

```xml
    <dependencies>
        <dependency>
            <groupId>com.hivemq</groupId>
            <artifactId>hivemq-mqtt-client</artifactId>
            <version>1.3.3</version>
        </dependency>
    </dependencies>
```

Client erstellen:
```java
    Mqtt3AsyncClient client = MqttClient.builder()
        .useMqttVersion3()
        .identifier("my-mqtt-client-id")
        .serverHost("localhost")
        .serverPort(1883)
        .useSslWithDefaultConfig()
        .buildAsync();
```

Mit dem Broker verbinden:
```java
    client.connectWith()
        .simpleAuth()
            .username("my-user")
            .password("my-password".getBytes())
            .applySimpleAuth()
        .send()
        .whenComplete((connAck, throwable) -> {
            if (throwable != null) {
                // handle failure
            } else {
                // setup subscribes or start publishing
            }
        });
```

Topic abonnieren:
```java
    client.subscribeWith()
        .topicFilter("the/topic")
        .callback(publish -> {
            // Process the received message
        })
        .send()
        .whenComplete((subAck, throwable) -> {
            if (throwable != null) {
                // Handle failure to subscribe
            } else {
                // Handle successful subscription, e.g. logging or incrementing a metric
            }
        });
```

Zu nen Topic was publishen:
```java
    client.publishWith()
        .topic("the/topic")
        .payload("hello world".getBytes())
        .send()
        .whenComplete((publish, throwable) -> {
            if (throwable != null) {
                // handle failure to publish
            } else {
                // handle successful publish, e.g. logging or incrementing a metric
            }
        });
```

## Weitere Tools

**MQTT-Explorer**: MQTT-Client, mit dem man Übersicht über ein Topic bekommen kann

![mqtt explorer](image-7.png)

**Arduino**, **PlatformIO**, etc.

