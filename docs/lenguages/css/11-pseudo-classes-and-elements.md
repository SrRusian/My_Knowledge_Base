# 11. Pseudo-classes and Pseudo-elements

Las pseudo-clases y pseudo-elementos en CSS permiten seleccionar y estilizar elementos en estados o partes específicas, sin necesidad de clases adicionales en el HTML.

## 1. Pseudo-clases

Las **pseudo-clases** seleccionan elementos según su estado o posición en el DOM.

- `:hover`: cuando el mouse está sobre el elemento.
- `:active`: cuando el elemento está activo (ej. clic).
- `:focus`: cuando el elemento tiene el foco (inputs, enlaces).
- `:visited`: enlaces ya visitados.
- `:first-child`, `:last-child`: primer/último hijo de su padre.
- `:nth-child(n)`: selecciona el enésimo hijo.
- `:not(selector)`: selecciona los elementos que no cumplen el selector.

**Ejemplos:**

```css
a:hover {
  color: #ff4136;
}
button:active {
  background: #0074d9;
}
input:focus {
  border-color: #2ecc40;
}
li:nth-child(odd) {
  background: #f0f0f0;
}
li:not(.destacado) {
  opacity: 0.7;
}
```

## 2. Pseudo-elementos

Los **pseudo-elementos** permiten seleccionar y estilizar partes específicas de un elemento.

- `::before`: inserta contenido antes del contenido real.
- `::after`: inserta contenido después del contenido real.
- `::first-line`: selecciona la primera línea de un texto.
- `::first-letter`: selecciona la primera letra.

**Ejemplos:**

```css
p::first-line {
  font-weight: bold;
}
p::first-letter {
  font-size: 2em;
  color: #0074d9;
}
.alerta::before {
  content: "⚠️ ";
  color: orange;
}
.alerta::after {
  content: " ✔";
  color: green;
}
```

## 3. Combinando pseudo-clases y pseudo-elementos

Puedes combinarlos para lograr efectos avanzados:

```css
a:hover::after {
  content: " (enlace)";
  font-size: 0.9em;
  color: #aaa;
}
```

## 4. Otras pseudo-clases útiles

- `:checked`: elementos seleccionados (checkbox, radio).
- `:disabled` y `:enabled`: campos de formulario.
- `:empty`: elementos sin hijos.
- `:nth-of-type(n)`: enésimo hijo de un tipo específico.

**Ejemplo:**

```css
input:checked + label {
  font-weight: bold;
}
input:disabled {
  background: #eee;
}
```

## Resumen

Las pseudo-clases y pseudo-elementos amplían el poder de los selectores CSS, permitiendo estilos dinámicos y personalizados sin modificar el HTML.
