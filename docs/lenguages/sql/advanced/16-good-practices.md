# Buenas Prácticas Avanzadas en SQL

Aplicar buenas prácticas en SQL es esencial para garantizar bases de datos robustas, eficientes y seguras. Aquí se resumen recomendaciones clave para el diseño, consulta, seguridad y mantenimiento.

---

## Diseño de Esquema

- Usa nombres descriptivos y consistentes para tablas y columnas.
- Define claves primarias y foráneas para asegurar integridad referencial.
- Normaliza las tablas para evitar redundancia, pero desnormaliza cuando el rendimiento lo requiera.
- Elige tipos de datos apropiados y lo más restrictivos posible.
- Documenta el esquema y las relaciones entre tablas.

---

## Escritura de Consultas

- Especifica solo las columnas necesarias (evita `SELECT *`).
- Usa alias claros para tablas y columnas en consultas complejas.
- Aplica filtros (WHERE) para reducir el volumen de datos.
- Prefiere JOINs explícitos y bien definidos.
- Utiliza funciones de agregación y GROUP BY correctamente.
- Limita el uso de subconsultas anidadas; usa CTEs (`WITH`) para mayor claridad.
- Usa paginación (`LIMIT`, `OFFSET`) en grandes volúmenes de datos.

---

## Seguridad y Acceso

- Aplica el principio de menor privilegio: otorga solo los permisos necesarios.
- Usa roles para agrupar permisos y facilitar la administración.
- Cambia contraseñas periódicamente y usa autenticación fuerte.
- Audita accesos y cambios en la base de datos.
- No uses cuentas administrativas para tareas diarias.

---

## Rendimiento y Mantenimiento

- Crea índices en columnas usadas frecuentemente en WHERE, JOIN y ORDER BY.
- Revisa y elimina índices innecesarios para evitar sobrecarga en escrituras.
- Analiza planes de ejecución con `EXPLAIN` para detectar cuellos de botella.
- Realiza backups periódicos y prueba la restauración.
- Versiona y documenta los scripts de migración.
- Monitorea el crecimiento de las tablas y planifica particionamiento si es necesario.

---

## Ejemplo de Consulta Limpia y Eficiente

```sql
-- Consulta con CTE, alias y filtros claros
WITH ventas_2025 AS (
	SELECT id, cliente_id, total, fecha
	FROM ventas
	WHERE fecha BETWEEN '2025-01-01' AND '2025-12-31'
)
SELECT c.nombre, SUM(v.total) AS total_anual
FROM clientes c
JOIN ventas_2025 v ON c.id = v.cliente_id
GROUP BY c.nombre
ORDER BY total_anual DESC
LIMIT 10;
```

---

## Checklist de Buenas Prácticas

| Área          | Práctica clave                              |
| ------------- | ------------------------------------------- |
| Diseño        | Claves primarias y foráneas, nombres claros |
| Consultas     | Solo columnas necesarias, JOINs explícitos  |
| Seguridad     | Menor privilegio, roles, auditoría          |
| Rendimiento   | Índices, EXPLAIN, backups                   |
| Mantenimiento | Migraciones versionadas, documentación      |

---

Adoptar estas buenas prácticas te permitirá construir bases de datos SQL más seguras, eficientes y fáciles de mantener a largo plazo.
