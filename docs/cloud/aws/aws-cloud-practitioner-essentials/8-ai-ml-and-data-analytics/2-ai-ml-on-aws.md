# AI/ML en AWS: Soluciones y Casos de Uso

AWS ofrece un ecosistema completo para inteligencia artificial (IA), machine learning (ML) y generative AI, cubriendo desde modelos pre-entrenados hasta soluciones totalmente personalizadas. Aquí aprenderás los conceptos clave, los tres niveles de la pila de IA/ML de AWS y los servicios más relevantes.

---

## Casos de uso comunes de AI/ML

- Recomendaciones personalizadas (e-commerce, streaming)
- Predicción de tendencias (finanzas, inventarios)
- Detección de fraudes y anomalías
- Automatización de atención al cliente (chatbots, asistentes de voz)
- Análisis de imágenes, videos y documentos

---

## Los 3 niveles de la pila AI/ML de AWS

### 1. Servicios de IA (AI Services)

- **¿Qué son?** Servicios gestionados con modelos pre-entrenados listos para usar.
- **Ejemplos:**
  - **Lenguaje:** Amazon Comprehend (análisis de texto y sentimiento), Polly (texto a voz), Transcribe (voz a texto), Translate (traducción automática).
  - **Visión y búsqueda:** Rekognition (análisis de imágenes y videos), Textract (extracción de texto de documentos), Kendra (búsqueda inteligente).
  - **Conversacional y personalización:** Lex (chatbots), Personalize (recomendaciones personalizadas).
- **Ventajas:** Rápida integración, no requiere experiencia en ML, ideal para resolver necesidades específicas.

### 2. Servicios de ML (ML Services)

- **¿Qué son?** Plataformas gestionadas para crear, entrenar y desplegar modelos propios.
- **Ejemplo:** Amazon SageMaker.
- **Ventajas:**
  - Control total sobre el ciclo de vida del modelo.
  - Herramientas para visualización, experimentación, monitoreo y MLOps.
  - Acceso a modelos pre-entrenados y personalización con tus propios datos.

### 3. Frameworks y infraestructura (ML Frameworks & Infrastructure)

- **¿Qué son?** Soluciones para expertos que requieren máxima personalización y control.
- **Ejemplos:**
  - Frameworks: TensorFlow, PyTorch, MXNet.
  - Infraestructura: EC2 optimizado para ML, EMR, ECS.
- **Ventajas:** Flexibilidad total, integración con hardware especializado, ideal para proyectos avanzados.

---

## Generative AI en AWS

### ¿Qué es?

Generative AI es una rama del deep learning que utiliza modelos fundacionales (FMs) para crear contenido nuevo: texto, imágenes, música, código, etc. Los modelos más conocidos son los LLMs (Large Language Models).

### Servicios clave

- **Amazon SageMaker JumpStart:** Biblioteca de modelos fundacionales y soluciones pre-construidas, listas para desplegar y personalizar.
- **Amazon Bedrock:** Servicio gestionado para adaptar y desplegar FMs de Amazon y terceros, con una API unificada.
- **Amazon Q:** Asistente generativo que se integra con la información de tu empresa para responder preguntas, automatizar flujos y generar contenido.
  - Q Business: Responde preguntas y automatiza tareas usando datos empresariales.
  - Q Developer: Asistente para desarrolladores, genera código y revisa seguridad.

---

> **Consejo:** Elige el nivel de la pila AI/ML de AWS según la experiencia de tu equipo y la necesidad de personalización. Para tareas comunes, usa servicios de IA pre-entrenados; para soluciones a medida, opta por SageMaker o frameworks avanzados.

En las siguientes secciones, profundizarás en cada servicio y aprenderás a identificar el mejor enfoque para tus proyectos de IA y ML en AWS.
