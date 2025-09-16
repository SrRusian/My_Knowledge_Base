# Estructura de una Base de Datos Relacional

## Tablas, filas y columnas

Una base de datos relacional organiza la información en **tablas**. Cada tabla representa un conjunto de datos sobre un tema específico (por ejemplo, usuarios, productos, ventas).

- **Tabla:** Es una estructura similar a una hoja de cálculo, formada por filas y columnas.
- **Columna (campo):** Define un atributo o característica de los datos (ejemplo: nombre, edad, correo).
- **Fila (registro):** Es una instancia individual de la tabla, con valores para cada columna.

Ejemplo de tabla `usuarios`:

| id  | nombre     | email          | edad |
| --- | ---------- | -------------- | ---- |
| 1   | Ana Pérez  | ana@email.com  | 25   |
| 2   | Luis Gómez | luis@email.com | 31   |
| 3   | Sara Ruiz  | sara@email.com | 28   |

---

## Tipos de datos

Cada columna de una tabla tiene un tipo de dato que determina el tipo de valores que puede almacenar. Los tipos más comunes en SQL son:

- **INTEGER:** Números enteros (ej: 1, 42, -7)
- **REAL / FLOAT / DOUBLE:** Números decimales (ej: 3.14, -0.5)
- **TEXT / VARCHAR:** Cadenas de texto (ej: 'Hola', 'usuario123')
- **DATE:** Fechas (ej: '2025-09-15')
- **BOOLEAN:** Valores verdadero/falso (algunos SGBD)

Ejemplo de definición de tabla con tipos de datos:

```sql
CREATE TABLE productos (
	id INTEGER PRIMARY KEY,
	nombre TEXT,
	precio REAL,
	fecha_creacion DATE
);
```

---

## Claves primarias y foráneas

- **Clave primaria (PRIMARY KEY):** Es una columna (o conjunto de columnas) cuyos valores identifican de forma única cada fila de la tabla. No puede haber valores repetidos ni nulos.
- **Clave foránea (FOREIGN KEY):** Es una columna que referencia la clave primaria de otra tabla, estableciendo una relación entre ambas.

Ejemplo:

```sql
CREATE TABLE autores (
	id INTEGER PRIMARY KEY,
	nombre TEXT
);

CREATE TABLE libros (
	id INTEGER PRIMARY KEY,
	titulo TEXT,
	autor_id INTEGER,
	FOREIGN KEY (autor_id) REFERENCES autores(id)
);
```

En este ejemplo, `autor_id` en la tabla `libros` es una clave foránea que apunta a `id` en la tabla `autores`.

---

## Relaciones entre tablas

Las relaciones permiten vincular información entre diferentes tablas, evitando la duplicidad de datos y facilitando consultas complejas.

Tipos de relaciones más comunes:

- **Uno a uno (1:1):** Un registro de una tabla se relaciona con un solo registro de otra tabla.
- **Uno a muchos (1:N):** Un registro de una tabla se relaciona con varios registros de otra (ejemplo: un autor puede tener muchos libros).
- **Muchos a muchos (N:M):** Varios registros de una tabla se relacionan con varios de otra (requiere una tabla intermedia).

Ejemplo de relación uno a muchos:

| autores | libros       |
| ------- | ------------ | ---- | --------- | --------- |
| id      | nombre       | id   | titulo    | autor_id  |
| ----    | ------------ | ---- | --------  | --------- |
| 1       | Borges       | 1    | Ficciones | 1         |
| 2       | Cortázar     | 2    | Rayuela   | 2         |
|         |              | 3    | El Aleph  | 1         |

Aquí, Borges (id=1) es autor de dos libros.

---

Comprender la estructura de tablas, tipos de datos y relaciones es la base para diseñar y consultar bases de datos relacionales de manera eficiente y profesional.
