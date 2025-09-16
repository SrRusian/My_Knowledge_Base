# Manipulación Avanzada de Datos en SQL

En SQL intermedio, la manipulación de datos va más allá de los comandos básicos. Aquí aprenderás técnicas avanzadas para modificar, insertar y eliminar datos de manera eficiente y segura.

---

## INSERT avanzado

Permite agregar múltiples filas o usar subconsultas para poblar una tabla.

```sql
-- Insertar varias filas
INSERT INTO productos (id, nombre, precio) VALUES
	(1, 'Teclado', 20),
	(2, 'Ratón', 10);

-- Insertar datos desde otra tabla
INSERT INTO ventas (producto_id, cantidad)
SELECT id, 1 FROM productos WHERE precio < 15;
```

---

## UPDATE avanzado

Actualiza varias filas usando condiciones complejas o subconsultas.

```sql
-- Aumentar el precio un 10% para productos baratos
UPDATE productos
SET precio = precio * 1.1
WHERE precio < 15;

-- Usar subconsulta
UPDATE empleados
SET salario = salario * 1.05
WHERE departamento_id IN (SELECT id FROM departamentos WHERE region = 'Norte');
```

---

## DELETE avanzado

Eliminar datos usando condiciones avanzadas o subconsultas.

```sql
-- Eliminar productos sin ventas
DELETE FROM productos
WHERE id NOT IN (SELECT producto_id FROM ventas);
```

---

## MERGE y UPSERT

Permiten insertar o actualizar datos según si existen o no (soporte depende del motor SQL).

### MERGE (estándar SQL/Oracle)

```sql
MERGE INTO empleados e
USING nuevos_empleados n
ON (e.id = n.id)
WHEN MATCHED THEN
	UPDATE SET e.salario = n.salario
WHEN NOT MATCHED THEN
	INSERT (id, nombre, salario) VALUES (n.id, n.nombre, n.salario);
```

### UPSERT (PostgreSQL, SQLite, MySQL)

```sql
INSERT INTO productos (id, nombre, precio)
VALUES (1, 'Monitor', 100)
ON CONFLICT (id) DO UPDATE SET precio = EXCLUDED.precio;
```

---

## Transacciones

Permiten agrupar varias operaciones para asegurar atomicidad (todo o nada).

```sql
BEGIN;
UPDATE cuentas SET saldo = saldo - 100 WHERE id = 1;
UPDATE cuentas SET saldo = saldo + 100 WHERE id = 2;
COMMIT;
```

Si ocurre un error, puedes deshacer los cambios con `ROLLBACK;`.

---

## Buenas Prácticas

- Usa transacciones para operaciones críticas.
- Valida datos antes de insertar o actualizar.
- Haz respaldos antes de eliminar grandes volúmenes de datos.
- Usa WHERE para evitar afectar todas las filas por error.
- Prefiere UPSERT/MERGE para sincronizar datos.

---

**¡Domina estas técnicas para manipular datos de forma profesional y segura!**
