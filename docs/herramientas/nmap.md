## INTRODUCCION A NMAP

Nmap es una herramienta de código abierto utilizada para escanear redes y descubrir dispositivos, puertos abiertos y servicios en una red permitiendo evaluar mediante diversas técnicas de escaneo, como escaneo de puertos TCP y UDP, detección de sistemas operativos y detección de servicios.

### ¿Para qué sirve?

Nmap utiliza paquetes de IP sin procesar para determinar:

- Hosts disponibles en la red
- Servicios (nombre y versión de la aplicación)
- Sistemas operativos (y versiones)
- Tipos de filtros de paquetes/cortafuegos en uso
- Estado de los puertos de hosts

### SINTAXIS BASICA GENERAL

**#nmap \[tipo de escaneo\] \[opciones\] {objetivos}**

### OPCIONES COMUNES DE NMAP

| OPCION | NOMBRE | DESCRIPCION |
| --- | --- | --- |
| \-sS | Escaneo TCP SYN | La forma predeterminada y más rápida de escanear miles de puertos. Escaneo semiabierto |
| \-sT | Escaneo de conexión TCP | La llamada al sistema completa las conexiones a los puertos de destino abiertos en lugar de realizar el reinicio a medio abrir que hace el escaneo SYN. |
| \-sU | Escaneo UDP | El escaneo UDP funciona enviando un paquete UDP a cada puerto objetivo. |
| \-sN | Escaneo nulo TCP | Esta opción envía paquetes TCP sin ninguna de las banderas TCP establecidas en el paquete. Si el escaneo devuelve un paquete RST significa que el puerto está cerrado, sin embargo, si no devuelve nada está filtrado o abierto. |
| \-sn | Ping/Sweep | Solo envía paquetes ping al objetivo, sin escaneo de puertos. Esto es útil si necesita determinar que hosts están en las inmediaciones, pero no quiere escanear todavía. |
| \-v | Aumentar verbosidad | Esto le dará información extra en los datos emitidos por nmap. |
| \-T4 | Plantilla de tiempos | 0:paranoico, 1:escurridizo, 2:educado, 3:normal, 4:agresivo, 5:demente |
| \-sV | Enumerar | Sondear activamente los puertos abiertos para intentar determinar qué servicio y versión están ejecutando. |
| \-P | Puerto | Lista separada por comas de los puertos a escanear. |
| \-oG | Salida Grepable | Redirigir la salida a un archivo de texto. |
| \-F | Modo rápido | En lugar de escanear tantos puertos como hace el escaneo por defecto, el escaneo rápido solo escanea unos pocos. |
| \-O | Comprobar Sistema operativo | Nmap intenta determinar el tipo de sistema operativo. |
| \-A | Comprobar Sistema Operativo + | Detectar sistemas operativos y servicios. |
| \-Pn | Omitir descubrimiento | Asumir que el host esta activo, saltándose así la fase de descubrimiento del host. |
| \-script | Utilizar script | Este parámetro recibe una lista separada por comas de archivos, categorías y directorios que contiene script de NSE. |
