# 9. Transitions and Animations

Las transiciones y animaciones en CSS permiten crear efectos visuales dinámicos y atractivos, mejorando la experiencia del usuario. A continuación se explican los conceptos clave y cómo implementarlos.

## 1. Transiciones (Transitions)

Permiten animar cambios suaves entre dos estados de una propiedad CSS.

**Propiedades principales:**

- `transition-property`: propiedad a animar
- `transition-duration`: duración de la transición
- `transition-timing-function`: aceleración (ease, linear, ease-in, etc.)
- `transition-delay`: retardo antes de iniciar

**Ejemplo:**

```css
.boton {
  background: #0074d9;
  color: #fff;
  transition: background 0.3s ease, transform 0.2s;
}
.boton:hover {
  background: #001f3f;
  transform: scale(1.1);
}
```

## 2. Animaciones (Animations)

Permiten crear secuencias de cambios más complejas usando `@keyframes`.

**Propiedades principales:**

- `animation-name`: nombre de la animación
- `animation-duration`: duración
- `animation-timing-function`: aceleración
- `animation-delay`: retardo
- `animation-iteration-count`: número de repeticiones
- `animation-direction`: dirección (normal, reverse, alternate)

## 3. Keyframes

Definen los estados intermedios de una animación.

**Ejemplo básico:**

```css
@keyframes mover {
  0% {
    transform: translateX(0);
    background: #ff4136;
  }
  100% {
    transform: translateX(200px);
    background: #2ecc40;
  }
}

.caja-animada {
  width: 100px;
  height: 100px;
  animation: mover 2s ease-in-out infinite alternate;
}
```

## 4. Ejemplo práctico de animación

```html
<div class="caja-animada"></div>
```

```css
@keyframes girar {
  from {
    transform: rotate(0deg);
  }
  to {
    transform: rotate(360deg);
  }
}

.caja-animada {
  width: 80px;
  height: 80px;
  background: #7fdbff;
  border-radius: 50%;
  animation: girar 1.5s linear infinite;
}
```

## Resumen

Las transiciones y animaciones en CSS permiten crear efectos visuales suaves y complejos sin JavaScript. Usando `transition` y `@keyframes`, puedes mejorar la interacción y el atractivo visual de cualquier sitio web.
