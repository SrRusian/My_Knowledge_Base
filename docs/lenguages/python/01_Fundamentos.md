# 01 - Fundamentos de Python 🔧

## 2. Tipos de datos básicos

En Python, los tipos de datos básicos son esenciales para entender cómo se manipulan los valores y variables. Estos incluyen:

### 🔢 Enteros (`int`)

Números sin parte decimal.

```python
edad = 25
cantidad = 100
```

---

### 🔸 Flotantes (`float`)

Números con parte decimal.

```python
precio = 9.99
altura = 1.75
```

---

### 📝 Cadenas de texto (`str`)

Texto encerrado entre comillas simples o dobles.

```python
nombre = "Juan"
mensaje = '¡Hola, mundo!'
```

Puedes usar `\` para escapar comillas, o usar triples comillas para texto multilínea:

```python
mensaje = """Hola,
esto es multilinea"""
```

---

### ✅ Booleanos (`bool`)

Valores de verdad: `True` o `False`.

```python
es_mayor_de_edad = True
tiene_descuento = False
```

> **Nota**: True y False deben escribirse con mayúscula inicial.

---

## 2.1 Variables

Las variables almacenan y representan datos. Python asigna automáticamente el tipo según el valor.

```python
nombre = "Juan"
edad = 25
altura = 1.75
es_estudiante = True
```

### Asignación múltiple

```python
a = b = c = 10
```

### Reglas para nombrar variables

- Usar letras, números y guiones bajos (`_`)
- No iniciar con número
- No usar palabras reservadas (`if`, `for`, etc.)
- Diferencia entre mayúsculas y minúsculas
- Usar nombres descriptivos

```python
nombre_completo = "Ana Torres"
total_ventas = 1200
```

> ❌ Ejemplos inválidos: `1edad`, `nombre-completo`, `if`

---

## 2.2 Operadores

Python proporciona varios operadores:

### ➕ Aritméticos

| Operador | Significado          | Ejemplo       |
|----------|----------------------|---------------|
| `+`      | Suma                 | `a + b`       |
| `-`      | Resta                | `a - b`       |
| `*`      | Multiplicación       | `a * b`       |
| `/`      | División (float)     | `a / b`       |
| `//`     | División entera      | `a // b`      |
| `%`      | Módulo (residuo)     | `a % b`       |
| `**`     | Exponenciación       | `a ** b`      |

```python
a = 10
b = 3

print(a + b)  # 13
print(a / b)  # 3.33...
print(a ** b) # 1000
```

---

### 🔍 Comparación

| Operador | Descripción           |
|----------|-----------------------|
| `==`     | Igual a               |
| `!=`     | Distinto de           |
| `>`      | Mayor que             |
| `<`      | Menor que             |
| `>=`     | Mayor o igual         |
| `<=`     | Menor o igual         |

```python
print(a == b)  # False
print(a >= b)  # True
```

---

### 🧠 Lógicos

| Operador | Uso                              |
|----------|----------------------------------|
| `and`    | Verdadero si ambas condiciones   |
| `or`     | Verdadero si alguna condición     |
| `not`    | Invierte valor lógico             |

```python
a = 10
b = 3

print((a > 5) and (b < 5))   # True
print((a > 15) or (b < 5))   # True
print(not (a > 5))           # False
```

> ⚠ **Importante**: Python respeta la **precedencia** de operadores:
1. Paréntesis `()`
2. Exponenciación `**`
3. Multiplicación/División `* / // %`
4. Suma/Resta `+ -`
5. Comparaciones `==`, `!=`, `>`, `<`, etc.
6. Operadores lógicos `and`, `or`, `not`

---

> ✅ ¡Con estos fundamentos ya puedes empezar a escribir lógica y estructuras básicas en Python!
