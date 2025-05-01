## LABORATORIO 1 (INSTALACION DE METASPLOITABLE VM)
- Necesitaremos instalar [VirtualBox](https://www.kali.org/docs/virtualization/install-virtualbox-host/) siguiendo las instrucciones
- Si te da error de kernel haz el siguiente paso, sino omítelo:
- Instalamos los Header Kernels en este caso la versión 6.6.15 (Mi Mas Actual)  
**_sudo apt-get install linux-headers-6.6.15-amd64_**

- Y [METASPLOITABLE VM](https://www.rapid7.com/products/metasploit/metasploitable/) que es un ZIP
- Extraemos el ZIP y reiniciamos la maquina
- Abrimos VirtualBox
- Creamos una Nueva Máquina Virtual llamada Metasploitable, Type Linux, Versión Ubuntu 64Bit y en Virtual Hard Disk File>Add seleccionamos él .vmdk de nuestros archivos recién extraídos de Metasploitable2
- Abrimos File>Tools>Network Manager>Host-only Networks>Create
- En los ajustes de la VM acabada de crear, en Network seleccionamos Host-only Adapter y ejecutamos la maquina
- El usuario y contraseña es **msfadmin**
- Ejecutamos **ifconfig** y pegamos la IP de la maquina en nuestro navegador

## LABORATORIO 2 (NIKTO-MetasploitableVM)
- Ejecutada nuestra VM Metasploitable en KALI y loggeado obtenemos su ip con **_ifconfig_** y la ingresamos en el navegador deberíamos ver su índex **metasploitable2**
- Minimizamos la VM y abrimos una terminal en Kali y escaneamos la ip con nikto:  
**_nikto -h &lt;IP_de_la_VM&gt;_**
- Si lo queremos exportar:  
**_nikto -h &lt;IP_de_la_VM&gt; -output &lt;ubicación guardada&gt; -Format html_**
- Lo buscamos en la ubicación asignada y abrimos con el navegador
- Y podremos ver el informe en un formato HTML
- Si queremos escanear vulnerabilidades exclusivamente para SQL Injection la opción 9 de Tuning nos ayudara (para ver opciones ejecutar **_nikto_**):  
**_nikto -h &lt;IP_de_la_VM&gt; -Tuning 9_**

También podemos escanear una de las aplicaciones web de Metasploitable que es DVWA: **_nikto -h http://&lt;IP_de_la_VM&gt;/dvwa/ -Tuning 9_**

## LABORATORIO 3 (OWASP ZAP-MetasploitableVM)
- Si no lo tienes debes descargarlo e instalarlo
- Lo abrimos desde las aplicaciones instaladas
- Elegimos **Automated Scan,** ponemos la URL y **Attack**
- Comenzará a escanear y en **Alerts** podremos ver la lista de las vulnerabilidades que se van encontrando
- Visto esto detenemos el escaneo para evitar el tráfico de datos
