# 4. Estructuras de Datos

Python ofrece varias estructuras de datos integradas para almacenar y manipular información de manera eficiente.

## Listas (lists)

Son colecciones ordenadas y mutables de elementos.

```python
frutas = ["manzana", "pera", "uva"]
print(frutas[0])  # manzana
frutas.append("plátano")
print(frutas)
```

### Métodos básicos de listas

- `append(x)`: agrega un elemento al final
- `remove(x)`: elimina la primera aparición de x
- `pop()`: elimina y retorna el último elemento
- `sort()`: ordena la lista

## Tuplas (tuples)

Son colecciones ordenadas e inmutables.

```python
coordenadas = (10, 20)
print(coordenadas[1])  # 20
```

## Diccionarios (dictionaries)

Almacenan pares clave-valor. Son mutables y no ordenados (en versiones recientes sí mantienen orden de inserción).

```python
persona = {"nombre": "Alicia", "edad": 25}
print(persona["nombre"])
persona["edad"] = 26
```

### Métodos básicos de diccionarios

- `keys()`: retorna las claves
- `values()`: retorna los valores
- `items()`: retorna pares clave-valor

## Conjuntos (sets)

Colecciones no ordenadas de elementos únicos.

```python
numeros = {1, 2, 3, 2}
print(numeros)  # {1, 2, 3}
numeros.add(4)
```

### Métodos básicos de sets

- `add(x)`: agrega un elemento
- `remove(x)`: elimina un elemento (error si no existe)
- `discard(x)`: elimina un elemento (no error si no existe)
- `union()`, `intersection()`, `difference()`

---

Dominar estas estructuras es clave para resolver problemas y organizar datos en Python.
