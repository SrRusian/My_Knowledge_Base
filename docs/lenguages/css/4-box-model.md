# 4. Box Model

El **modelo de caja** (Box Model) es uno de los conceptos más importantes en CSS. Define cómo se estructura y se visualiza cada elemento en la página web.

## ¿Qué es el Box Model?

Cada elemento HTML se representa como una caja rectangular compuesta por varias capas:

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

## Partes del modelo de caja

- **Content**: el contenido real del elemento (texto, imagen, etc.).
- **Padding**: espacio entre el contenido y el borde.
- **Border**: el borde que rodea el padding y el contenido.
- **Margin**: espacio exterior entre el borde y otros elementos.

## Visualización de cada parte

```css
.box {
  width: 200px;
  height: 100px;
  padding: 20px;
  border: 5px solid #0074d9;
  margin: 30px;
  background-color: #f0f8ff;
}
```

**Explicación:**

- `width` y `height` definen el tamaño del área de contenido.
- `padding` agrega espacio interno.
- `border` dibuja un borde alrededor del padding.
- `margin` separa la caja de otros elementos.

## Cálculo del tamaño total de la caja

Por defecto, el tamaño total de un elemento es:

```
ancho total = width + padding izquierdo + padding derecho + border izquierdo + border derecho + margin izquierdo + margin derecho
alto total  = height + padding superior + padding inferior + border superior + border inferior + margin superior + margin inferior
```

## box-sizing

La propiedad `box-sizing` controla cómo se calcula el tamaño de la caja:

- `content-box` (valor por defecto): `width` y `height` solo incluyen el área de contenido.
- `border-box`: `width` y `height` incluyen padding y border.

**Ejemplo:**

```css
.box {
  box-sizing: border-box;
}
```

Esto facilita el diseño, ya que el tamaño total de la caja no se expande al agregar padding o border.

## Visualización práctica

```html
<div class="box">Contenido</div>
```

```css
.box {
  width: 200px;
  padding: 20px;
  border: 4px dashed #333;
  margin: 15px;
  background: #e0f7fa;
}
```

## Resumen

El modelo de caja es esencial para entender el espaciado y la disposición de los elementos en CSS. Dominar margin, padding, border y box-sizing permite crear diseños precisos y responsivos.
