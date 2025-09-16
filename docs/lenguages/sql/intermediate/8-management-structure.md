# Gestión de la Estructura en SQL

En SQL, la gestión de la estructura permite definir, modificar y eliminar la arquitectura de la base de datos: tablas, restricciones, índices, vistas y secuencias.

---

## CREATE TABLE

Crea una nueva tabla en la base de datos.

```sql
CREATE TABLE empleados (
	id INTEGER PRIMARY KEY,
	nombre TEXT NOT NULL,
	salario REAL DEFAULT 1000,
	depto_id INTEGER,
	CONSTRAINT fk_depto FOREIGN KEY (depto_id) REFERENCES departamentos(id)
);
```

---

## ALTER TABLE

Modifica la estructura de una tabla existente.

```sql
-- Agregar columna
ALTER TABLE empleados ADD COLUMN email TEXT;

-- Modificar tipo de dato (soporte depende del motor)
ALTER TABLE empleados ALTER COLUMN salario TYPE DECIMAL(10,2);

-- Agregar restricción
ALTER TABLE empleados ADD CONSTRAINT unq_email UNIQUE (email);
```

---

## DROP TABLE

Elimina una tabla y todos sus datos.

```sql
DROP TABLE empleados;
```

---

## Restricciones (Constraints)

Permiten controlar la integridad y validez de los datos.

- **PRIMARY KEY:** Identificador único de cada fila.
- **FOREIGN KEY:** Relaciona una columna con la clave primaria de otra tabla.
- **UNIQUE:** Garantiza que los valores sean únicos.
- **CHECK:** Restringe los valores permitidos.
- **DEFAULT:** Valor por defecto si no se especifica.
- **NOT NULL:** Impide valores nulos.

**Ejemplo:**

```sql
CREATE TABLE productos (
	id INTEGER PRIMARY KEY,
	nombre TEXT UNIQUE NOT NULL,
	precio REAL CHECK (precio > 0) DEFAULT 1.0
);
```

---

## Índices (INDEX)

Mejoran la velocidad de búsqueda y consulta.

```sql
CREATE INDEX idx_nombre ON empleados(nombre);
```

---

## Vistas (VIEW)

Son consultas guardadas que se comportan como tablas virtuales.

```sql
CREATE VIEW empleados_activos AS
SELECT id, nombre, salario
FROM empleados
WHERE activo = 1;

-- Consultar la vista
SELECT * FROM empleados_activos;
```

---

## Secuencias (SEQUENCE)

Generan valores únicos y consecutivos, útiles para claves primarias automáticas (soporte depende del motor).

```sql
-- PostgreSQL
CREATE SEQUENCE sec_empleados START 100;
INSERT INTO empleados (id, nombre) VALUES (nextval('sec_empleados'), 'Ana');
```

---

## Resumen Visual

| Comando/Concepto | ¿Para qué sirve?                     |
| ---------------- | ------------------------------------ |
| CREATE TABLE     | Crear nuevas tablas                  |
| ALTER TABLE      | Modificar tablas existentes          |
| DROP TABLE       | Eliminar tablas                      |
| PRIMARY KEY      | Identificador único                  |
| FOREIGN KEY      | Relación entre tablas                |
| UNIQUE           | Valores únicos                       |
| CHECK            | Validar valores                      |
| DEFAULT          | Valor por defecto                    |
| NOT NULL         | Impedir valores nulos                |
| INDEX            | Mejorar búsquedas                    |
| VIEW             | Tabla virtual basada en una consulta |
| SEQUENCE         | Generar valores consecutivos         |

---

**¡Domina la gestión de la estructura para bases de datos robustas y eficientes!**
