# GUI

Esto cambiara la interfaz default de kali por algo más diseñado y bonito pero sacrificaremos unas pocas cosas de kali que aunque podemos acceder a ellas debemos hacer unas configuraciones según sea necesario después.

1. Actualizar el sistema  
    **_sudo apt update && sudo apt upgrade -y_**
2. Instalamos GNOME  
    **_sudo apt install kali-desktop-gnome -y_**
3. Reiniciamos el SO  
    **_sudo reboot_**
4. Elegir GDM como nuestro nuevo gestor de pantalla justo al final de la instalación o con el comando  
    **_sudo dpkg-reconfigure lightdm_**
