## Almacenamiento de archivos: Amazon EFS y Amazon FSx

### Amazon Elastic File System (EFS)

Amazon EFS es un sistema de archivos totalmente gestionado y escalable para Linux, accesible por múltiples instancias EC2 y servicios AWS al mismo tiempo. Es ideal para aplicaciones que requieren acceso compartido y concurrente a archivos, como análisis de datos, sitios web, entornos de desarrollo y backups.

**Ventajas de EFS:**

- Escalado automático: crece y disminuye según la cantidad de archivos, sin aprovisionamiento manual.
- Multi-AZ: replica datos automáticamente entre zonas de disponibilidad para alta disponibilidad.
- Acceso compartido: miles de instancias pueden leer y escribir simultáneamente.
- Pago por uso: solo pagas por el almacenamiento utilizado.

### Clases de almacenamiento y ciclo de vida en EFS

- **EFS Standard y Standard-IA:** Multi-AZ, alta durabilidad y disponibilidad. Standard-IA es más económico para datos poco accedidos.
- **EFS One Zone y One Zone-IA:** Almacenan datos en una sola AZ, reduciendo costos para datos menos críticos.
- **EFS Archive:** Para datos accedidos pocas veces al año, con el menor costo.

**Políticas de ciclo de vida:**

- Puedes automatizar la transición de archivos entre clases según su uso (por ejemplo, mover a IA tras 30 días sin acceso, o a Archive tras 90 días).
- Esto optimiza costos y elimina la gestión manual.

**Diferencia con EBS:**

- EBS es como un disco duro para una sola instancia y AZ; EFS es un sistema de archivos compartido y regional.

---

### Amazon FSx

Amazon FSx es una familia de servicios de archivos totalmente gestionados, compatibles con protocolos y sistemas populares como Windows, Lustre, NetApp ONTAP y OpenZFS. Es ideal para migrar cargas de trabajo empresariales, análisis de datos, HPC, entornos híbridos y aplicaciones que requieren características avanzadas de sistemas de archivos.

**Ventajas de FSx:**

- Integración con protocolos estándar (SMB, NFS, etc.).
- Infraestructura gestionada: AWS se encarga del hardware, parches y backups.
- Escalabilidad y rendimiento alto.
- Optimización de costos con tiering automático.

**Opciones de FSx:**

- **FSx for Windows File Server:** Migración de servidores Windows, escritorios virtuales, SQL Server.
- **FSx for NetApp ONTAP:** Gestión avanzada de datos, continuidad de negocio, modernización.
- **FSx for OpenZFS:** Análisis de datos, gestión de contenido, desarrollo y pruebas.
- **FSx for Lustre:** Machine learning, HPC, big data, media.

---

**Resumen:**

- Usa EFS para sistemas de archivos compartidos y escalables en Linux.
- Usa FSx para necesidades específicas de sistemas de archivos empresariales o alto rendimiento.
- Aprovecha las políticas de ciclo de vida y las clases de almacenamiento para optimizar costos y disponibilidad.
