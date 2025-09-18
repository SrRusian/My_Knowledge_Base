# Introducción a Bases de Datos en AWS

AWS ofrece una amplia gama de servicios de bases de datos para cubrir distintas necesidades de almacenamiento y gestión de datos. Estos servicios son escalables, confiables y fáciles de usar, adaptándose a empresas de todos los tamaños. Incluyen opciones para bases de datos relacionales, no relacionales, cachés en memoria y servicios especializados para casos como gestión de documentos.

---

## ¿Por qué necesitamos bases de datos?

Imagina que tu cafetería ha crecido y ahora quieres implementar un programa de lealtad para premiar a los clientes frecuentes. Para hacerlo bien, necesitas registrar información sobre tus clientes, sus pedidos y compras. Esto solo es posible con una base de datos adecuada, que te permita conocer mejor a tus clientes y ofrecerles recompensas personalizadas.

---

## Modelo de Responsabilidad Compartida en Bases de Datos AWS

AWS clasifica sus servicios de bases de datos según el nivel de responsabilidad que asume el proveedor y el cliente. Hay tres categorías principales:

### 1. Servicios totalmente gestionados (Fully Managed)

- **AWS se encarga de:** aprovisionamiento, escalado, parches, respaldos, optimización de rendimiento y seguridad.
- **Tú solo te ocupas de:** diseñar la estructura de datos y gestionar los accesos.
- **Ejemplo:** Amazon RDS (modo totalmente gestionado), DynamoDB, Aurora Serverless.

### 2. Servicios gestionados (Managed)

- **AWS se encarga de:** tareas rutinarias como respaldos, parches y provisión de hardware.
- **Tú eres responsable de:** configuración, optimización de consultas y ajustes de rendimiento.
- **Ejemplo:** Amazon RDS (modo gestionado), ElastiCache.

### 3. Servicios no gestionados (Unmanaged)

- **Tú eres responsable de todo:** instalación, configuración, parches, mantenimiento, seguridad, respaldos, alta disponibilidad y optimización.
- **Ejemplo:** Instalar MySQL directamente en una instancia EC2.

---

> **Consejo:** Siempre que sea posible, elige servicios totalmente gestionados para reducir la carga operativa y mejorar la seguridad y disponibilidad.

En las siguientes secciones, aprenderás a identificar qué tipo de servicio se adapta mejor a cada necesidad y cómo aprovechar las ventajas de las bases de datos en la nube de AWS.
