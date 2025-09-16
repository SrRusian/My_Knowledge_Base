# Consultas Básicas en SQL

Las consultas básicas permiten extraer, filtrar y ordenar información de las tablas de una base de datos. Aquí tienes los comandos y patrones más usados:

---

## SELECT: Consultar datos

Selecciona todas las columnas de una tabla:

```sql
SELECT * FROM empleados;
```

Selecciona columnas específicas:

```sql
SELECT nombre, salario FROM empleados;
```

---

## SELECT DISTINCT: Valores únicos

Devuelve solo los valores distintos de una columna:

```sql
SELECT DISTINCT departamento FROM empleados;
```

---

## WHERE y operadores de comparación

Filtra filas según condiciones:

```sql
SELECT * FROM empleados WHERE salario > 2000;
SELECT * FROM empleados WHERE departamento = 'Ventas';
```

**Operadores de comparación:**

- `=` igual a
- `!=` distinto de
- `>` mayor que
- `<` menor que
- `>=` mayor o igual
- `<=` menor o igual

Puedes combinar condiciones con `AND` y `OR`:

```sql
SELECT * FROM empleados WHERE salario > 2000 AND departamento = 'Ventas';
```

---

## LIKE y patrones

Busca coincidencias de texto usando comodines:

```sql
SELECT * FROM empleados WHERE nombre LIKE 'A%';      -- Comienza con A
SELECT * FROM empleados WHERE nombre LIKE '%ez';     -- Termina con 'ez'
SELECT * FROM empleados WHERE nombre LIKE '%an%';    -- Contiene 'an'
```

El símbolo `%` representa cualquier secuencia de caracteres.

---

## BETWEEN, IN y NOT IN

**BETWEEN:** Filtra valores dentro de un rango (incluye los extremos):

```sql
SELECT * FROM empleados WHERE salario BETWEEN 2000 AND 4000;
```

**IN:** Busca valores que estén en una lista:

```sql
SELECT * FROM empleados WHERE departamento IN ('Ventas', 'Marketing');
```

**NOT IN:** Excluye valores de una lista:

```sql
SELECT * FROM empleados WHERE id NOT IN (1, 2, 3);
```

---

## ORDER BY: Ordenar resultados

Ordena los resultados por una o más columnas (ascendente por defecto):

```sql
SELECT nombre, salario FROM empleados ORDER BY salario;
SELECT nombre, salario FROM empleados ORDER BY salario DESC;
```

Puedes ordenar por varias columnas:

```sql
SELECT nombre, salario, departamento FROM empleados ORDER BY departamento, salario DESC;
```

---

## LIMIT / TOP / FETCH: Limitar resultados

**LIMIT** (MySQL, PostgreSQL, SQLite):

```sql
SELECT * FROM empleados LIMIT 5;
```

**TOP** (SQL Server):

```sql
SELECT TOP 5 * FROM empleados;
```

**FETCH** (estándar SQL/Oracle):

```sql
SELECT * FROM empleados ORDER BY salario DESC FETCH FIRST 5 ROWS ONLY;
```

---

Estas herramientas te permiten construir consultas potentes y flexibles para analizar y extraer información relevante de tus bases de datos.
