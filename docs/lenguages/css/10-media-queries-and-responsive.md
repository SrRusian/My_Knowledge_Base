# 10. Media Queries and Responsive Design

El diseño responsivo permite que los sitios web se adapten a diferentes tamaños de pantalla y dispositivos. Las media queries son la herramienta principal en CSS para lograrlo.

## 1. ¿Qué son las Media Queries?

Las **media queries** permiten aplicar estilos CSS solo cuando se cumplen ciertas condiciones, como el ancho de la pantalla, la orientación o la resolución.

**Sintaxis básica:**

```css
@media (condición) {
  /* Estilos aquí */
}
```

**Ejemplo:**

```css
@media (max-width: 600px) {
  body {
    font-size: 1.1em;
  }
  .menu {
    flex-direction: column;
  }
}
```

## 2. Breakpoints

Los **breakpoints** son los puntos donde el diseño cambia para adaptarse a diferentes dispositivos. Los valores más comunes son:

- 320px – 480px: móviles pequeños
- 481px – 768px: tablets
- 769px – 1024px: pantallas medianas
- 1025px en adelante: escritorio

**Ejemplo de varios breakpoints:**

```css
@media (max-width: 480px) {
  .contenedor {
    padding: 8px;
  }
}
@media (min-width: 481px) and (max-width: 768px) {
  .contenedor {
    padding: 16px;
  }
}
@media (min-width: 769px) {
  .contenedor {
    padding: 32px;
  }
}
```

## 3. Mobile First

La estrategia **mobile first** consiste en diseñar primero para dispositivos móviles y luego adaptar el diseño a pantallas más grandes usando media queries con `min-width`.

**Ejemplo:**

```css
.boton {
  font-size: 1em;
  padding: 10px 20px;
}
@media (min-width: 600px) {
  .boton {
    font-size: 1.2em;
    padding: 14px 28px;
  }
}
```

## 4. Otras condiciones útiles

- `orientation: portrait` o `landscape`
- `resolution: 2dppx` (pantallas retina)
- `hover: none` (dispositivos táctiles)

**Ejemplo:**

```css
@media (orientation: landscape) {
  .banner {
    height: 200px;
  }
}
```

## Resumen

Las media queries y el enfoque mobile first son esenciales para crear sitios web adaptables y accesibles en cualquier dispositivo. Utiliza breakpoints estratégicos y condiciones específicas para lograr un diseño verdaderamente responsivo.
