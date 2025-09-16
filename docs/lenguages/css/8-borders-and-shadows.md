# 8. Borders and Shadows

Los bordes y las sombras en CSS permiten resaltar, separar y dar profundidad a los elementos de una página web. A continuación se explican las propiedades más importantes y cómo usarlas.

## 1. Bordes (Borders)

La propiedad `border` define el ancho, estilo y color del borde de un elemento.

**Ejemplo básico:**

```css
.caja {
  border: 2px solid #0074d9;
}
```

**Propiedades relacionadas:**

- `border-width`: ancho del borde (`1px`, `2em`, etc.)
- `border-style`: estilo (`solid`, `dashed`, `dotted`, `double`, etc.)
- `border-color`: color del borde
- `border-top`, `border-right`, `border-bottom`, `border-left`: bordes individuales

## 2. Bordes redondeados (border-radius)

Permite redondear las esquinas de los elementos.

**Ejemplo:**

```css
.redondeado {
  border-radius: 12px;
}
.circulo {
  border-radius: 50%;
}
```

## 3. Sombra de caja (box-shadow)

Agrega una sombra alrededor de un elemento, creando profundidad.

**Sintaxis:**

```
box-shadow: offset-x offset-y blur-radius color [spread-radius] [inset];
```

**Ejemplo:**

```css
.sombra {
  box-shadow: 4px 4px 12px rgba(0, 0, 0, 0.2);
}
.sombra-interna {
  box-shadow: inset 0 2px 8px #aaa;
}
```

## 4. Sombra de texto (text-shadow)

Permite agregar sombra al texto para mejorar la legibilidad o crear efectos visuales.

**Sintaxis:**

```
text-shadow: offset-x offset-y blur-radius color;
```

**Ejemplo:**

```css
.texto-sombra {
  text-shadow: 2px 2px 6px #888;
}
.texto-brillante {
  text-shadow: 0 0 8px #fff, 0 0 16px #0ff;
}
```

## Resumen

Las propiedades de bordes y sombras en CSS permiten crear elementos visualmente atractivos, resaltando secciones y mejorando la experiencia de usuario con efectos simples y eficientes.
