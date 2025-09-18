## Amazon S3: Almacenamiento de objetos en AWS

Amazon S3 (Simple Storage Service) es un servicio de almacenamiento de objetos totalmente gestionado, escalable y duradero, ideal para guardar archivos, imágenes, videos, backups y grandes volúmenes de datos no estructurados.

### ¿Cómo funciona S3?

- Los archivos se almacenan como **objetos** dentro de **buckets** (contenedores).
- Cada objeto tiene datos, metadatos y un identificador único (key).
- No hay límite en la cantidad de objetos ni en el tamaño total del bucket (cada objeto puede ser de hasta 5 TB).
- S3 ofrece 99.999999999% de durabilidad (11 nueves), replicando los datos automáticamente en múltiples instalaciones.

### Beneficios y casos de uso

- Almacenamiento ilimitado y pago por uso.
- Escalabilidad automática y alta disponibilidad.
- Ideal para backups, archivos multimedia, sitios web estáticos, data lakes, distribución de contenido y archivado.
- Integración con otros servicios AWS.

**Ejemplo:** Una tienda online puede guardar imágenes de productos en S3 y servirlas rápidamente a los usuarios, sin preocuparse por la escalabilidad.

### Seguridad en S3

- Todo es privado por defecto. El acceso se controla mediante:
  - **Bucket policies:** Políticas a nivel de bucket para permitir o denegar acciones.
  - **Identity-based policies:** Permisos asignados a usuarios, grupos o roles.
  - **Presigned URLs:** Acceso temporal y seguro a objetos específicos.
  - **Access Points:** Control granular para conjuntos de datos compartidos.
- **Auditoría:** S3 Audit Logs permite rastrear quién accede a qué y cuándo.
- **Cifrado:** S3 soporta cifrado en reposo y en tránsito para proteger la confidencialidad de los datos.

### Clases de almacenamiento y ciclo de vida

S3 ofrece varias clases de almacenamiento para optimizar costos según la frecuencia de acceso:

- **S3 Standard:** Acceso frecuente y rápido.
- **S3 Standard-IA (Infrequent Access):** Acceso poco frecuente, pero rápido cuando se necesita.
- **S3 One Zone-IA:** Similar a Standard-IA, pero en una sola zona de disponibilidad (más económico, menos resiliente).
- **S3 Intelligent-Tiering:** Cambia automáticamente de clase según el uso.
- **S3 Glacier y Glacier Deep Archive:** Archivado a largo plazo, con diferentes tiempos y costos de recuperación.
- **S3 Express One Zone:** Acceso ultrarrápido en una sola zona.

**Políticas de ciclo de vida:** Puedes automatizar la transición de objetos entre clases o su eliminación según reglas de antigüedad o acceso, optimizando costos y gestión.

### Demostración práctica: Usando S3 en la consola

1. Accede a S3 desde la consola de AWS y crea un bucket con un nombre único y región preferida.
2. Configura el acceso (por defecto, todo es privado).
3. Crea carpetas y sube archivos o carpetas completas (drag & drop o CLI).
4. Explora y edita metadatos del objeto (sistema y personalizados).
5. Configura propiedades del bucket: versionado, cifrado, políticas, ciclo de vida, etc.
6. Gestiona permisos y políticas para controlar el acceso.
7. Usa el versionado para restaurar o eliminar versiones anteriores de objetos.

---

Amazon S3 es la solución más versátil y robusta para almacenamiento de objetos en la nube, permitiendo gestionar datos de forma segura, eficiente y escalable para cualquier tipo de aplicación.
