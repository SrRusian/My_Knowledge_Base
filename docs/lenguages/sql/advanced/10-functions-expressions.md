# Funciones y Expresiones en SQL

Las funciones integradas permiten transformar, analizar y manipular datos directamente en las consultas SQL. Se dividen en funciones de cadena, fecha/hora y matemáticas.

---

## Funciones de Cadena

Permiten manipular y analizar texto.

- **CONCAT(cad1, cad2, ...):** Une varias cadenas.
- **SUBSTRING(cad, inicio, longitud):** Extrae una subcadena.
- **LENGTH(cad):** Longitud de la cadena.
- **UPPER(cad), LOWER(cad):** Convierte a mayúsculas/minúsculas.
- **TRIM(cad):** Elimina espacios al inicio y final.

**Ejemplos:**

```sql
SELECT CONCAT(nombre, ' ', apellido) AS nombre_completo FROM empleados;
SELECT SUBSTRING(nombre, 1, 3) FROM empleados;
SELECT LENGTH(nombre) FROM empleados;
SELECT UPPER(nombre) FROM empleados;
SELECT TRIM('   texto   ');
```

---

## Funciones de Fecha y Hora

Permiten trabajar con fechas y horas.

- **NOW() / CURRENT_TIMESTAMP:** Fecha y hora actual.
- **DATEADD(unidad, valor, fecha):** Suma tiempo a una fecha (soporte depende del motor).
- **DATEDIFF(unidad, fecha1, fecha2):** Diferencia entre fechas.
- **YEAR(fecha), MONTH(fecha), DAY(fecha):** Extraen partes de la fecha.

**Ejemplos:**

```sql
SELECT NOW();
SELECT DATEADD(day, 7, fecha_ingreso) FROM empleados; -- Suma 7 días
SELECT DATEDIFF(day, fecha_nacimiento, NOW()) FROM empleados;
SELECT YEAR(fecha_ingreso) FROM empleados;
```

> **Nota:** La sintaxis y funciones pueden variar entre motores (MySQL, PostgreSQL, SQL Server, SQLite).

---

## Funciones Matemáticas

Permiten realizar cálculos numéricos.

- **ABS(x):** Valor absoluto
- **ROUND(x, decimales):** Redondea
- **CEIL(x), FLOOR(x):** Redondea hacia arriba/abajo
- **POWER(x, y):** Potencia
- **SQRT(x):** Raíz cuadrada
- **RANDOM() / RAND():** Número aleatorio

**Ejemplos:**

```sql
SELECT ABS(-10);
SELECT ROUND(3.14159, 2);
SELECT CEIL(2.3), FLOOR(2.7);
SELECT POWER(2, 3);
SELECT SQRT(16);
SELECT RANDOM();
```

---

## Resumen Visual

| Tipo de función | Ejemplo de uso                        |
| --------------- | ------------------------------------- |
| Cadena          | CONCAT, SUBSTRING, LENGTH, UPPER      |
| Fecha/Hora      | NOW, DATEADD, DATEDIFF, YEAR          |
| Matemática      | ABS, ROUND, CEIL, POWER, SQRT, RANDOM |

---

**¡Domina estas funciones para potenciar tus consultas SQL!**
