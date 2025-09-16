# 2. Fundamentos

En esta sección se cubren los conceptos básicos de Python: variables, tipos de datos, entrada/salida y comentarios.

## Variables

Las variables almacenan información que puede cambiar durante la ejecución del programa. No es necesario declarar el tipo, Python lo infiere automáticamente.

```python
nombre = "Alicia"
edad = 25
pi = 3.1416
es_estudiante = True
```

## Tipos de datos

Los tipos de datos más comunes en Python son:

- **int**: Números enteros (`x = 10`)
- **float**: Números decimales (`y = 3.14`)
- **str**: Cadenas de texto (`mensaje = "Hola"`)
- **bool**: Booleanos (`activo = False`)

Puedes verificar el tipo de una variable con `type()`:

```python
print(type(nombre))  # <class 'str'>
print(type(edad))    # <class 'int'>
```

## Entrada y salida

### Salida (imprimir en pantalla)

```python
print("Hola, mundo!")
print("La suma es:", 2 + 3)
```

### Entrada (leer del usuario)

```python
nombre = input("¿Cómo te llamas? ")
print("Hola,", nombre)
```

## Comentarios

Los comentarios sirven para explicar el código y no se ejecutan. Se escriben con el símbolo `#`.

```python
# Esto es un comentario de una línea
edad = 20  # También se puede al final de una línea

"""
Comentario de varias líneas
usando triple comillas.
"""
```

---

Dominar estos fundamentos es esencial para avanzar en Python y escribir programas claros y funcionales.
