EJERCICIO TRANSFERENCIA DE ARCHIVOS

1. En nuestra maquina Windows crearemos una carpeta en el escritorio en mi caso llamada **tomount**
2. Le damos clic derecho, propiedades, compartiendo y en compartir
3. Agregaremos una nueva entrada/usuario ahí mismo y seleccionaremos la opción **Everyone (Cualquiera)** y le damos permisos de **Leer/Escribir**
4. Guardamos los cambios en Share y veremos que nos da una dirección o ruta de la carpeta compartida.

**Dirección carpeta Windows:**

1. Ahora nos iremos a la maquina Kali y abrimos la terminal para instalar los servicios básicos de internet: **_apt-get install cifs-utils_**
2. Ahora crearemos otra carpeta llamada **winmount** en nuestro escritorio en Kali
3. En la terminal antes abierta ejecutamos: **mount.cifs //&lt;IP MAQUINA WINDOWS&gt;/&lt;Pegaremos la ruta desde la parte Users&gt; &lt;Ruta de la carpeta en Kali&gt; -o user=&lt;usuario Windows&gt;,uid=&lt;usuario kali&gt;(**Este último para poder tener acceso a modificar la carpeta)
4. En mi caso quedaría de la siguiente forma:

**_mount.cifs //192.168.0.90/Users/SrRusian/Desktop/tomount /home/rusian/Desktop/winmount -o user=SrRusian,uid=rusian_**

(En vez de escribir la dirección de la carpeta en Kali la podemos arrastrar directamente a la terminal y se agregara la dirección sola)

1. Nos pedirá la contraseña de la maquina Windows y la vamos a ingresar
2. Hecho esto podemos usar la carpeta para agregar documentos y se compartirán entre las 2 máquinas, puedes probar creando un archivo de texto desde kali y lo debemos ver en la carpeta de Windows y viceversa.

(Es necesario volver a ejecutar el comando anterior cada vez que nuestra maquina Kali se apague/suspenda)
