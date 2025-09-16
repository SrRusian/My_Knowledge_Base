# 6. Manejo de Errores en Python

El manejo de errores permite controlar situaciones inesperadas durante la ejecución de un programa, evitando que se detenga abruptamente y permitiendo tomar acciones correctivas.

## try, except, finally

La estructura básica para manejar errores es:

```python
try:
	# Código que puede causar un error
	resultado = 10 / 0
except ZeroDivisionError:
	print("No se puede dividir por cero.")
finally:
	print("Esta línea siempre se ejecuta.")
```

- **try:** Bloque donde se coloca el código que puede generar una excepción.
- **except:** Bloque que se ejecuta si ocurre una excepción. Se puede especificar el tipo de excepción.
- **finally:** Bloque opcional que siempre se ejecuta, ocurra o no una excepción (útil para liberar recursos).

### Múltiples except

Puedes manejar diferentes tipos de errores con varios bloques except:

```python
try:
	x = int(input("Ingresa un número: "))
	y = 10 / x
except ValueError:
	print("Debes ingresar un número válido.")
except ZeroDivisionError:
	print("No se puede dividir por cero.")
except Exception as e:
	print(f"Ocurrió un error inesperado: {e}")
```

## El objeto Exception

Todas las excepciones en Python heredan de la clase base `Exception`. Puedes capturar cualquier excepción usando:

```python
try:
	# ...
except Exception as error:
	print(f"Error: {error}")
```

Esto es útil para depuración, pero se recomienda manejar errores específicos cuando sea posible.

## Lanzar (raise) excepciones

Puedes generar tus propias excepciones usando la palabra clave `raise`:

```python
def dividir(a, b):
	if b == 0:
		raise ValueError("El divisor no puede ser cero.")
	return a / b

try:
	dividir(5, 0)
except ValueError as e:
	print(e)
```

## Crear excepciones personalizadas

Puedes definir tus propias clases de excepción:

```python
class MiError(Exception):
	pass

try:
	raise MiError("Esto es un error personalizado.")
except MiError as e:
	print(e)
```

## Ejercicios propuestos

1. Escribe una función que reciba dos números y maneje la división por cero.
2. Crea una función que solicite un número al usuario y maneje errores de tipo de dato.
3. Implementa una excepción personalizada para validar contraseñas.

---

El manejo adecuado de errores mejora la robustez y confiabilidad de los programas en Python.
