# 2. Syntax and Selectors

En CSS, la sintaxis y los selectores son fundamentales para aplicar estilos a los elementos HTML. A continuación, se explica en detalle cómo funcionan y se presentan ejemplos de cada tipo de selector.

## Sintaxis básica de CSS

Una regla CSS está compuesta por un **selector** y un **bloque de declaraciones**:

```css
selector {
  propiedad: valor;
  /* ...otras declaraciones... */
}
```

**Ejemplo:**

```css
h1 {
  color: blue;
  font-size: 2em;
}
```

## Tipos de selectores

### 1. Selectores simples

- **Selector de tipo**: selecciona todos los elementos de un tipo específico.
  - `p { ... }` selecciona todos los `<p>`.
- **Selector de clase**: selecciona todos los elementos con una clase específica.
  - `.clase { ... }` selecciona todos los elementos con `class="clase"`.
- **Selector de ID**: selecciona el elemento con un ID específico.
  - `#mi-id { ... }` selecciona el elemento con `id="mi-id"`.
- **Selector universal**: selecciona todos los elementos.
  - `* { ... }`
- **Selector de atributo**: selecciona elementos según un atributo o valor de atributo.
  - `[type="text"] { ... }` selecciona `<input type="text">`.

### 2. Selectores combinados

- **Selector descendiente**: selecciona elementos que están dentro de otros elementos.
  - `div p { ... }` selecciona todos los `<p>` dentro de un `<div>`.
- **Selector de hijo directo**: selecciona elementos que son hijos directos de otro elemento.
  - `ul > li { ... }` selecciona los `<li>` hijos directos de `<ul>`.
- **Selector de hermano adyacente**: selecciona un elemento que es inmediatamente posterior a otro.
  - `h2 + p { ... }` selecciona el `<p>` que sigue inmediatamente a un `<h2>`.
- **Selector de hermanos generales**: selecciona todos los elementos hermanos posteriores.
  - `h2 ~ p { ... }` selecciona todos los `<p>` que siguen a un `<h2>` dentro del mismo padre.

### 3. Selectores avanzados

- **Pseudo-clases**: seleccionan elementos en un estado específico.
  - `a:hover { ... }` aplica estilos cuando el mouse pasa sobre un enlace.
  - `input:focus { ... }` aplica estilos cuando un input está enfocado.
  - `li:first-child { ... }` selecciona el primer hijo `<li>` de su padre.
- **Pseudo-elementos**: seleccionan una parte de un elemento.
  - `p::first-line { ... }` selecciona la primera línea de un párrafo.
  - `p::before { ... }` inserta contenido antes de un párrafo.

## Ejemplos prácticos

```css
/* Selector de clase */
.destacado {
  background-color: yellow;
}

/* Selector de atributo */
input[required] {
  border: 2px solid red;
}

/* Selector descendiente y pseudo-clase */
nav ul li a:hover {
  color: orange;
}

/* Pseudo-elemento */
h1::after {
  content: " ✨";
}
```

## Resumen

Los selectores permiten apuntar a elementos HTML de manera precisa para aplicar estilos. Dominar la sintaxis y los diferentes tipos de selectores es esencial para escribir CSS eficiente y mantenible.
