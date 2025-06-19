# 04 - Estructuras de Datos 🧱

Las estructuras de datos permiten organizar y almacenar información eficientemente. En Python existen varias integradas: **listas**, **tuplas**, **diccionarios** y **conjuntos**.

---

## 4.1 Listas

Colecciones **ordenadas** y **mutables**, se crean con `[]`.

```python
frutas = ["manzana", "banana", "naranja"]
print(frutas[0])   # manzana
print(frutas[-1])  # naranja
```

### Métodos útiles

```python
frutas.append("pera")
frutas.insert(1, "uva")
frutas.remove("banana")
fruta = frutas.pop(2)
frutas.sort()
frutas.reverse()
```

### Listas por comprensión

```python
numeros = [1, 2, 3, 4, 5]
cuadrados = [x ** 2 for x in numeros if x % 2 == 0]
print(cuadrados)  # [4, 16]
```

---

## 4.2 Tuplas

Colecciones **ordenadas** e **inmutables**, se crean con `()`.

```python
punto = (3, 4)
print(punto[0])  # 3
```

### Métodos útiles

```python
mi_tupla = (1, 2, 3, 2, 4, 2)
print(mi_tupla.index(2))         # 1
print(mi_tupla.index(2, 2))      # 3
print(mi_tupla.count(2))         # 3
print(len(mi_tupla))             # 6
```

---

## 4.3 Diccionarios

Colecciones **no ordenadas** de **pares clave-valor**, se crean con `{}`.

```python
persona = {"nombre": "Juan", "edad": 25, "ciudad": "Madrid"}
print(persona["nombre"])     # Juan
print(persona.get("pais"))   # None
```

### Métodos útiles

```python
persona.keys()     # dict_keys([...])
persona.values()   # dict_values([...])
persona.items()    # dict_items([...])
persona.update({"profesion": "Ingeniero"})
```

---

## 4.4 Conjuntos (`set`)

Colecciones **no ordenadas** de **elementos únicos**.

```python
frutas = {"manzana", "banana", "naranja"}
numeros = set([1, 2, 3, 4])
```

### Operaciones de conjuntos

```python
a = {1, 2, 3}
b = {3, 4, 5}

print(a | b)  # unión: {1, 2, 3, 4, 5}
print(a & b)  # intersección: {3}
print(a - b)  # diferencia: {1, 2}
print(a ^ b)  # diferencia simétrica: {1, 2, 4, 5}
```

### Métodos útiles

```python
frutas.add("pera")
frutas.remove("banana")
frutas.discard("uva")
frutas.clear()
```

---

## ✅ Conclusión

| Estructura   | Ordenado | Mutable | Clave-Valor | Duplicados |
|--------------|----------|---------|-------------|------------|
| Lista        | Sí       | Sí      | No          | Sí         |
| Tupla        | Sí       | No      | No          | Sí         |
| Diccionario  | No       | Sí      | Sí          | No (en claves) |
| Conjunto     | No       | Sí      | No          | No         |

Cada estructura tiene ventajas según el uso. Python ofrece gran flexibilidad para almacenar y trabajar con datos eficientemente.
