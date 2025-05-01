## LABORATORIO 1 (INSTALACION DE WORDPRESS VM)

**Para esta prueba usaremos un entorno seguro, descargaremos la VM WordPress** [**ISO**](https://www.turnkeylinux.org/wordpress)**.**

- Abrimos VirtualBox y Agregamos una nueva máquina llamada WordPress, elegimos la ISO descargada, el almacenamiento de 8gb(opcional), la creamos e iniciamos.
- Elegimos instalar en el disco y dejamos todas las opciones por defecto, aceptamos y reiniciamos la VM.
- Al reiniciar elegiremos las contraseñas de acceso a decisión propia, recomiendo usar las mismas en todas para las pruebas posteriores
- Podemos hacer el paso de agregar la API Key, en mi caso lo hare de una vez pero es opcional
- Finalmente configurada la VM se nos mostrara las direcciones ip para poder acceder a ellas desde nuestro navegador, así tendríamos la instalación correctamente hecha.(En ajustes de la VM debemos tener la configuración de network adapter como bridge o puente e iniciarla de esa forma para poder acceder a las ip)
![RESULTADO FINAL DE LA MAQUINA CONFIGURADA Y ACTIVA](../assets/image69.png)

## LABORATORIO 2 (OBTENCION DE CLAVES CON FUERZA BRUTA)

- Actualizar wpscan (wpscan --update)
- Escaneamos la ip de WordPress de la VM (wpscan --url 192.168.1.47)
- Podemos agregar el (-e u) para enumerar a los usuarios (wpscan --url 192.168.1.47 -e u)
![ENUMERACION DE USUARIOS](../assets/image70.png)
- Obtenemos que hay un usuario administrador
- Con el comando (--help) podemos ver sus opciones a detalle
- Con el nombre de usuario obtenido podemos ejecutar un ataque de fuerza bruta con un diccionario de palabras que tengamos, ocuparemos especificar la ruta del diccionario y el usuario a atacar
- (wpscan --url 192.168.1.47 -P /Desktop/wordlist.txt -U admin)
- Si nuestro diccionario es fuerte y tiene muchas contraseñas y una logra coincidir podremos obtener la contraseña de administrador del sitio de WordPress
![OBTENCION DE LA CONTRASENA DEL USUARIO ADMIN](../assets/image71.png)
- Esta misma prueba y muchas más opciones de WPScan pueden ser aplicadas en sitios web, sin embargo esto no es recomendable hacerlo aparte de ser ilegal
