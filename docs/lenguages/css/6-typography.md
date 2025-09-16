# 6. Typography

La tipografía en CSS permite controlar la apariencia del texto en la web, mejorando la legibilidad y el diseño visual. A continuación se explican las propiedades más importantes y cómo usar fuentes externas como Google Fonts.

## 1. Fuentes (Fonts)

- `font-family`: define la familia tipográfica. Se recomienda usar varias fuentes como fallback.
  ```css
  body {
    font-family: "Roboto", Arial, sans-serif;
  }
  ```
- `font-style`: normal, italic, oblique.
- `font-weight`: grosor (normal, bold, 100–900).

## 2. Tamaños (Sizes)

- `font-size`: tamaño del texto. Unidades recomendadas: `rem`, `em`, `%`, `px`.
  ```css
  h1 {
    font-size: 2.5rem;
  }
  p {
    font-size: 1em;
  }
  ```

## 3. Alineación (Alignment)

- `text-align`: alinea el texto horizontalmente (`left`, `right`, `center`, `justify`).
  ```css
  .centrado {
    text-align: center;
  }
  .justificado {
    text-align: justify;
  }
  ```

## 4. Espaciado (Spacing)

- `line-height`: altura de línea, mejora la legibilidad.
- `letter-spacing`: espacio entre letras.
- `word-spacing`: espacio entre palabras.
- `text-indent`: sangría de la primera línea.
  ```css
  p {
    line-height: 1.6;
    letter-spacing: 0.5px;
    word-spacing: 2px;
    text-indent: 2em;
  }
  ```

## 5. Google Fonts

Permite usar fuentes externas fácilmente. Ejemplo de integración:

1. Ve a [Google Fonts](https://fonts.google.com/), elige una fuente y copia el enlace `<link>`.
2. Pega el enlace en el `<head>` de tu HTML:
   ```html
   <link
     href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap"
     rel="stylesheet"
   />
   ```
3. Usa la fuente en tu CSS:
   ```css
   body {
     font-family: "Roboto", Arial, sans-serif;
   }
   ```

## 6. Otras propiedades útiles

- `text-transform`: mayúsculas/minúsculas (`uppercase`, `lowercase`, `capitalize`).
- `text-decoration`: subrayado, tachado, etc.
- `white-space`: controla el manejo de espacios y saltos de línea.
  ```css
  .mayusculas {
    text-transform: uppercase;
  }
  .subrayado {
    text-decoration: underline;
  }
  .nowrap {
    white-space: nowrap;
  }
  ```

## Resumen

La tipografía es clave para la experiencia de usuario. CSS ofrece control total sobre fuentes, tamaños, alineación y espaciado, y permite integrar fuentes externas como Google Fonts para mejorar el diseño.
