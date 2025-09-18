# Analítica de Datos y ETL en AWS

La analítica de datos permite transformar datos históricos en información valiosa para la toma de decisiones. Tanto la analítica tradicional como la IA/ML dependen de datos limpios, accesibles y bien organizados. Aquí aprenderás los conceptos clave, el propósito de los pipelines ETL y los servicios de AWS más relevantes para cada fase.

---

## ¿Qué es la analítica de datos?

La analítica de datos consiste en transformar datos brutos en insights y tendencias útiles. Se aplica en sectores como finanzas, salud, seguros y marketing para explicar decisiones, validar hipótesis y optimizar procesos.

- **Ejemplo:** Un banco usa analítica para explicar decisiones de crédito; un investigador analiza ensayos clínicos; una aseguradora valida modelos de riesgo.

---

## ¿Qué es un pipeline ETL?

Un pipeline ETL (Extract, Transform, Load) es una línea de ensamblaje automatizada que extrae datos de múltiples fuentes, los transforma a un formato útil y los carga en un destino (data lake, data warehouse, etc.).

- **Extract:** Obtiene datos de sistemas fuente (apps, sensores, bases de datos).
- **Transform:** Limpia, normaliza y convierte los datos para que sean útiles.
- **Load:** Carga los datos procesados en un sistema de destino listo para análisis.

A veces se usa ELT (Extract, Load, Transform) o incluso procesos zero-ETL si los datos ya están listos para su consumo.

---

## Servicios de AWS para cada fase del pipeline

### Ingesta de datos

- **Amazon Kinesis Data Streams:** Ingesta en tiempo real de grandes volúmenes de datos (sensores, apps, logs).
- **Amazon Data Firehose:** Ingesta y entrega de datos casi en tiempo real a destinos como S3 o Redshift.

### Almacenamiento

- **Amazon S3:** Data lake flexible para datos estructurados y no estructurados.
- **Amazon Redshift:** Data warehouse para análisis estructurado a gran escala.

### Catalogación

- **AWS Glue Data Catalog:** Repositorio centralizado de metadatos para descubrir y organizar datasets.

### Procesamiento y transformación

- **AWS Glue:** ETL visual y automatizado, ideal para usuarios sin experiencia en big data.
- **Amazon EMR:** Procesamiento avanzado con frameworks como Spark, Hadoop y Hive.

### Análisis y visualización

- **Amazon Athena:** Consultas SQL serverless sobre datos en S3 y otras fuentes.
- **Amazon Redshift:** Consultas complejas y análisis de grandes volúmenes de datos.
- **Amazon QuickSight:** Dashboards interactivos y BI para usuarios técnicos y de negocio.
- **Amazon OpenSearch Service:** Búsqueda, monitoreo y análisis en tiempo real de logs y métricas.

---

> **Consejo:** Un buen pipeline de datos automatiza la ingesta, transformación y entrega, permitiendo que los equipos de negocio y ciencia de datos accedan a información confiable y actualizada para tomar mejores decisiones.

En las siguientes secciones, profundizarás en cada servicio y aprenderás a diseñar pipelines de datos eficientes en AWS.
