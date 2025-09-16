# 15. Visual Summary and Reference

Esta sección ofrece tablas de referencia rápida y un resumen visual de las propiedades, selectores y unidades más usadas en CSS.

## 1. Propiedades comunes

| Propiedad        | Descripción          | Ejemplo                       |
| ---------------- | -------------------- | ----------------------------- |
| color            | Color del texto      | color: #333;                  |
| background-color | Color de fondo       | background: #f0f0f0;          |
| font-size        | Tamaño de fuente     | font-size: 1.2em;             |
| font-family      | Familia tipográfica  | font-family: Arial;           |
| margin           | Espacio exterior     | margin: 20px;                 |
| padding          | Espacio interior     | padding: 10px;                |
| border           | Borde                | border: 1px solid #000;       |
| border-radius    | Esquinas redondeadas | border-radius: 8px;           |
| box-shadow       | Sombra de caja       | box-shadow: 2px 2px 8px #aaa; |
| display          | Tipo de caja         | display: flex;                |
| position         | Posicionamiento      | position: absolute;           |
| width / height   | Dimensiones          | width: 100px;                 |
| z-index          | Orden de apilamiento | z-index: 10;                  |
| opacity          | Opacidad             | opacity: 0.7;                 |

## 2. Selectores rápidos

| Selector            | Selecciona             | Ejemplo               |
| ------------------- | ---------------------- | --------------------- |
| \*                  | Todos los elementos    | \* { ... }            |
| .clase              | Elementos con clase    | .menu { ... }         |
| #id                 | Elemento con id        | #header { ... }       |
| elemento            | Todos los de ese tipo  | p { ... }             |
| [attr]              | Elementos con atributo | [type="text"] { ... } |
| elemento1 elemento2 | Descendientes          | nav a { ... }         |
| elemento > hijo     | Hijos directos         | ul > li { ... }       |
| elemento + hermano  | Hermano adyacente      | h2 + p { ... }        |
| :hover              | Estado hover           | a:hover { ... }       |
| ::before            | Antes del contenido    | p::before { ... }     |

## 3. Unidades más usadas

| Unidad | Significado                        | Ejemplo         |
| ------ | ---------------------------------- | --------------- |
| px     | Píxeles (absoluto)                 | width: 200px;   |
| em     | Relativo al font-size del elemento | font-size: 2em; |
| rem    | Relativo al font-size raíz         | margin: 1rem;   |
| %      | Porcentaje del contenedor          | width: 80%;     |
| vw/vh  | Porcentaje del viewport            | height: 50vh;   |

## 4. Resumen visual del modelo de caja

```
┌───────────────────────────────┐
│           margin             │
│ ┌───────────────────────────┐ │
│ │         border            │ │
│ │ ┌───────────────────────┐ │ │
│ │ │      padding         │ │ │
│ │ │ ┌─────────────────┐ │ │ │
│ │ │ │   content      │ │ │ │
│ │ │ └─────────────────┘ │ │ │
│ │ └───────────────────────┘ │ │
│ └───────────────────────────┘ │
└───────────────────────────────┘
```

## 5. Ejemplo de media query

```css
@media (max-width: 600px) {
  .contenedor {
    flex-direction: column;
  }
}
```

## 6. Recursos útiles

- [MDN CSS Reference](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference)
- [CSS Tricks Almanac](https://css-tricks.com/almanac/)

---

Esta hoja es un resumen visual y referencia rápida para CSS. Úsala como guía para recordar sintaxis y conceptos clave.
