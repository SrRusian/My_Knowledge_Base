# 12. Best Practices

Aplicar buenas prácticas en CSS mejora la legibilidad, mantenibilidad y escalabilidad de los estilos. Aquí se resumen los puntos clave para escribir CSS profesional y eficiente.

## 1. Organización del código

- Agrupa reglas relacionadas por componentes o secciones.
- Usa archivos separados para grandes proyectos (por ejemplo, un archivo por módulo o página).
- Ordena las propiedades de forma lógica (alfabéticamente o por tipo: layout, box, text, visual).

**Ejemplo:**

```css
/* === Header === */
header {
  background: #222;
  color: #fff;
  padding: 1em 2em;
}

/* === Navegación === */
.nav {
  display: flex;
  gap: 1em;
}
```

## 2. Comentarios

- Usa comentarios para explicar bloques de código, hacks o decisiones importantes.
- Separa secciones con comentarios claros.

```css
/* Botón principal: color y hover */
.btn-primary {
  background: #0074d9;
  color: #fff;
}
.btn-primary:hover {
  background: #005fa3;
}
```

## 3. Convenciones de nombres

- Usa nombres descriptivos y consistentes para clases e IDs.
- Prefiere nombres en inglés y en minúsculas, separados por guiones (`.main-title`, `.user-card`).
- Considera metodologías como BEM (Block\_\_Element--Modifier) para proyectos grandes.

**Ejemplo BEM:**

```css
.card__title {
}
.card__button--active {
}
```

## 4. Mantenibilidad

- Evita la repetición de código usando clases reutilizables.
- Usa variables CSS (`:root { --color-primary: #0074D9; }`) para colores y tamaños frecuentes.
- Limita el uso de selectores muy específicos o anidados en exceso.
- Elimina reglas no utilizadas regularmente.

**Ejemplo de variables:**

```css
:root {
  --color-accent: #ff4136;
  --radius: 8px;
}
.alert {
  background: var(--color-accent);
  border-radius: var(--radius);
}
```

## 5. Rendimiento y compatibilidad

- Minimiza y comprime los archivos CSS en producción.
- Usa prefijos automáticos (autoprefixer) para compatibilidad con navegadores antiguos.
- Prueba los estilos en diferentes navegadores y dispositivos.

## 6. Accesibilidad

- Asegura suficiente contraste de color.
- Usa unidades relativas (`em`, `rem`, `%`) para tamaños.
- No uses solo color para transmitir información.

## Resumen

Un CSS bien organizado, comentado y mantenible facilita el trabajo en equipo y la evolución del proyecto. Adopta convenciones y automatizaciones para asegurar calidad y escalabilidad.
