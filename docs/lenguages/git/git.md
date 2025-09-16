# Git: Control de Versiones Local

Git es un sistema de control de versiones distribuido creado por Linus Torvalds en 2005. Permite rastrear cambios en archivos, colaborar y mantener el historial de un proyecto de software de forma eficiente y segura.

---

## ¿Qué es Git?

- Herramienta para gestionar versiones de código y archivos.
- Permite trabajar en equipo sin sobrescribir cambios.
- Guarda el historial completo de modificaciones.
- Es local y distribuido: cada copia del repositorio tiene todo el historial.

---

## Repositorios Locales

Un **repositorio local** es una carpeta en tu computadora donde Git rastrea los cambios.

- Inicializa un repo:

```bash
git init
```

Esto crea una carpeta `.git` con toda la información del historial y configuración.

---

## Estructura: Working Directory y Staging Area

- **Working directory:** Carpeta de trabajo donde editas archivos.
- **Staging area (index):** Zona temporal donde preparas los cambios antes de guardarlos en el historial.

---

## Comandos Básicos de Git

### git status

Muestra el estado de los archivos (modificados, nuevos, listos para commit).

```bash
git status
```

### git add

Agrega archivos al staging area.

```bash
git add archivo.txt      # Un archivo
git add .                # Todos los archivos modificados
git add *.html           # Todos los .html
```

### git commit

Guarda los cambios del staging area en el historial del repositorio.

```bash
git commit -m "Mensaje descriptivo"
```

### git log

Muestra el historial de commits.

```bash
git log
```

### git diff

Muestra las diferencias entre archivos modificados y el último commit.

```bash
git diff
```

---

## Ramas (Branches)

Las **ramas** permiten desarrollar nuevas características o corregir errores sin afectar el código principal.

```bash
git branch                # Lista ramas
git branch nueva-rama     # Crea rama
git switch nueva-rama     # Cambia de rama
git checkout -b rama2     # Crea y cambia a rama2
```

---

## Flujo de Trabajo Básico

1. Edita archivos en el working directory.
2. Usa `git add` para preparar los cambios.
3. Haz `git commit` para guardar un snapshot en el historial.
4. Repite para cada conjunto de cambios.

---

## Merges y Resolución de Conflictos

### git merge

Combina los cambios de una rama en otra.

```bash
git merge rama-que-quieres-unir
```

Si hay conflictos (cambios incompatibles en el mismo archivo), Git te pedirá resolverlos manualmente antes de hacer commit.

---

## Buenas Prácticas

- Escribe mensajes de commit claros y descriptivos.
- Haz commits pequeños y frecuentes.
- Usa ramas para nuevas características o fixes.
- Revisa el estado con `git status` antes de cada commit.
- No subas archivos sensibles o temporales (usa `.gitignore`).

---

## Resumen Visual

| Concepto         | Comando/Acción clave    | ¿Para qué sirve?                   |
| ---------------- | ----------------------- | ---------------------------------- |
| Inicializar repo | git init                | Crear repo local                   |
| Ver estado       | git status              | Archivos modificados, listos, etc. |
| Agregar cambios  | git add archivo.txt / . | Preparar archivos para commit      |
| Guardar cambios  | git commit -m "mensaje" | Guardar snapshot en historial      |
| Ver historial    | git log                 | Ver commits previos                |
| Ramas            | git branch, git switch  | Crear/cambiar ramas                |
| Unir ramas       | git merge               | Combinar cambios                   |
| Ver diferencias  | git diff                | Comparar archivos                  |

---

**Git es la base del control de versiones moderno. Domina estos comandos para trabajar de forma profesional y segura.**
