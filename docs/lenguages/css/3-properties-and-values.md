# 3. Properties and Values

En CSS, las **propiedades** definen qué aspecto tendrá un elemento, mientras que los **valores** determinan cómo se aplican esas propiedades. A continuación se describen las propiedades más comunes, los tipos de valores y las unidades utilizadas.

## Propiedades comunes

### 1. Color

- `color`: color del texto.
- `background-color`: color de fondo.

```css
p {
  color: #333;
  background-color: #f0f0f0;
}
```

### 2. Fondo (Background)

- `background-image`: imagen de fondo.
- `background-repeat`: repetición de la imagen.
- `background-size`: tamaño de la imagen de fondo.

```css
body {
  background-image: url("fondo.png");
  background-repeat: no-repeat;
  background-size: cover;
}
```

### 3. Fuente (Font)

- `font-family`: familia tipográfica.
- `font-size`: tamaño de fuente.
- `font-weight`: grosor de la fuente.
- `font-style`: estilo (normal, italic).

```css
h1 {
  font-family: "Arial", sans-serif;
  font-size: 2em;
  font-weight: bold;
  font-style: italic;
}
```

### 4. Borde (Border)

- `border`: borde completo (ancho, estilo, color).
- `border-radius`: esquinas redondeadas.

```css
img {
  border: 2px solid #555;
  border-radius: 8px;
}
```

### 5. Espaciado (Spacing)

- `margin`: espacio exterior.
- `padding`: espacio interior.

```css
.caja {
  margin: 20px;
  padding: 10px 15px;
}
```

### 6. Dimensiones

- `width`: ancho.
- `height`: alto.

```css
.banner {
  width: 100%;
  height: 300px;
}
```

### 7. Visualización y posición

- `display`: tipo de caja (block, inline, flex, grid, etc.).
- `position`: posicionamiento (static, relative, absolute, fixed, sticky).
- `top`, `right`, `bottom`, `left`: desplazamiento.

```css
.menu {
  display: flex;
  position: fixed;
  top: 0;
  left: 0;
}
```

## Valores y unidades

### Tipos de valores

- **Palabras clave**: `auto`, `none`, `block`, `inline`, `center`, etc.
- **Colores**: nombres (`red`), hexadecimales (`#ff0000`), RGB (`rgb(255,0,0)`), RGBA, HSL.
- **URLs**: para imágenes de fondo, fuentes, etc. `url('imagen.png')`
- **Números**: para tamaños, bordes, opacidad, etc.

### Unidades más usadas

- **px**: píxeles (absoluto)
- **em**: relativo al tamaño de fuente del elemento
- **rem**: relativo al tamaño de fuente raíz (`html`)
- **%**: porcentaje respecto al contenedor
- **vw/vh**: ancho/alto del viewport

**Ejemplo de unidades:**

```css
.texto {
  font-size: 1.2rem;
  margin-bottom: 2em;
  width: 80%;
  max-width: 600px;
}
```

## Resumen

CSS ofrece una gran variedad de propiedades para controlar el diseño y la presentación de los elementos. Comprender los valores y unidades es esencial para crear interfaces flexibles y responsivas.
