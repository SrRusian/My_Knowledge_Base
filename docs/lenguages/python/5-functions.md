# 5. Funciones en Python

Las funciones son bloques de código reutilizables que permiten organizar, estructurar y simplificar programas. En Python, las funciones se definen con la palabra clave `def` y pueden recibir parámetros, devolver valores y tener diferentes tipos de alcance.

## Definición de funciones

Para definir una función se utiliza la sintaxis:

```python
def nombre_funcion(parámetros):
	# bloque de código
	return valor_opcional
```

Ejemplo:

```python
def saludar():
	print("¡Hola desde una función!")

saludar()  # Llama a la función
```

## Parámetros y argumentos

Las funciones pueden recibir datos llamados **parámetros**. Al llamar a la función, se pasan **argumentos**.

```python
def sumar(a, b):
	return a + b

resultado = sumar(3, 5)  # resultado = 8
```

### Tipos de argumentos

- **Posicionales:** Se pasan en orden.
- **Nombrados (keywords):** Se especifica el nombre del parámetro.
- **Por defecto:** Se asigna un valor si no se pasa argumento.

```python
def saludar(nombre, mensaje="Hola"):
	print(f"{mensaje}, {nombre}!")

saludar("Alicia")  # Hola, Alicia!
saludar("Bob", mensaje="Buenos días")  # Buenos días, Bob!
```

### Argumentos variables

- `*args`: Recibe una tupla de argumentos posicionales.
- `**kwargs`: Recibe un diccionario de argumentos nombrados.

```python
def mostrar_args(*args, **kwargs):
	print("args:", args)
	print("kwargs:", kwargs)

mostrar_args(1, 2, 3, x=10, y=20)
# args: (1, 2, 3)
# kwargs: {'x': 10, 'y': 20}
```

## Valores de retorno

Las funciones pueden devolver valores usando `return`. Si no se especifica, retorna `None`.

```python
def cuadrado(x):
	return x ** 2

print(cuadrado(4))  # 16
```

## Alcance de las variables (scope)

El **alcance** determina dónde se puede acceder a una variable:

- **Local:** Definida dentro de una función, solo accesible ahí.
- **Global:** Definida fuera de funciones, accesible en todo el archivo.

```python
x = 10  # variable global

def funcion():
	y = 5  # variable local
	print(x)  # Puede acceder a x
	print(y)

funcion()
# print(y)  # Error: y no está definida fuera de la función
```

Para modificar una variable global dentro de una función, se usa la palabra clave `global`:

```python
contador = 0

def incrementar():
	global contador
	contador += 1

incrementar()
print(contador)  # 1
```

## Funciones lambda (anónimas)

Son funciones pequeñas y sin nombre, útiles para operaciones simples:

```python
doble = lambda x: x * 2
print(doble(5))  # 10
```

## Documentación de funciones

Se recomienda documentar las funciones con docstrings:

```python
def sumar(a, b):
	"""Devuelve la suma de a y b."""
	return a + b
```

## Ejercicios propuestos

1. Escribe una función que reciba un número y devuelva si es par o impar.
2. Crea una función que reciba una lista y devuelva la suma de sus elementos.
3. Implementa una función que reciba un nombre y un saludo opcional, y muestre el mensaje correspondiente.

---

Las funciones son fundamentales para estructurar programas, evitar la repetición de código y mejorar la legibilidad en Python.
