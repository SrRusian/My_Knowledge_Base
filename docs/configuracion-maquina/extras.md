## COMODIDAD

### BLUETOOTH

- Esto hará que el servicio bluetooth se inicie siempre que el sistema se encienda  
    **_sudo systemctl enable bluetooth_**
- Agregaremos el comando de inicio al archivo .bashrc  
    **_nano ~/.bashrc_**
- Agregamos la línea  
    **_sudo systemctl start bluetooth_**

### GESTOR DE RECURSOS

En nuestro administrador o cajón de aplicaciones podemos encontrar la aplicación **Extensions** donde ahí mismo podremos activar el monitor de recursos

### TEMPLATES

Al cambiar a un nuevo entorno grafico desde kali a GNOME no tendremos el acceso directo a la creación rápida de documentos con clic derecho, sin embargo podremos usar las Templates que nos ayudaran a copiar un poco esta funcionalidad.

- Si no tenemos la carpeta Templates la creamos con  
    **_mkdir ~/Templates_**
- Ahora crearemos un archivo vació de un ejecutable  
    **_nano ~/Templates/NuevoEjecutable.sh_**
- Agregamos un texto DEFAULT: Este es un script ejecutable
- Ahora de un Lanzador  
    **_nano ~/Templates/NuevoLanzador.desktop_**
- Para este debemos agregar sus valores DEFAULT:  
    _\[Desktop Entry\]_

_Version=1.0_

_Type=Application_

_Name=NuevoLanzador_

_Exec=/ruta/al/ejecutable_

_Icon=/ruta/al/icono.png_

_Terminal=false_

_Categories=Utility;_

- Si es necesario les damos permisos de ejecución  
    **_chmod +x ~/Templates/NuevoEjecutable.sh  
    chmod +x ~/Templates/NuevoLanzador.desktop_**
- También podemos hacer el mismo procedimiento para un **nuevoDocumento.txt**
