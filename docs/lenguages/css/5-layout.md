# 5. Layout

El layout en CSS define cómo se distribuyen y organizan los elementos en la página. A continuación se explican las principales técnicas y propiedades para crear diseños modernos y responsivos.

## 1. Display

La propiedad `display` determina el tipo de caja de un elemento:

- `block`: ocupa todo el ancho disponible (ej: `<div>`, `<p>`)
- `inline`: ocupa solo el ancho de su contenido (ej: `<span>`, `<a>`)
- `inline-block`: como inline, pero permite dimensiones
- `none`: oculta el elemento
- `flex`: activa Flexbox
- `grid`: activa Grid

**Ejemplo:**

```css
.bloque {
  display: block;
}
.en-linea {
  display: inline;
}
```

## 2. Position

Controla el posicionamiento de los elementos:

- `static`: flujo normal (por defecto)
- `relative`: relativo a su posición original
- `absolute`: relativo al ancestro posicionado más cercano
- `fixed`: relativo a la ventana del navegador
- `sticky`: alterna entre relative y fixed según el scroll

**Ejemplo:**

```css
.fijo {
  position: fixed;
  top: 0;
  right: 0;
}
.absoluto {
  position: absolute;
  left: 50px;
  top: 20px;
}
```

## 3. Float y Clear

`float` permite que un elemento flote a la izquierda o derecha, y el contenido fluye a su alrededor. `clear` evita que los elementos se sitúen junto a elementos flotados.

**Ejemplo:**

```css
.imagen {
  float: left;
  margin-right: 10px;
}
.texto {
  clear: both;
}
```

## 4. Flexbox

Flexbox es un sistema de layout unidimensional para distribuir espacio y alinear elementos en un contenedor.

**Propiedades principales:**

- `display: flex;`
- `flex-direction`: dirección de los ítems (row, column)
- `justify-content`: alineación horizontal
- `align-items`: alineación vertical

**Ejemplo:**

```css
.contenedor {
  display: flex;
  flex-direction: row;
  justify-content: space-between;
  align-items: center;
}
.item {
  flex: 1;
}
```

## 5. Grid

Grid es un sistema bidimensional para crear layouts complejos con filas y columnas.

**Propiedades principales:**

- `display: grid;`
- `grid-template-columns`: define columnas
- `grid-template-rows`: define filas
- `gap`: espacio entre celdas

**Ejemplo:**

```css
.grid {
  display: grid;
  grid-template-columns: 1fr 2fr 1fr;
  grid-template-rows: auto 100px;
  gap: 10px;
}
.celda {
  background: #e0e0e0;
}
```

## 6. Responsive Design

El diseño responsivo adapta la web a diferentes tamaños de pantalla usando media queries y unidades flexibles.

**Ejemplo básico:**

```css
@media (max-width: 600px) {
  .contenedor {
    flex-direction: column;
  }
  .grid {
    grid-template-columns: 1fr;
  }
}
```

**Unidades recomendadas:** `%`, `vw`, `vh`, `em`, `rem`.

## Resumen

CSS ofrece múltiples herramientas para crear layouts flexibles y modernos: display, position, float, Flexbox, Grid y media queries para diseño responsivo. Dominar estas técnicas es clave para construir interfaces adaptables y profesionales.
