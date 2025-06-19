# 03 - Estructuras de Control 🔁

## 3. Estructuras de control

Las estructuras de control permiten tomar decisiones y repetir acciones en un programa. Las más comunes en Python son las **condicionales** y los **bucles (loops)**.

---

## 3.1 Condicionales

### 🔹 `if`

Ejecuta un bloque solo si se cumple una condición:

```python
edad = 18

if edad >= 18:
    print("Eres mayor de edad.")
```

---

### 🔹 `if-else`

Ejecuta un bloque si la condición es verdadera, y otro si es falsa:

```python
edad = 15

if edad >= 18:
    print("Eres mayor de edad.")
else:
    print("Eres menor de edad.")
```

---

### 🔹 `if-elif-else`

Permite múltiples condiciones:

```python
calificacion = 85

if calificacion >= 90:
    print("Excelente")
elif calificacion >= 80:
    print("Muy bueno")
elif calificacion >= 70:
    print("Bueno")
else:
    print("Necesita mejorar")
```

---

## 3.2 Bucles (Loops)

Los bucles permiten repetir un bloque de código.

### 🔁 `for`

Itera sobre una secuencia:

```python
frutas = ["manzana", "banana", "naranja"]

for fruta in frutas:
    print(fruta)
```

---

### 🔁 `while`

Repite un bloque mientras la condición sea verdadera:

```python
contador = 0

while contador < 5:
    print(contador)
    contador += 1
```

> ⚠ ¡Cuidado con los bucles infinitos!

---

## 3.3 Control de Bucles

### 🛑 `break`

Termina el bucle inmediatamente:

```python
contador = 0

while True:
    print(contador)
    contador += 1
    if contador == 5:
        break
```

---

### 🔄 `continue`

Salta al siguiente ciclo del bucle:

```python
for i in range(10):
    if i % 2 == 0:
        continue
    print(i)
```

> Solo se imprimen los impares

---

### ⏭ `pass`

No hace nada. Se usa como marcador de posición:

```python
for i in range(5):
    pass  # código por implementar
```

---

## ✅ Conclusión

Las estructuras de control en Python incluyen:

- Condicionales: `if`, `if-else`, `if-elif-else`
- Bucles: `for`, `while`
- Control de flujo: `break`, `continue`, `pass`

Estas herramientas te permiten controlar cómo y cuándo se ejecuta el código dentro de tus programas.
