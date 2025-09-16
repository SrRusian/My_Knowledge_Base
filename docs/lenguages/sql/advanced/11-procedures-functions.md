# Procedimientos Almacenados y Funciones en SQL

Los procedimientos almacenados y funciones permiten encapsular lógica compleja y reutilizable dentro de la base de datos.

---

## Procedimientos Almacenados (Stored Procedures)

Son bloques de código SQL que se almacenan y ejecutan en el servidor de la base de datos.

### Sintaxis Básica (MySQL)

```sql
DELIMITER //
CREATE PROCEDURE aumentar_salario(IN emp_id INT, IN porcentaje DECIMAL(5,2))
BEGIN
	UPDATE empleados
	SET salario = salario * (1 + porcentaje/100)
	WHERE id = emp_id;
END //
DELIMITER ;
```

### Parámetros de Entrada y Salida

- **IN:** Solo entrada (valor recibido).
- **OUT:** Solo salida (valor devuelto).
- **INOUT:** Entrada y salida.

**Ejemplo con parámetro de salida:**

```sql
DELIMITER //
CREATE PROCEDURE obtener_salario(IN emp_id INT, OUT salario_emp DECIMAL(10,2))
BEGIN
	SELECT salario INTO salario_emp FROM empleados WHERE id = emp_id;
END //
DELIMITER ;
```

---

## Funciones Definidas por el Usuario (UDF)

Devuelven un valor y pueden usarse en consultas como una función nativa.

### Sintaxis Básica (MySQL)

```sql
DELIMITER //
CREATE FUNCTION calcular_impuesto(salario DECIMAL(10,2))
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
	RETURN salario * 0.16;
END //
DELIMITER ;
```

**Uso:**

```sql
SELECT nombre, calcular_impuesto(salario) AS impuesto FROM empleados;
```

---

## Diferencias entre Procedimientos y Funciones

| Característica        | Procedimiento  | Función                    |
| --------------------- | -------------- | -------------------------- |
| Devuelve valor        | Opcional (OUT) | Siempre (RETURN)           |
| Uso en SELECT         | No             | Sí                         |
| Puede modificar datos | Sí             | No (solo consulta/calculo) |
| Llamada               | CALL nombre()  | SELECT nombre()            |

---

## Ejemplo de Uso Práctico

```sql
-- Llamar un procedimiento
CALL aumentar_salario(1, 10);

-- Usar una función en una consulta
SELECT nombre, calcular_impuesto(salario) FROM empleados;
```

---

## Usos Comunes

- Automatizar procesos repetitivos (cierres de mes, migraciones, etc.)
- Validaciones y cálculos complejos
- Centralizar lógica de negocio en la base de datos

---

**¡Domina procedimientos y funciones para bases de datos más potentes y mantenibles!**
