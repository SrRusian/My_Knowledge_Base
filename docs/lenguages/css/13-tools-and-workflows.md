# 13. Tools and Workflows

El ecosistema de CSS cuenta con herramientas y flujos de trabajo que facilitan el desarrollo, mantenimiento y escalabilidad de los estilos. Aquí se resumen los más importantes.

## 1. Preprocesadores CSS

Permiten escribir CSS más potente y organizado, añadiendo variables, anidamiento, mixins y funciones.

- **Sass (SCSS):** El más popular. Sintaxis similar a CSS, soporta variables, anidamiento, mixins, herencia.
  ```scss
  $color-principal: #0074d9;
  .boton {
    background: $color-principal;
    &:hover {
      background: darken($color-principal, 10%);
    }
  }
  ```
- **LESS:** Similar a Sass, con variables y funciones propias.
  ```less
  @color: #ff4136;
  .alerta {
    color: @color;
  }
  ```

## 2. Frameworks CSS

Proveen componentes y utilidades listas para usar, acelerando el desarrollo y asegurando consistencia visual.

- **Bootstrap:**
  - Sistema de grillas, componentes UI, utilidades responsivas.
  - Ejemplo:
    ```html
    <button class="btn btn-primary">Guardar</button>
    ```
- **Tailwind CSS:**
  - Utilidades de bajo nivel para componer estilos directamente en el HTML.
  - Ejemplo:
    ```html
    <button class="bg-blue-600 text-white px-4 py-2 rounded">Guardar</button>
    ```

## 3. Herramientas de desarrollo

- **DevTools del navegador:** Inspecciona, edita y depura CSS en tiempo real.
- **Autoprefixer:** Añade prefijos automáticamente para compatibilidad entre navegadores.
- **PostCSS:** Plataforma para transformar CSS con plugins (minificación, variables, etc.).
- **Live Reload / Hot Reload:** Recarga automática de estilos al guardar cambios.
- **Linters (Stylelint):** Analiza el código CSS para mantener calidad y consistencia.

## 4. Flujos de trabajo modernos

- Usa gestores de paquetes (npm, yarn) para instalar dependencias.
- Automatiza tareas con herramientas como Webpack, Gulp o Vite.
- Integra preprocesadores y frameworks en el build del proyecto.

## Resumen

El uso de preprocesadores, frameworks y herramientas modernas agiliza el desarrollo CSS, mejora la calidad del código y permite crear interfaces escalables y profesionales.
