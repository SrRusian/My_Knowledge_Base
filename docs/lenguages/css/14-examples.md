# 14. Examples and Recipes

A continuación se presentan ejemplos prácticos y recetas CSS para resolver problemas comunes de diseño.

## 1. Centrar elementos

### Centrar horizontal y verticalmente con Flexbox

```css
.centrar-flex {
  display: flex;
  justify-content: center;
  align-items: center;
  height: 300px;
}
```

```html
<div class="centrar-flex">
  <div>Contenido centrado</div>
</div>
```

### Centrar con Grid

```css
.centrar-grid {
  display: grid;
  place-items: center;
  height: 300px;
}
```

## 2. Menú de navegación horizontal

```css
.menu {
  display: flex;
  gap: 2em;
  background: #222;
  padding: 1em;
}
.menu a {
  color: #fff;
  text-decoration: none;
  font-weight: bold;
}
.menu a:hover {
  color: #ffdc00;
}
```

```html
<nav class="menu">
  <a href="#">Inicio</a>
  <a href="#">Servicios</a>
  <a href="#">Contacto</a>
</nav>
```

## 3. Tarjeta (Card) simple

```css
.card {
  background: #fff;
  border-radius: 10px;
  box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
  padding: 1.5em;
  max-width: 320px;
  margin: 1em auto;
}
.card h3 {
  margin-top: 0;
}
```

```html
<div class="card">
  <h3>Título de la tarjeta</h3>
  <p>Descripción breve o contenido de la tarjeta.</p>
</div>
```

## 4. Layout de dos columnas

```css
.layout-dos-columnas {
  display: grid;
  grid-template-columns: 1fr 2fr;
  gap: 2em;
}
```

```html
<div class="layout-dos-columnas">
  <aside>Barra lateral</aside>
  <main>Contenido principal</main>
</div>
```

## 5. Layout responsivo con media queries

```css
.layout-responsivo {
  display: flex;
  gap: 1em;
}
.layout-responsivo > div {
  flex: 1;
}
@media (max-width: 600px) {
  .layout-responsivo {
    flex-direction: column;
  }
}
```

```html
<div class="layout-responsivo">
  <div>Columna 1</div>
  <div>Columna 2</div>
</div>
```

## Resumen

Estos ejemplos cubren patrones comunes en CSS. Puedes combinarlos y adaptarlos según las necesidades de tu proyecto.
