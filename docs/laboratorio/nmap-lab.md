### LABORATORIO 1

1. En la terminal de Kali ejecutamos (nmap &lt;ip objetivo&gt;) en mi caso sería

**_nmap 192.168.0.90_**

1. Obtendremos resultado del escaneo de la ip objetivo
2. Para escaneo de ip en un rango ejecutaremos **_nmap 192.168.0.1-254_** (Toma en cuenta que escanearas todas las ip dentro del rango por lo que tardara un poco más)
3. El ejemplo para escanear una red seria **_nmap 192.168.0.0/24_**
4. Para escanear un puerto: **_nmap -p &lt;puerto&gt; &lt;ip objetivo&gt;_**
5. Para escanear un rango de puertos: nmap -p &lt;rango&gt; &lt;ip objetivo&gt;

(**_nmap -p 1-100 192.168.0.90_**)

1. Escaneo rápido: **_nmap -F &lt;ip objetivo&gt;_**
2. Para hacer un escaneo de todos los puertos: **_nmap -p- &lt;ip objetivo&gt;_**

(Esto escaneara todos los puertos del objetivo por lo que tardara demasiado en terminar ya que son un total de 65535 puertos)

1. Ver los scripts de nmap a poder ejecutar: **_cd /usr/share/nmap/scripts/_**

### LABORATORIO 2

1. Hay que recordar que podemos ver el manual con:

**nmap --help**

1. Si quiero saber que hosts están en mi red sin comenzar un escaneo usamos (-sn solo es útil para dispositivos que tienen activado el ping):

**nmap -sn 192.168.0.0/24**

1. Con (**ip a)** veremos de forma resumida la ip de nuestra maquina
2. Ya conociendo la ip de nuestra maquina podemos excluirla con el comando (**–exclude**) para que no aparezca en el escaneo**:**

**nmap 192.168.0.0/24 --exclude 192.168.0.135 (ip de mi maquina)**

1. Al hacer un escaneo con nmap si no especificamos los puertos a escanear con el comando (**\-p)** haremos solo un escaneo de los 1000 puertos más comunes, pero en este caso lo usaremos para agilizar el proceso con unos pocos puertos comunes de ejemplo (21,22,80,443,445,8080) y al final agregaremos el comando **(-Pn)** para especificar que haga el escaneo de puertos a pesar de que el host no responda al ping inicial.

**nmap -p 21,22,80,443,445,8080 192.168.0.0/24 --exclude 192.168.0.135 -Pn --open** (Para mostrar solo los puertos abiertos)

1. s
