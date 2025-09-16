# Manipulación de Datos y Funciones de Agregación en SQL

## Manipulación de Datos

### INSERT INTO

Permite agregar nuevas filas a una tabla.

```sql
INSERT INTO tabla (columna1, columna2, ...)
VALUES (valor1, valor2, ...);
```

**Ejemplo:**

```sql
INSERT INTO empleados (id, nombre, salario)
VALUES (1, 'Ana', 2500);
```

---

### UPDATE

Modifica los valores de una o varias filas existentes.

```sql
UPDATE tabla
SET columna1 = valor1, columna2 = valor2
WHERE condición;
```

**Ejemplo:**

```sql
UPDATE empleados
SET salario = 3000
WHERE nombre = 'Ana';
```

---

### DELETE

Elimina filas de una tabla según una condición.

```sql
DELETE FROM tabla
WHERE condición;
```

**Ejemplo:**

```sql
DELETE FROM empleados
WHERE salario < 2000;
```

---

### TRUNCATE

Elimina **todas** las filas de una tabla rápidamente (no se puede deshacer y no activa triggers).

```sql
TRUNCATE TABLE tabla;
```

**Ejemplo:**

```sql
TRUNCATE TABLE empleados;
```

> **Nota:** `TRUNCATE` no es soportado por todos los motores SQL (por ejemplo, SQLite no lo soporta).

---

## Funciones de Agregación

Permiten realizar cálculos sobre un conjunto de filas y devolver un solo valor.

### COUNT

Cuenta el número de filas.

```sql
SELECT COUNT(*) FROM empleados;
```

### SUM

Suma los valores de una columna numérica.

```sql
SELECT SUM(salario) FROM empleados;
```

### AVG

Calcula el promedio de una columna numérica.

```sql
SELECT AVG(salario) FROM empleados;
```

### MIN y MAX

Obtienen el valor mínimo o máximo de una columna.

```sql
SELECT MIN(salario), MAX(salario) FROM empleados;
```

---

## GROUP BY

Agrupa filas que comparten un valor y permite aplicar funciones de agregación a cada grupo.

```sql
SELECT departamento, AVG(salario)
FROM empleados
GROUP BY departamento;
```

---

## HAVING

Filtra los resultados de una consulta agrupada (después de `GROUP BY`).

```sql
SELECT departamento, COUNT(*)
FROM empleados
GROUP BY departamento
HAVING COUNT(*) > 5;
```

---

## Resumen Visual

| Función     | Descripción       | Ejemplo                             |
| ----------- | ----------------- | ----------------------------------- |
| COUNT()     | Cuenta filas      | SELECT COUNT(\*) FROM empleados;    |
| SUM()       | Suma valores      | SELECT SUM(salario) FROM empleados; |
| AVG()       | Promedio          | SELECT AVG(salario) FROM empleados; |
| MIN()/MAX() | Mínimo/Máximo     | SELECT MIN(salario) FROM empleados; |
| GROUP BY    | Agrupa resultados | GROUP BY departamento               |
| HAVING      | Filtra grupos     | HAVING COUNT(\*) > 5                |

---

**¡Practica combinando estas funciones para analizar y manipular tus datos de manera eficiente!**
