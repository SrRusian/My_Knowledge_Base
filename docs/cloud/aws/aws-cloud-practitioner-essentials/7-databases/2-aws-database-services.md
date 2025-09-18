# Servicios de Bases de Datos en AWS

En esta sección conocerás los principales servicios de bases de datos que ofrece AWS, sus beneficios, casos de uso y diferencias clave. Incluye bases de datos relacionales, NoSQL, cachés en memoria y servicios especializados.

---

## Bases de datos relacionales

Las bases de datos relacionales almacenan datos en tablas con filas y columnas, y permiten establecer relaciones entre diferentes tablas. Usan SQL para consultar y gestionar la información. Son ideales para aplicaciones que requieren integridad, consistencia y relaciones complejas entre datos (por ejemplo, programas de lealtad, sistemas de pedidos, inventarios).

### Amazon RDS

- **¿Qué es?** Servicio gestionado que soporta motores como MySQL, PostgreSQL, SQL Server, MariaDB, Oracle y Aurora.
- **Beneficios:**
  - Automatiza tareas como respaldos, parches, aprovisionamiento y recuperación ante fallos (Multi-AZ).
  - Escalabilidad vertical y horizontal.
  - Seguridad: aislamiento de red, cifrado en tránsito y en reposo.
  - Reduce la carga operativa y permite enfocarse en el desarrollo.
- **Casos de uso:** Aplicaciones web, sistemas empresariales, inventarios, e-commerce.

### Amazon Aurora

- **¿Qué es?** Motor de base de datos relacional compatible con MySQL y PostgreSQL, diseñado para alto rendimiento y disponibilidad.
- **Beneficios:**
  - Hasta 5 veces el rendimiento de MySQL y 3 veces el de PostgreSQL.
  - Replicación automática en múltiples zonas de disponibilidad (hasta 15 réplicas).
  - Escalado automático de almacenamiento (10 GB a 128 TB).
  - Backups continuos y recuperación a un punto en el tiempo.
  - Alta disponibilidad (99.99%).
- **Casos de uso:** Analítica en tiempo real, aplicaciones de gaming, gestión de contenido.

---

## Bases de datos NoSQL

Las bases de datos NoSQL (no relacionales) almacenan datos en esquemas flexibles, usando pares clave-valor, documentos o grafos. Son ideales para aplicaciones con grandes volúmenes de datos, esquemas variables o necesidad de baja latencia.

### Amazon DynamoDB

- **¿Qué es?** Base de datos NoSQL totalmente gestionada, serverless, con rendimiento de milisegundos y escalado automático.
- **Beneficios:**
  - Esquema flexible: cada ítem puede tener atributos distintos.
  - Escalabilidad automática y global (DynamoDB Global Tables).
  - Alta disponibilidad (99.999%) y replicación multi-región.
  - Seguridad: cifrado en tránsito y en reposo.
- **Casos de uso:** Apps móviles, gaming, fintech, aplicaciones globales.

---

## Caché en memoria

El caché en memoria almacena datos frecuentemente consultados en RAM para acelerar el acceso y reducir la carga en la base de datos principal.

### Amazon ElastiCache

- **¿Qué es?** Servicio gestionado de caché compatible con Redis, Valkey y Memcached.
- **Beneficios:**
  - Latencia de microsegundos para lecturas y escrituras.
  - Escalabilidad y alta disponibilidad (replicación multi-AZ).
  - Reduce costos y mejora el rendimiento de aplicaciones y bases de datos.
- **Casos de uso:** Gestión de sesiones, rankings en juegos, aceleración de consultas.

---

## Servicios especializados

### Amazon DocumentDB

- **¿Qué es?** Base de datos de documentos compatible con MongoDB, ideal para datos semi-estructurados (JSON).
- **Beneficios:**
  - Esquema flexible, escalado automático, backups continuos.
  - Hasta 15 réplicas para alta disponibilidad.
- **Casos de uso:** Gestión de contenido, catálogos, perfiles de usuario.

### Amazon Neptune

- **¿Qué es?** Base de datos de grafos para datos altamente conectados (redes sociales, detección de fraude).
- **Beneficios:**
  - Consultas de relaciones complejas a gran escala.
  - Alta disponibilidad y rendimiento.
- **Casos de uso:** Mapas de relaciones, sistemas de recomendación, análisis de fraudes.

### AWS Backup

- **¿Qué es?** Servicio centralizado para gestionar respaldos de recursos AWS (EBS, EFS, RDS, DynamoDB, on-premises).
- **Beneficios:**
  - Automatización de políticas de backup, auditoría y cumplimiento.
  - Replicación entre regiones para recuperación ante desastres.
- **Casos de uso:** Recuperación ante desastres, cumplimiento normativo, gestión centralizada de respaldos.

---

> **Consejo:** Elige el servicio de base de datos que mejor se adapte a la naturaleza de tus datos y los requisitos de tu aplicación. AWS ofrece opciones para cada necesidad, desde bases relacionales hasta NoSQL, cachés y servicios especializados.
