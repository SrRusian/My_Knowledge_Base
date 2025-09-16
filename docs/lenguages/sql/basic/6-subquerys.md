# Subconsultas (Subqueries) en SQL

Las subconsultas permiten anidar una consulta dentro de otra, haciendo posible resolver problemas complejos de forma elegante y eficiente.

---

## ¿Qué es una Subconsulta?

Es una consulta SQL que se encuentra dentro de otra consulta principal. Se encierra entre paréntesis y puede ubicarse en SELECT, WHERE o FROM.

---

## Subconsultas en SELECT

Permiten calcular valores para cada fila del resultado.

```sql
SELECT nombre,
	(SELECT AVG(salario) FROM empleados) AS salario_promedio
FROM empleados;
```

En este ejemplo, cada fila muestra el salario promedio calculado por la subconsulta.

---

## Subconsultas en WHERE

Filtran resultados usando el resultado de otra consulta.

```sql
SELECT nombre, salario
FROM empleados
WHERE salario > (SELECT AVG(salario) FROM empleados);
```

Devuelve empleados cuyo salario es mayor al promedio.

---

## Subconsultas en FROM

Permiten crear una tabla temporal para la consulta principal.

```sql
SELECT departamento, salario_promedio
FROM (
	SELECT departamento, AVG(salario) AS salario_promedio
	FROM empleados
	GROUP BY departamento
) AS deptos;
```

---

## Subconsultas Correlacionadas

Dependen de la fila actual de la consulta principal. Se evalúan para cada fila.

```sql
SELECT nombre, salario
FROM empleados e1
WHERE salario > (
	SELECT AVG(salario)
	FROM empleados e2
	WHERE e2.departamento = e1.departamento
);
```

Aquí, el promedio se calcula por departamento para cada empleado.

---

## Subconsultas No Correlacionadas

No dependen de la fila actual, se evalúan una sola vez.

```sql
SELECT nombre
FROM empleados
WHERE salario = (SELECT MAX(salario) FROM empleados);
```

Devuelve el empleado con el salario más alto.

---

## Consejos y Buenas Prácticas

- Usa subconsultas para simplificar consultas complejas.
- Prefiere subconsultas no correlacionadas cuando sea posible (mejor rendimiento).
- Si una subconsulta devuelve varias filas, usa IN, ANY o ALL:

```sql
SELECT nombre
FROM empleados
WHERE departamento IN (SELECT id FROM departamentos WHERE region = 'Norte');
```

---

## Resumen Visual

| Ubicación         | ¿Para qué sirve?                           |
| ----------------- | ------------------------------------------ |
| SELECT            | Calcular valores adicionales por fila      |
| WHERE             | Filtrar usando resultados de otra consulta |
| FROM              | Crear tablas temporales para la consulta   |
| Correlacionada    | Depende de la fila actual                  |
| No correlacionada | Independiente de la fila actual            |

---

**¡Practica subconsultas para dominar SQL intermedio!**
