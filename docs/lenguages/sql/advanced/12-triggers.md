# Triggers (Disparadores) en SQL

Los triggers son bloques de código que se ejecutan automáticamente cuando ocurre un evento específico en una tabla (INSERT, UPDATE, DELETE).

---

## Sintaxis Básica

Un trigger se asocia a una tabla y a un evento (antes o después de una operación).

### Ejemplo: BEFORE INSERT

```sql
CREATE TRIGGER antes_insertar_empleado
BEFORE INSERT ON empleados
FOR EACH ROW
BEGIN
	SET NEW.fecha_alta = NOW();
END;
```

### Ejemplo: AFTER UPDATE

```sql
CREATE TRIGGER despues_actualizar_salario
AFTER UPDATE ON empleados
FOR EACH ROW
BEGIN
	INSERT INTO auditoria_salarios (emp_id, salario_ant, salario_nuevo, fecha)
	VALUES (NEW.id, OLD.salario, NEW.salario, NOW());
END;
```

### BEFORE/AFTER DELETE

```sql
CREATE TRIGGER log_borrado_empleado
AFTER DELETE ON empleados
FOR EACH ROW
BEGIN
	INSERT INTO empleados_borrados (id, nombre, fecha_borrado)
	VALUES (OLD.id, OLD.nombre, NOW());
END;
```

---

## Casos de Uso Comunes

- Auditoría de cambios (logs de modificaciones o borrados)
- Validaciones automáticas antes de insertar/actualizar
- Actualización de datos relacionados (cascada)
- Generación de valores automáticos

---

## Advertencias y Buenas Prácticas

- Los triggers pueden afectar el rendimiento si se abusa de ellos.
- Pueden dificultar el rastreo de errores y la depuración.
- Evita lógica de negocio compleja en triggers; úsalos para tareas automáticas simples.
- Documenta bien los triggers implementados.

---

## Resumen Visual

| Momento | Operación            | ¿Cuándo se ejecuta?     |
| ------- | -------------------- | ----------------------- |
| BEFORE  | INSERT/UPDATE/DELETE | Antes de la operación   |
| AFTER   | INSERT/UPDATE/DELETE | Después de la operación |

---

**¡Usa triggers con responsabilidad para automatizar tareas en tu base de datos!**
