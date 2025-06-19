# 05 - Funciones en Python 🧩

Las funciones son bloques de código reutilizables que encapsulan tareas específicas. Son esenciales para organizar, modularizar y reutilizar el código.

---

## 📌 Definición y llamada de funciones

```python
def saludo():
    print("¡Hola, mundo!")

saludo()  # Imprime "¡Hola, mundo!"
```

---

## 🎯 Parámetros y argumentos

```python
def saludo(nombre):
    print(f"¡Hola, {nombre}!")

saludo("Juan")   # ¡Hola, Juan!
saludo("María")  # ¡Hola, María!
```

---

## 🔁 Valores de retorno

```python
def suma(a, b):
    return a + b

resultado = suma(3, 4)
print(resultado)  # 7
```

---

## ⚡ Funciones lambda (anónimas)

Funciones pequeñas y concisas:

```python
cuadrado = lambda x: x ** 2
print(cuadrado(5))  # 25
```

---

## 🌐 Alcance de variables

```python
def funcion():
    variable_local = 10
    print(variable_local)

variable_global = 20

def funcion2():
    print(variable_global)

funcion()       # 10
funcion2()      # 20
print(variable_global)  # 20
# print(variable_local)  # ❌ Error: fuera de alcance
```

---

## 📝 Docstrings

Documentación dentro de funciones:

```python
def area_rectangulo(base, altura):
    """
    Calcula el área de un rectángulo.

    Args:
        base (float): Base del rectángulo.
        altura (float): Altura del rectángulo.

    Returns:
        float: Área del rectángulo.
    """
    return base * altura
```

---

## 🔢 Número variable de argumentos

```python
def suma_variable(*numeros):
    total = 0
    for numero in numeros:
        total += numero
    return total

print(suma_variable(1, 2, 3))       # 6
print(suma_variable(4, 5, 6, 7))    # 22
```

---

## ✅ Conclusión

Las funciones permiten:

- Reutilizar código
- Modularizar programas
- Documentar tareas específicas
- Aceptar múltiples parámetros
- Trabajar con variables locales y globales

Además de funciones propias, puedes usar funciones incorporadas como `print()`, `len()`, `type()`, `range()`, entre muchas otras.
