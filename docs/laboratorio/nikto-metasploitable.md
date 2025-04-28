PRACTICA (NIKTO-Metasploitable)

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

PRACTICA (OWASP ZAP-Metasploitable)

- Si no lo tienes debes descargarlo e instalarlo
- Lo abrimos desde las aplicaciones instaladas
- Elegimos **Automated Scan,** ponemos la URL y **Attack**
- Comenzará a escanear y en **Alerts** podremos ver la lista de las vulnerabilidades que se van encontrando
- Visto esto detenemos el escaneo para evitar el tráfico de datos
