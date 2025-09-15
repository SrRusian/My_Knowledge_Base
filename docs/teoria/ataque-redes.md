# 02 - Ataques a Redes y WiFi 🌐

> **Resumen:** Técnicas y herramientas clave para atacar redes cableadas e inalámbricas, con ejemplos prácticos y laboratorios guiados.

---

## 1. Análisis de Tráfico con Wireshark

Wireshark es una herramienta esencial para analizar protocolos, depurar problemas de red y comprender el tráfico. Utiliza filtros de captura y visualización para identificar patrones y anomalías.

![EJEMPLO DE 3-WAY TCP HANDSHAKE](../assets/image38.png)

> [Práctica: Interacción básica con Wireshark](../laboratorio/wireshark-lab.md#laboratorio-1-interaccion-basica)

---

## 2. Exploración y Escaneo de Puertos

El escaneo de puertos permite identificar servicios abiertos (TCP/UDP) en los hosts de una red.

**Métodos comunes:**

- **Connect:** Completa el 3-Way Handshake TCP para verificar puertos abiertos.
- **SYN/Stealth:** Envía paquetes SYN sin completar el handshake, más sigiloso.
- **UDP:** Envía paquetes sin esperar respuesta, más lento y menos fiable.

Nmap es la herramienta estándar para escaneo y descubrimiento de hosts, puertos y servicios.

> Considera el impacto en la red: escanear todos los puertos de una red grande puede generar mucho tráfico.

> [Práctica: Escaneo local de puertos con Nmap](../laboratorio/nmap-lab.md#laboratorio-1-escaneo-local-de-puertos)

---

## 3. Ataques Man-in-the-Middle (MITM)

Permiten interceptar, modificar o redirigir el tráfico entre dos partes.

**Ejemplo:**

- Circunstancia normal:
  ![EJEMPLO CIRCUNSTANCIA NORMAL](../assets/image42.png)
- Conexión comprometida (ARP spoofed):
  ![EJEMPLO CONEXION COMPROMETIDA](../assets/image43.png)

> [Práctica: MITM con Ettercap](../laboratorio/ettercap-lab.md#laboratorio-1-man-in-the-middle)

---

### 3.1 Suplantación de DNS (DNS Spoofing)

Manipula respuestas DNS para redirigir usuarios a sitios maliciosos (phishing, robo de credenciales, malware).

> [Práctica: DNS Spoofing](../laboratorio/ettercap-lab.md#laboratorio-2-dns-spoofing)

---

## 4. Ataques de Denegación de Servicio (DoS y DDoS)

Inundan un sistema o red con tráfico malicioso para hacerlos inaccesibles.

- **DoS:** Un solo dispositivo ataca al objetivo.
- **DDoS:** Múltiples dispositivos (botnet) coordinan el ataque.

**Tipos de ataques DDoS:**

- Basados en volumen (SYN flood, UDP flood, ICMP flood)
- Basados en protocolos (amplificación DNS, NTP, etc.)
- A la capa de aplicación (HTTP flood, SQLi, XSS, etc.)

---

## 5. Ataques a Redes Inalámbricas (WiFi)

Comprometen la seguridad de redes WiFi para obtener acceso no autorizado o interceptar información.

**Comparación de protocolos WPA:**
![TABLA DE COMPARACION](../assets/image54.png)

### 5.1 Herramientas de Hacking WiFi

- **airmon-ng:** Modo monitor para tarjetas inalámbricas
- **airodump-ng:** Captura tráfico y muestra información de redes
- **aireplay-ng:** Inyección de paquetes (WEP)
- **Fern WiFi:** Cracking de claves WEP/WPA/WPS y otros ataques
- **Reaver:** Fuerza bruta contra PIN WPS para obtener contraseñas WPA/WPA2

---

### 5.2 WEP Cracking

WEP es un protocolo obsoleto y vulnerable. Permite interceptar y descifrar tráfico fácilmente.

> [Práctica: WEP Crack con Fern WiFi](../laboratorio/ataques-redes-inalambricas-lab.md#laboratorio-1-fern-wifi-cracker)

---

### 5.3 WPA y WPA2 Cracking

WPA mejora la seguridad sobre WEP, pero versiones tempranas son vulnerables a fuerza bruta. WPA2 es el estándar actual, aunque existen ataques como KRACK.

> [Práctica: Fuerza bruta WPA & WPA2](../laboratorio/ataques-redes-inalambricas-lab.md#laboratorio-2-fuerza-bruta)

---

### 5.4 WPS Cracking

WPS simplifica la conexión, pero es inseguro y vulnerable a ataques de PIN y fuerza bruta. Se recomienda desactivarlo.

> [Práctica: WPS Crack](../laboratorio/ataques-redes-inalambricas-lab.md#laboratorio-3-wps-crack)
