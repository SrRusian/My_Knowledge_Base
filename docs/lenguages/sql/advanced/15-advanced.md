# Temas Avanzados en SQL

En esta sección se abordan conceptos avanzados para el trabajo profesional con bases de datos SQL: vistas materializadas, manejo de datos semiestructurados, migraciones y mantenimiento.

---

## Vistas Materializadas

Una **vista materializada** almacena físicamente el resultado de una consulta, a diferencia de una vista normal que solo almacena la definición y se calcula al vuelo.

### Diferencias con vistas normales

| Característica      | Vista normal                   | Vista materializada           |
| ------------------- | ------------------------------ | ----------------------------- |
| Almacenamiento      | No (solo definición)           | Sí (resultado persistente)    |
| Actualización datos | Siempre en tiempo real         | Requiere refresco manual/auto |
| Rendimiento         | Más lenta en consultas pesadas | Muy rápida para lecturas      |
| Consumo de espacio  | Bajo                           | Mayor                         |

### Casos de uso

- Consultas complejas o agregaciones costosas que se consultan frecuentemente.
- Dashboards y reportes de BI.
- Reducción de carga en bases de datos transaccionales.

### Ejemplo (PostgreSQL)

```sql
-- Crear vista materializada
CREATE MATERIALIZED VIEW ventas_resumen AS
SELECT departamento, SUM(total) AS total_ventas
FROM ventas
GROUP BY departamento;

-- Refrescar la vista
REFRESH MATERIALIZED VIEW ventas_resumen;
```

---

## Manejo de Datos Semiestructurados

SQL moderno permite trabajar con datos en formato **JSON** y **XML** dentro de columnas, facilitando la flexibilidad y compatibilidad con aplicaciones web y APIs.

### JSON en SQL

- Almacena objetos JSON en columnas (`json` o `jsonb` en PostgreSQL, `JSON` en MySQL).
- Permite consultas, filtrado y actualización de campos internos.

#### Ejemplo

```sql
-- Crear tabla con columna JSON
CREATE TABLE usuarios (
	id SERIAL PRIMARY KEY,
	datos JSONB
);

-- Insertar datos
INSERT INTO usuarios (datos) VALUES ('{"nombre": "Ana", "edad": 30, "roles": ["admin", "editor"]}');

-- Consultar usuarios con rol admin
SELECT * FROM usuarios WHERE datos->'roles' ? 'admin';
```

### XML en SQL

Algunos SGBD permiten almacenar y consultar XML con funciones específicas.

```sql
-- Ejemplo de consulta XML (SQL Server)
SELECT datos.value('(/usuario/nombre)[1]', 'VARCHAR(100)') AS nombre
FROM usuarios_xml;
```

---

## Migraciones y Mantenimiento

### Migraciones de esquemas

Las **migraciones** permiten modificar la estructura de la base de datos de forma controlada y reproducible (agregar/quitar columnas, cambiar tipos, etc.).

- Usa herramientas como Flyway, Liquibase, Alembic (Python), o migraciones nativas de frameworks.
- Versiona los scripts de migración junto con el código fuente.

#### Ejemplo de migración (SQL genérico)

```sql
-- Agregar columna
ALTER TABLE empleados ADD COLUMN telefono VARCHAR(20);

-- Cambiar tipo de dato
ALTER TABLE empleados ALTER COLUMN telefono TYPE TEXT;

-- Eliminar columna
ALTER TABLE empleados DROP COLUMN telefono;
```

### Backups y restauración

Realizar copias de seguridad periódicas es esencial para proteger los datos ante fallos, errores o ataques.

- **Backup lógico:** Exporta datos y estructura a archivos SQL (ej: `pg_dump`, `mysqldump`).
- **Backup físico:** Copia los archivos binarios de la base de datos.
- **Restauración:** Usa herramientas como `psql`, `mysql`, o utilidades gráficas.

#### Ejemplo (PostgreSQL)

```bash
# Backup
pg_dump -U usuario -d basedatos -F c -f backup.bak

# Restaurar
pg_restore -U usuario -d basedatos_restaurada backup.bak
```

---

La gestión avanzada de vistas, datos semiestructurados y migraciones es clave para bases de datos modernas, escalables y seguras.
