# Joins (Uniones de Tablas) en SQL

Las uniones permiten combinar datos de dos o más tablas relacionadas, facilitando análisis complejos y consultas avanzadas.

---

## INNER JOIN

Devuelve solo las filas que tienen coincidencias en ambas tablas.

```sql
SELECT empleados.nombre, departamentos.nombre AS departamento
FROM empleados
INNER JOIN departamentos ON empleados.depto_id = departamentos.id;
```

---

## LEFT JOIN (o LEFT OUTER JOIN)

Devuelve todas las filas de la tabla izquierda y las coincidentes de la derecha. Si no hay coincidencia, rellena con NULL.

```sql
SELECT empleados.nombre, departamentos.nombre AS departamento
FROM empleados
LEFT JOIN departamentos ON empleados.depto_id = departamentos.id;
```

---

## RIGHT JOIN (o RIGHT OUTER JOIN)

Devuelve todas las filas de la tabla derecha y las coincidentes de la izquierda. Si no hay coincidencia, rellena con NULL.

```sql
SELECT empleados.nombre, departamentos.nombre AS departamento
FROM empleados
RIGHT JOIN departamentos ON empleados.depto_id = departamentos.id;
```

> **Nota:** No todos los motores SQL soportan RIGHT JOIN (por ejemplo, SQLite no lo soporta).

---

## FULL OUTER JOIN

Devuelve todas las filas cuando hay coincidencia en una u otra tabla. Si no hay coincidencia, rellena con NULL.

```sql
SELECT empleados.nombre, departamentos.nombre AS departamento
FROM empleados
FULL OUTER JOIN departamentos ON empleados.depto_id = departamentos.id;
```

> **Nota:** No todos los motores SQL soportan FULL OUTER JOIN (por ejemplo, SQLite no lo soporta).

---

## CROSS JOIN

Devuelve el producto cartesiano de ambas tablas (todas las combinaciones posibles).

```sql
SELECT e.nombre, d.nombre AS departamento
FROM empleados e
CROSS JOIN departamentos d;
```

---

## SELF JOIN

Permite unir una tabla consigo misma, útil para jerarquías o relaciones recursivas.

```sql
SELECT a.nombre AS empleado, b.nombre AS jefe
FROM empleados a
INNER JOIN empleados b ON a.jefe_id = b.id;
```

---

## UNION y UNION ALL

Permiten combinar los resultados de dos o más consultas SELECT.

### UNION

Une los resultados y elimina duplicados.

```sql
SELECT nombre FROM empleados
UNION
SELECT nombre FROM clientes;
```

### UNION ALL

Une los resultados y **no** elimina duplicados.

```sql
SELECT nombre FROM empleados
UNION ALL
SELECT nombre FROM clientes;
```

---

## Resumen Visual

| JOIN/Operación  | ¿Qué devuelve?                                  |
| --------------- | ----------------------------------------------- |
| INNER JOIN      | Coincidencias en ambas tablas                   |
| LEFT JOIN       | Todas las filas de la izquierda + coincidencias |
| RIGHT JOIN      | Todas las filas de la derecha + coincidencias   |
| FULL OUTER JOIN | Todas las filas de ambas tablas                 |
| CROSS JOIN      | Todas las combinaciones posibles                |
| SELF JOIN       | Relaciona una tabla consigo misma               |
| UNION           | Une resultados, elimina duplicados              |
| UNION ALL       | Une resultados, mantiene duplicados             |

---

**¡Practica estos JOINs para dominar la combinación de datos en SQL!**
