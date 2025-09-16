# Administración de Usuarios y Seguridad en SQL

La seguridad en bases de datos SQL es fundamental para proteger la información y garantizar que solo los usuarios autorizados puedan acceder o modificar los datos. A continuación, se abordan los conceptos clave para la gestión de usuarios, roles y permisos, así como buenas prácticas de seguridad.

---

## Gestión de Usuarios y Roles

- **Usuario:** Cuenta individual que puede conectarse a la base de datos.
- **Rol:** Conjunto de permisos que puede ser asignado a uno o varios usuarios, facilitando la administración de privilegios.

### Crear un usuario

```sql
-- Sintaxis general (puede variar según el SGBD)
CREATE USER juan IDENTIFIED BY 'contraseña_segura';
```

### Crear un rol

```sql
CREATE ROLE analista;
```

### Asignar un rol a un usuario

```sql
GRANT analista TO juan;
```

---

## Permisos: GRANT y REVOKE

Los permisos controlan qué acciones puede realizar un usuario o rol sobre los objetos de la base de datos (tablas, vistas, procedimientos, etc.).

- **GRANT:** Otorga permisos.
- **REVOKE:** Revoca permisos previamente otorgados.

### Ejemplos de GRANT

```sql
-- Permitir consultar una tabla
GRANT SELECT ON empleados TO juan;

-- Permitir insertar y actualizar datos
GRANT INSERT, UPDATE ON empleados TO analista;

-- Otorgar todos los privilegios sobre una tabla
GRANT ALL PRIVILEGES ON ventas TO admin;
```

### Ejemplos de REVOKE

```sql
-- Revocar el permiso de actualización
REVOKE UPDATE ON empleados FROM juan;

-- Revocar todos los privilegios
REVOKE ALL PRIVILEGES ON ventas FROM admin;
```

> **Nota:** La sintaxis puede variar entre sistemas (MySQL, PostgreSQL, SQL Server, Oracle). Consulta la documentación de tu SGBD.

---

## Buenas Prácticas de Seguridad en SQL

- Usa contraseñas fuertes y cámbialas periódicamente.
- Asigna a cada usuario solo los permisos mínimos necesarios (**principio de menor privilegio**).
- Utiliza roles para agrupar permisos y facilitar la administración.
- Revoca permisos innecesarios o temporales tan pronto como dejen de ser requeridos.
- Audita regularmente los accesos y cambios en la base de datos.
- No uses cuentas administrativas para tareas diarias.
- Mantén actualizado el SGBD y aplica parches de seguridad.
- Limita el acceso a la base de datos solo desde redes o IPs autorizadas.

---

## Tabla Resumen

| Acción           | Sintaxis Ejemplo                        | Descripción                          |
| ---------------- | --------------------------------------- | ------------------------------------ |
| Crear usuario    | CREATE USER juan IDENTIFIED BY 'clave'; | Crea un nuevo usuario                |
| Crear rol        | CREATE ROLE analista;                   | Crea un nuevo rol                    |
| Asignar rol      | GRANT analista TO juan;                 | Asigna un rol a un usuario           |
| Otorgar permisos | GRANT SELECT ON empleados TO juan;      | Permite consultar la tabla empleados |
| Revocar permisos | REVOKE UPDATE ON empleados FROM juan;   | Revoca el permiso de actualización   |

---

## Ejemplo Práctico

```sql
-- Crear usuario y rol
CREATE USER ana IDENTIFIED BY 'Ana2025!';
CREATE ROLE supervisor;

-- Otorgar permisos al rol
GRANT SELECT, UPDATE ON inventario TO supervisor;

-- Asignar rol al usuario
GRANT supervisor TO ana;

-- Revocar permiso de actualización
REVOKE UPDATE ON inventario FROM supervisor;
```

---

La correcta administración de usuarios, roles y permisos es esencial para proteger la integridad y confidencialidad de los datos en cualquier sistema SQL.
