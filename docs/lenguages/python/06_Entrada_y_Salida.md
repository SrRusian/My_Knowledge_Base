# 07 - Entrada y Salida de Datos 🖥️📂

Python permite interactuar con el usuario y manipular archivos para lectura y escritura. Esto se conoce como entrada/salida (I/O).

---

## 🧑‍💻 Entrada de datos del usuario

Usamos `input()` para capturar valores del usuario:

```python
nombre = input("Ingresa tu nombre: ")
edad = input("Ingresa tu edad: ")

print("Hola, " + nombre + "!")
print("Tienes " + edad + " años.")
```

> ⚠️ `input()` **siempre devuelve texto** (tipo `str`). Usa `int()` o `float()` si necesitas convertir:

```python
edad = int(input("Ingresa tu edad: "))

if edad >= 18:
    print("Eres mayor de edad.")
else:
    print("Eres menor de edad.")
```

---

## 📤 Salida de datos

La función `print()` se usa para mostrar resultados en pantalla.

### Formateo con f-strings:

```python
nombre = "Juan"
edad = 25

print(f"Hola, mi nombre es {nombre} y tengo {edad} años.")
```

---

## 7.1 📁 Lectura y escritura de archivos

### 📖 Lectura de archivos

```python
archivo = open("datos.txt", "r")
contenido = archivo.read()
print(contenido)
archivo.close()
```

O también con `with`, que cierra automáticamente:

```python
with open("datos.txt", "r") as archivo:
    contenido = archivo.read()
    print(contenido)
```

---

### ✍️ Escritura de archivos

```python
archivo = open("datos.txt", "w")
archivo.write("Hola, mundo!")
archivo.close()
```

- `"w"` = escritura (sobrescribe)
- `"a"` = anexar (agrega al final)

> ✅ Usa `with` para manejar archivos de forma segura:

```python
with open("datos.txt", "w") as archivo:
    archivo.write("Línea 1\nLínea 2")
```

---

## ✅ Conclusión

- `input()` obtiene datos del usuario
- `print()` muestra datos en consola
- Usa `int()` o `float()` para convertir entradas numéricas
- `open()` permite manipular archivos
- `with open(...)` es la forma recomendada

La entrada/salida es fundamental para interactuar con usuarios y almacenar datos de forma persistente.
