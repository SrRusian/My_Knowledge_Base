## Soluciones adicionales de almacenamiento en AWS

### AWS Storage Gateway

AWS Storage Gateway es un servicio híbrido que conecta tu infraestructura local con el almacenamiento en la nube de AWS, permitiendo acceso local a almacenamiento prácticamente ilimitado en la nube sin cambiar tus flujos de trabajo.

**Beneficios:**

- Integración fluida entre sistemas locales y la nube.
- Gestión centralizada y optimización de costos.
- Caché local para acceso rápido a datos frecuentes.
- Reducción de costos en almacenamiento y backup.

**Tipos de gateway:**

- **S3 File Gateway:** Permite a aplicaciones locales guardar y acceder archivos directamente en Amazon S3 usando protocolos estándar. Los archivos recientes se mantienen en caché localmente.
- **Volume Gateway:** Presenta volúmenes iSCSI a tus aplicaciones locales. Puede operar en modo "cached" (datos principales en la nube, caché local) o "stored" (datos locales, respaldos en la nube como snapshots EBS).
- **Tape Gateway:** Emula hardware de cintas físicas para backup, permitiendo migrar respaldos en cinta a la nube sin cambiar software. Los datos se almacenan en S3 y pueden moverse a clases de almacenamiento más económicas.

**Casos de uso:**

- Backup y recuperación ante desastres.
- Archivado de datos a largo plazo.
- Extensión de almacenamiento local sin inversión en hardware.

---

### AWS Elastic Disaster Recovery

AWS Elastic Disaster Recovery replica continuamente los datos de servidores físicos o virtuales a AWS, permitiendo recuperación rápida ante fallos o desastres.

**Beneficios:**

- Resiliencia empresarial: recuperación de cargas críticas en minutos.
- Automatización y pruebas de recuperación sin interrupciones.
- Reducción de costos: elimina la necesidad de centros de datos secundarios.

**Casos de uso:**

- Protección de datos en salud, banca, manufactura y cualquier sector que requiera alta disponibilidad.
- Cumplimiento regulatorio y validación de estrategias de recuperación.

**¿Cómo funciona?**

- Replica datos a nivel de bloque de forma continua.
- Permite lanzar instancias de recuperación bajo demanda.
- Facilita pruebas periódicas de recuperación sin afectar operaciones.

---

Estas soluciones permiten a las empresas modernizar su almacenamiento, proteger datos críticos y optimizar costos, combinando lo mejor de la infraestructura local y la nube de AWS.
