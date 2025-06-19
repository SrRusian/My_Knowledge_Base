# 06 - Manejo de Errores y Excepciones ⚠️

Cuando programamos, pueden surgir errores inesperados. Python proporciona mecanismos para manejarlos usando **excepciones** y así evitar que el programa se detenga abruptamente.

---

## 6.1 Errores comunes en Python 🧨

| Tipo de Error        | Descripción | Ejemplo |
|----------------------|-------------|---------|
| `SyntaxError`        | Ocurre cuando se violan reglas de sintaxis. | `def mi_funcion() print("Hola")` |
| `NameError`          | Se hace referencia a una variable no definida. | `print(variable_no_definida)` |
| `TypeError`          | Operación con tipos incompatibles. | `resultado = 5 + "10"` |
| `IndexError`         | Acceso a un índice fuera de rango. | `lista = [1,2,3]; print(lista[3])` |

---

## 6.2 Manejo de excepciones con `try` / `except` / `finally`

### 🔹 try

Se usa para envolver código que puede fallar:

```python
try:
    resultado = 10 / 0
    print(resultado)
except ZeroDivisionError:
    print("Error: División por cero")
```

---

### 🔹 Múltiples except

```python
try:
    resultado = int("Hola")
except ZeroDivisionError:
    print("Error: División por cero")
except ValueError:
    print("Error: Valor inválido")
```

---

### 🔹 finally

Se ejecuta siempre, ocurra o no una excepción:

```python
try:
    archivo = open("archivo.txt", "r")
except FileNotFoundError:
    print("Error: Archivo no encontrado")
finally:
    archivo.close()
```

---

## 6.3 Excepciones personalizadas 🚨

Puedes lanzar errores personalizados usando `raise`:

```python
def funcion():
    condicion = True
    if condicion:
        raise Exception("Descripción del error")

try:
    funcion()
except Exception as e:
    print(f"Error: {str(e)}")
```

---

## ✅ Conclusión

- Usa `try` para detectar errores potenciales
- Usa `except` para capturar y manejar errores específicos
- Usa `finally` para liberar recursos
- Puedes lanzar tus propias excepciones con `raise`

> ⚠️ **Consejo**: Considera siempre qué errores pueden ocurrir y maneja las excepciones correctamente. Esto hace tu código más robusto, confiable y profesional.
