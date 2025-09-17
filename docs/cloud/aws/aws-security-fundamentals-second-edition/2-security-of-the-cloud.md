# Seguridad de la Nube y la Infraestructura Global de AWS

## Infraestructura Global

AWS opera una infraestructura global distribuida en regiones y zonas de disponibilidad (Availability Zones). Cada región contiene dos o más zonas de disponibilidad, que son centros de datos físicamente separados e interconectados mediante redes redundantes y de baja latencia. Esta arquitectura permite alta disponibilidad, tolerancia a fallos y baja latencia para los usuarios.

Al elegir una región para desplegar recursos, considera:

- **Ubicación de los usuarios finales:** Para mejorar la experiencia y reducir la latencia.
- **Requisitos de cumplimiento:** Algunas regulaciones exigen que los datos residan en un país específico.
- **Disponibilidad de servicios:** No todos los servicios están disponibles en todas las regiones.
- **Costos:** Los precios pueden variar entre regiones por factores locales.

## Seguridad Física en Centros de Datos

La protección física es la base de la seguridad en la nube de AWS. Los centros de datos cumplen con estándares internacionales y mejores prácticas:

- **Edificios discretos:** Instalaciones no identificables y no divulgadas públicamente.
- **Vigilancia:** Videovigilancia, detección de intrusos y monitoreo de accesos. Entradas protegidas con alarmas.
- **Principio de privilegio mínimo:** Acceso físico solo a empleados y contratistas autorizados con necesidad legítima.
- **Control de empleados:** Solo personal con acceso frecuente puede ingresar a áreas relevantes; las visitas requieren acompañamiento.

## Capa Ambiental e Infraestructura

AWS selecciona ubicaciones para mitigar riesgos ambientales (inundaciones, clima extremo, sismos) y realiza simulacros de continuidad de negocio. Comparado con centros de datos tradicionales, AWS permite reducir servidores, consumo energético y aprovechar energía renovable.

- **Detección de incendios:** Equipos automáticos en todas las áreas críticas.
- **Monitoreo:** Supervisión de sistemas eléctricos, mecánicos y de soporte vital, con mantenimiento preventivo.
- **Control climático:** Temperatura óptima para evitar sobrecalentamiento y caídas de servicio.
- **Energía:** Sistemas eléctricos redundantes, UPS y generadores de respaldo.

## Capa de Datos

Aunque la protección de los datos es responsabilidad del cliente, AWS implementa medidas adicionales:

- Destrucción de dispositivos siguiendo técnicas NIST800-88.
- Auditorías externas para verificar cumplimiento de normas de seguridad.
- Servidores que alertan sobre intentos de extracción de datos y se deshabilitan automáticamente en caso de incidente.

## Cumplimiento y Gobernanza

AWS mantiene un entorno robusto de seguridad y control, comunicando a los clientes mediante:

- Certificaciones y auditorías independientes.
- Publicación de whitepapers y documentación sobre prácticas de seguridad.
- Provisión de certificados y reportes bajo NDA si es necesario.
- Herramientas y recursos para facilitar el cumplimiento (playbooks, mapeos de normativas).

> Ejecutar cargas de trabajo en AWS no garantiza el cumplimiento automático de normativas; es responsabilidad del cliente asegurar que sus aplicaciones y arquitecturas cumplan los requisitos necesarios. AWS certifica la infraestructura, pero el cliente debe certificar sus propias soluciones.

## Herramienta destacada: AWS Artifact

**AWS Artifact** es un portal gratuito y de autoservicio para acceder a reportes de seguridad y cumplimiento de AWS (SOC, PCI, certificaciones internacionales). Es la fuente centralizada para obtener documentación relevante sobre el cumplimiento de AWS.

---

Esta sección resume cómo AWS protege la infraestructura global y los centros de datos, y cómo los clientes pueden aprovechar estas garantías para construir soluciones seguras y conformes en la nube.
