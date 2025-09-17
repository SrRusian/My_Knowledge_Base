# Introducción a Amazon EC2 y el cómputo en la nube

El cómputo en la nube es la capacidad de procesar datos y ejecutar aplicaciones usando recursos remotos, sin necesidad de comprar ni mantener hardware físico propio. En AWS, esto se logra principalmente a través de Amazon Elastic Compute Cloud (EC2).

## ¿Qué es Amazon EC2?

Amazon EC2 es un servicio que te permite crear y gestionar máquinas virtuales (llamadas instancias) bajo demanda. Puedes lanzar, detener, escalar y eliminar instancias según tus necesidades, pagando solo por el tiempo que las usas.

### Ventajas frente a servidores tradicionales

- **Flexibilidad:** Lanza instancias en minutos, elige sistema operativo, tamaño y configuración.
- **Escalabilidad:** Aumenta o reduce recursos fácilmente según la demanda.
- **Costo-efectividad:** Sin inversión inicial; pagas solo por uso real.
- **Agilidad:** Despliega y prueba aplicaciones rápidamente.

### Multi-tenancy y aislamiento

Las instancias EC2 son máquinas virtuales que comparten el mismo hardware físico con otras instancias (multi-tenancy). Un software llamado **hipervisor** se encarga de aislar y gestionar los recursos para que cada instancia funcione de forma segura e independiente.

### Provisión y gestión de instancias

1. **Lanzar una instancia:** Elige una Amazon Machine Image (AMI) con el sistema operativo y software deseado, y selecciona el tipo de instancia (CPU, RAM, red).
2. **Conectarse:** Accede a la instancia por SSH (Linux) o RDP (Windows), o usa servicios como AWS Systems Manager para administración remota.
3. **Usar la instancia:** Instala aplicaciones, almacena datos, ejecuta tareas y configura la red y seguridad según tus necesidades.
4. **Escalar o detener:** Puedes cambiar el tamaño de la instancia (vertical scaling) o lanzar más instancias (horizontal scaling). Cuando ya no la necesitas, la detienes o eliminas y dejas de pagar.

### Comparación: On-premises vs. Cloud

- **On-premises:** Requiere comprar hardware, esperar entrega, instalar y mantener. Es costoso, lento y poco flexible.
- **Cloud (EC2):** Lanza servidores en minutos, escala bajo demanda, paga solo por uso y olvídate del mantenimiento físico.

---

En resumen, Amazon EC2 te da el poder de cómputo que necesitas, cuando lo necesitas, de forma flexible, escalable y eficiente, permitiendo a empresas y desarrolladores enfocarse en la innovación y no en la infraestructura.
