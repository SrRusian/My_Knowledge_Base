# 7. Colors and Backgrounds

El manejo de colores y fondos en CSS permite crear interfaces visualmente atractivas y personalizadas. A continuación se explican las principales técnicas y propiedades.

## 1. Colores (Colors)

CSS permite definir colores de varias formas:

- **Nombres**: `red`, `blue`, `green`, etc.
- **Hexadecimal**: `#ff5733`, `#333`
- **RGB/RGBA**: `rgb(255, 87, 51)`, `rgba(255, 87, 51, 0.5)`
- **HSL/HSLA**: `hsl(12, 100%, 60%)`, `hsla(12, 100%, 60%, 0.7)`

**Ejemplo:**

```css
.texto {
  color: #0074d9;
}
.fondo {
  background-color: hsl(200, 80%, 90%);
}
```

## 2. Gradientes (Gradients)

Permiten crear transiciones suaves entre dos o más colores.

- **Lineal:**
  ```css
  .gradiente-lineal {
    background: linear-gradient(90deg, #ff7e5f, #feb47b);
  }
  ```
- **Radial:**
  ```css
  .gradiente-radial {
    background: radial-gradient(circle, #43cea2, #185a9d);
  }
  ```

## 3. Imágenes de fondo (Background Images)

Permiten usar imágenes como fondo de un elemento.

```css
.fondo-imagen {
  background-image: url("imagen.jpg");
  background-size: cover;
  background-position: center;
  background-repeat: no-repeat;
}
```

## 4. Opacidad (Opacity)

Controla la transparencia de un elemento.

- `opacity`: valor entre 0 (transparente) y 1 (opaco).
  ```css
  .transparente {
    opacity: 0.5;
  }
  ```
- También se puede usar el canal alfa en `rgba` o `hsla` para definir la opacidad solo del color de fondo o texto.
  ```css
  .fondo-transparente {
    background-color: rgba(0, 0, 0, 0.3);
  }
  ```

## 5. Otras propiedades útiles

- `background-attachment`: fija el fondo al hacer scroll (`scroll`, `fixed`).
- `background-blend-mode`: mezcla colores y fondos.
- `background-clip`: define hasta dónde se extiende el fondo.

**Ejemplo avanzado:**

```css
.fondo-avanzado {
  background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)),
    url("paisaje.jpg");
  background-size: cover;
  background-blend-mode: multiply;
}
```

## Resumen

CSS ofrece gran flexibilidad para trabajar con colores, gradientes, imágenes de fondo y opacidad, permitiendo crear diseños modernos y atractivos.
