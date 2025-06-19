# 08 - Importación y Creación de Módulos 🧱📦

En Python, los **módulos** y **paquetes** permiten organizar y reutilizar código. Un módulo es un archivo `.py` que contiene funciones, clases o variables. Un paquete es un conjunto de módulos organizados en carpetas.

---

## 8.1 📥 Importar módulos

### 🔹 Importación completa

```python
import math

resultado = math.sqrt(25)
print(resultado)  # 5.0
```

### 🔹 Importación parcial

```python
from math import sqrt

resultado = sqrt(25)
print(resultado)  # 5.0
```

---

## 🧰 Módulos estándar útiles

| Módulo     | Funcionalidad                     |
|------------|-----------------------------------|
| `math`     | Funciones matemáticas             |
| `random`   | Generación de números aleatorios  |
| `datetime` | Manejo de fechas y tiempos        |

```python
import random
import datetime

print(random.randint(1, 10))           # Número entre 1 y 10
print(datetime.datetime.now())        # Fecha y hora actual
```

---

## 8.2 🔨 Crear tus propios módulos

### Archivo: `mi_modulo.py`

```python
def saludar(nombre):
    print(f"Hola, {nombre}!")

def calcular_suma(a, b):
    return a + b
```

### Usar el módulo en otro archivo

```python
import mi_modulo

mi_modulo.saludar("Juan")
print(mi_modulo.calcular_suma(5, 3))  # 8
```

---

## 🗂️ Organización del código

Puedes dividir tu programa en módulos según su funcionalidad:

### `operaciones.py`

```python
def sumar(a, b):
    return a + b

def restar(a, b):
    return a - b
```

### `utilidades.py`

```python
def imprimir_mensaje(mensaje):
    print(mensaje)

def obtener_nombre_usuario():
    return input("Ingresa tu nombre: ")
```

### Archivo principal

```python
import operaciones
import utilidades

resultado = operaciones.sumar(5, 3)
utilidades.imprimir_mensaje(f"Resultado: {resultado}")

nombre = utilidades.obtener_nombre_usuario()
utilidades.imprimir_mensaje(f"Hola, {nombre}!")
```

---

## 8.3 📦 Paquetes en Python

Un **paquete** es una carpeta que contiene un archivo `__init__.py` y uno o más módulos.

### Estructura de ejemplo

```
mi_paquete/
├── __init__.py
├── modulo1.py
└── modulo2.py
```

### Uso

```python
from mi_paquete import modulo1, modulo2

modulo1.funcion1()
modulo2.funcion2()
```

> El archivo `__init__.py` puede estar vacío o contener código de inicialización del paquete.

---

## ✅ Conclusión

- Usa `import` o `from ... import` para acceder a módulos
- Reutiliza módulos estándar (`math`, `random`, `datetime`, etc.)
- Crea tus propios módulos para mantener un código organizado
- Usa paquetes para agrupar módulos relacionados

Explora la [documentación oficial](https://docs.python.org/3/library/index.html) para conocer más sobre la biblioteca estándar de Python.
