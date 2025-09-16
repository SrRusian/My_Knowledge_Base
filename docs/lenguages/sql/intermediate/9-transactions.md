# Transacciones en SQL

Las transacciones permiten agrupar varias operaciones en una sola unidad lógica de trabajo, asegurando la integridad y consistencia de los datos.

---

## Comandos Básicos de Transacciones

- **BEGIN** o **START TRANSACTION**: Inicia una transacción.
- **COMMIT**: Confirma todos los cambios realizados durante la transacción.
- **ROLLBACK**: Revierte todos los cambios desde el último BEGIN.

**Ejemplo:**

```sql
BEGIN;
UPDATE cuentas SET saldo = saldo - 100 WHERE id = 1;
UPDATE cuentas SET saldo = saldo + 100 WHERE id = 2;
COMMIT;
```

Si ocurre un error antes del COMMIT, puedes deshacer los cambios con:

```sql
ROLLBACK;
```

---

## SAVEPOINT

Permite crear puntos intermedios dentro de una transacción para hacer rollbacks parciales.

```sql
BEGIN;
UPDATE cuentas SET saldo = saldo - 100 WHERE id = 1;
SAVEPOINT antes_deposito;
UPDATE cuentas SET saldo = saldo + 100 WHERE id = 2;
-- Si hay un error, volver al savepoint
ROLLBACK TO antes_deposito;
COMMIT;
```

---

## Propiedades ACID

Las transacciones deben cumplir con las siguientes propiedades para garantizar la confiabilidad:

- **Atomicidad (Atomicity):** Todo o nada; los cambios se aplican completos o ninguno.
- **Consistencia (Consistency):** El estado de la base de datos siempre es válido antes y después.
- **Aislamiento (Isolation):** Las transacciones no interfieren entre sí.
- **Durabilidad (Durability):** Una vez confirmado (commit), los cambios son permanentes.

---

## Resumen Visual

| Comando/Concepto | ¿Para qué sirve?                      |
| ---------------- | ------------------------------------- |
| BEGIN            | Iniciar una transacción               |
| COMMIT           | Confirmar los cambios                 |
| ROLLBACK         | Deshacer los cambios                  |
| SAVEPOINT        | Punto de restauración parcial         |
| ACID             | Garantizar integridad y confiabilidad |

---

**¡Domina las transacciones para trabajar con datos de forma segura y profesional!**
