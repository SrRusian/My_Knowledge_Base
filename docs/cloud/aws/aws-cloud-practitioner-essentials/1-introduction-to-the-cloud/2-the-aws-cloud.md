# ¿Qué es la Computación en la Nube?

La computación en la nube es la entrega bajo demanda de recursos de TI (como servidores, almacenamiento, bases de datos, redes, inteligencia artificial, etc.) a través de internet y con un modelo de pago por uso. Esto significa que puedes acceder a la infraestructura y servicios que necesitas, cuando los necesitas, y solo pagas por lo que consumes.

## Breve historia de AWS

Amazon comenzó como una tienda en línea, pero al crecer, desarrolló herramientas y procesos para escalar su infraestructura. En 2004 lanzó su primer servicio público de nube, y en pocos años AWS se convirtió en líder global, permitiendo a empresas de todos los tamaños acceder a tecnología avanzada sin grandes inversiones iniciales.

## Definición de cloud computing

**Cloud computing** es la entrega bajo demanda de recursos de TI a través de internet, con precios flexibles según el consumo. Esto permite:

- Usar recursos solo cuando los necesitas (on-demand)
- Acceder a ellos desde cualquier lugar con internet
- Pagar solo por lo que usas (pay-as-you-go)

### Componentes clave de la definición

- **On-demand delivery:** Acceso inmediato a recursos según demanda, sin esperas ni procesos largos de aprovisionamiento.
- **IT resources:** Incluye servidores, almacenamiento, bases de datos, redes, IA/ML y más.
- **Over the internet:** Todo se gestiona y consume a través de internet, sin necesidad de hardware local.
- **Pay-as-you-go pricing:** Solo pagas por lo que consumes, sin contratos fijos ni inversiones iniciales.

## Tipos de despliegue en la nube

- **Cloud:** Todos los recursos se alojan y gestionan en la nube. Ejemplo: una empresa migra sus datos y aplicaciones a AWS.
- **On-premises:** Los recursos se mantienen en la infraestructura local de la empresa. Ofrece control total, pero menos flexibilidad y escalabilidad.
- **Híbrido:** Combina recursos en la nube y en local. Útil para empresas con aplicaciones heredadas o requisitos regulatorios.

## Beneficios clave de AWS Cloud

1. **Cambiar gastos fijos por variables:** No necesitas grandes inversiones iniciales; pagas solo por lo que usas.
2. **Economías de escala:** AWS compra hardware a gran escala y traslada esos ahorros a los clientes.
3. **No adivines la capacidad:** Escala recursos según la demanda real, evitando sobre o subaprovisionamiento.
4. **Aumenta velocidad y agilidad:** Lanza nuevos proyectos y experimentos rápidamente, sin esperas por infraestructura.
5. **Deja de gastar en centros de datos:** AWS se encarga del hardware y mantenimiento, tú te enfocas en tu negocio.
6. **Expande globalmente en minutos:** Despliega aplicaciones en cualquier parte del mundo usando la infraestructura global de AWS.

---

En resumen, la nube de AWS permite a empresas y desarrolladores innovar, ahorrar costos y escalar rápidamente, con acceso a tecnología de punta y sin las limitaciones de la infraestructura tradicional.

---

# Introducción a la Infraestructura Global de AWS

AWS cuenta con una infraestructura global compuesta por regiones y zonas de disponibilidad (Availability Zones, AZs). Una **región** es una ubicación geográfica que contiene al menos tres AZs, y cada AZ está formada por uno o más centros de datos independientes, con energía, red y conectividad redundantes.

## Alta disponibilidad y tolerancia a fallos

La infraestructura de AWS está diseñada para ofrecer alta disponibilidad y tolerancia a fallos. Si una AZ falla (por ejemplo, por un corte de energía o desastre natural), las otras AZs de la región siguen operando, asegurando que tus aplicaciones permanezcan accesibles. Para mayor resiliencia, muchas empresas distribuyen sus recursos en varias regiones.

**Analogía:** Imagina una cadena de cafeterías en diferentes barrios. Si una sucursal cierra por un problema, los clientes pueden ir a otra cercana y el negocio sigue funcionando.

**Recomendación:** Distribuye tus recursos en varias AZs para lograr alta disponibilidad y tolerancia a fallos.

## ¿Qué es el Modelo de Responsabilidad Compartida de AWS?

La seguridad en la nube es una responsabilidad compartida entre AWS y el cliente:

- **AWS es responsable de la seguridad de la nube** (infraestructura física, hardware, red, virtualización).
- **El cliente es responsable de la seguridad en la nube** (configuración, datos, aplicaciones, control de acceso, cifrado, etc.).
- Algunas responsabilidades pueden variar según el servicio utilizado.

![Modelo de Responsabilidad Compartida](../images/aws-shared-responsability-model.png)

**Ejemplo:** AWS construye la casa (infraestructura segura), pero tú eres responsable de cerrar y asegurar la puerta (configuración y datos).

### Componentes del modelo:

- **Responsabilidad del cliente:** Gestión de datos, cifrado del lado del cliente, control de acceso.
- **Responsabilidad compartida:** Cifrado del lado del servidor, protección del tráfico de red, gestión de plataforma y aplicaciones, configuración de red y firewall (varía según el servicio).
- **Responsabilidad de AWS:** Seguridad del hardware, software, red y centros de datos globales.

**Resumen:** AWS y el cliente trabajan juntos para crear un entorno seguro y confiable. Entender este modelo es clave para aprovechar la nube de forma segura.
