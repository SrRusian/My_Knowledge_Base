### HERRAMIENTAS

#### BURPSUITE PROFESSIONAL

- Se necesitará instalar JAVA 21 JDK para esta instalación y elegirlo como “Por defecto”
- Descargar la última versión de [BurpSuite Professional](https://portswigger.net/burp/releases/professional-community-2024-7-6)
- Descargar el [LOADER](https://drive.google.com/file/d/1W44h3l1aYtbiDiXW5dMxN0Anw5IJYGou/view?usp=sharing) la contraseña es 1321 o desde su [Repositorio](https://github.com/gt0day/Burp-Suite)
- Ya instalado JAVA debemos tener el LOADER y el Burpsuite Professional JAR en el mismo directorio
- Ejecutamos en la Terminal (Agregamos el nombre exacto del loader)  
    java -jar LOADER.jar
- Se nos muestra esta pantalla
- En el Loader Command debemos modificar al final el nombre el de nuestra versión de Burpsuite Pro pues este comando ejecutara nuestro archivo Burpsuite Pro descargado
- Si todo esta correcto al correr el comando en **Run** debería mostrar que se abre burpsuite Pro pidiendo una llave de licencia donde debemos pegar todo el cuadro de texto que nos da el Loader en su cuadro License
- Damos Next en Burpsuite y Seleccionamos Manual Activation
- La Request que nos da en el punto 2 la copiamos y la pegamos en la sección Action Request de nuestro Loader
- Y en cuanto la peguemos nos dará en el Loader el texto de Activation Response que copiaremos y pegaremos en Response de Burpsuite que es el punto 3 y daremos Next
- Si todo fue correcto tendremos activado Burpsuite Pro y lo podremos usar solo a través del loader ya sin hacer todos los pasos anteriores.
- Si se quiere simplificar esto y aplicarlo como si estuviera instalado de forma normal debemos hacer unas configuraciones extras a continuación.
  - Crearemos una carpeta y dentro pondremos nuestro burpsuite y loader
  - Abriremos una terminal dentro de la carpeta donde están los documentos y ejecutaremos  
        nano launch_burpsuite.sh
  - Y dentro del documento pegaremos completo el Loader Command que tiene ya el LOADER al darle RUN
  - Deberíamos tener algo como por ejemplo:
  - Esto abrirá una terminal, navegara a la ubicación donde están nuestros documentos y ejecutara el código del Loader directo
  - Ahora ya creado le daremos privilegios  
        **_chmod +x ~/Desktop/launch_burpsuite.sh_**
  - Ahora crearemos un Lanzador.dektop:  
        nano ~/.local/share/applications/burpsuite-launcher.desktop
  - Agregaremos y guardaremos:  
        **\[Desktop Entry\]**

**Version=1.0**

**Name=BurpSuite Pro Launcher**

**Exec=/home/rusian/Desktop/launch_burpsuite.sh**

**Icon=/ruta/completa/hacia/icono.png # Puedes elegir un icono si tienes uno disponible**

**Type=Application**

**Categories=Development;Security;**

**Terminal=false**

- Le damos ahora privilegios  
    **_chmod +x ~/.local/share/applications/burpsuite-launcher.desktop_**
- Actualizamos el cache de las aplicaciones  
    **update-desktop-database ~/.local/share/applications**
- Ahora al buscarla en las aplicaciones debería aparecer y al ejecutarla debería abrirse sin problema alguno
- Podemos borrar otras versiones de burpsuite si queremos y si movemos la ubicación de nuestra carpeta debemos modificar también las rutas de los 2 documentos sh y desktop.
