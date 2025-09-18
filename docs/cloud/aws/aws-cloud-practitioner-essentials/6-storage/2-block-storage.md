## Almacenamiento en bloques: EC2 Instance Store y Amazon EBS

AWS ofrece dos tipos principales de almacenamiento en bloques para EC2: Instance Store y Amazon Elastic Block Store (EBS). Cada uno tiene características, beneficios y casos de uso distintos.

### EC2 Instance Store

- Es almacenamiento temporal, físicamente conectado al host donde corre la instancia EC2.
- Los datos se pierden si la instancia se detiene o termina.
- Ideal para almacenamiento temporal, buffers, cachés, procesamiento de datos o espacio de trabajo temporal.
- No recomendado para datos que deban persistir.

**Ventajas:**

- Alta performance y baja latencia (directo al hardware).
- Sin costo adicional (incluido en el precio de la instancia).

**Desventaja clave:**

- No hay persistencia: si la instancia se detiene o termina, los datos se pierden.

### Amazon Elastic Block Store (EBS)

- Proporciona volúmenes de almacenamiento persistente que se pueden adjuntar a instancias EC2.
- Los datos persisten aunque la instancia se detenga o termine.
- Puedes crear, redimensionar, respaldar (snapshots) y mover volúmenes entre instancias y zonas de disponibilidad.

**Ventajas:**

- Persistencia de datos.
- Flexibilidad para cambiar de instancia o tipo de volumen.
- Snapshots para backup, migración y recuperación ante desastres.
- Diferentes tipos de volúmenes según necesidades de performance y costo.

**Casos de uso:**

- Bases de datos, almacenamiento de archivos críticos, backups, migración de datos, recuperación ante desastres.

---

## Ciclo de vida y snapshots en Amazon EBS

**Snapshots:**

- Son copias de seguridad puntuales (point-in-time) de un volumen EBS.
- El primer snapshot es completo; los siguientes son incrementales (solo guardan los bloques que cambiaron).
- Permiten restaurar volúmenes, migrar datos entre regiones o crear clones.

**Automatización:**

- Puedes automatizar la creación, retención y eliminación de snapshots usando Amazon Data Lifecycle Manager.
- Esto reduce errores humanos y asegura políticas de backup consistentes.

**Responsabilidad:**

- Según el modelo de responsabilidad compartida, tú eres responsable de programar, gestionar y eliminar snapshots, así como de cifrar y verificar la integridad de los backups.

**Beneficios de snapshots:**

- Protección ante pérdida de datos o fallos.
- Migración y clonación de volúmenes.
- Reducción de costos gracias a backups incrementales.

---

**Resumen:**

- Usa Instance Store para almacenamiento temporal y EBS para datos persistentes y críticos.
- Automatiza backups con snapshots y Data Lifecycle Manager para proteger tu información y optimizar costos.
