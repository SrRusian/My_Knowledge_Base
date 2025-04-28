PRACTICA INSTALACION METASPLOITABLE VM
- Necesitaremos instalar [VirtualBox](https://www.kali.org/docs/virtualization/install-virtualbox-host/) siguiendo las instrucciones
- Si te da error de kernel haz el siguiente paso, sino omítelo:
- Instalamos los Header Kernels en este caso la versión 6.6.15 (Mi Mas Actual)

**_sudo apt-get install linux-headers-6.6.15-amd64_**

- Y [METASPLOITABLE VM](https://www.rapid7.com/resources/test-metasploit-with-metasploitable/) que es un ZIP
- Extraemos el ZIP y reiniciamos la maquina
- Abrimos VirtualBox
- Creamos una Nueva Máquina Virtual llamada Metasploitable, Type Linux, Versión Ubuntu 64Bit y en Virtual Hard Disk File>Add seleccionamos él .vmdk de nuestros archivos recién extraídos de Metasploitable2
- Abrimos File>Tools>Network Manager>Host-only Networks>Create
- En los ajustes de la VM acabada de crear, en Network seleccionamos Host-only Adapter y ejecutamos la maquina
- El usuario y contraseña es **msfadmin**
- Ejecutamos **ifconfig** y pegamos la IP de la maquina en nuestro navegador

