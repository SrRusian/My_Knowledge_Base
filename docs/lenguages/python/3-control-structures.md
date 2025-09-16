# 3. Estructuras de Control

Las estructuras de control permiten tomar decisiones y repetir acciones en un programa.

## if, elif, else

Sirven para ejecutar bloques de código según condiciones.

```python
edad = 18
if edad >= 18:
	print("Eres mayor de edad")
elif edad >= 13:
	print("Eres adolescente")
else:
	print("Eres niño")
```

## for

Permite iterar sobre una secuencia (lista, cadena, rango, etc.).

```python
for i in range(5):
	print(i)

frutas = ["manzana", "pera", "uva"]
for fruta in frutas:
	print(fruta)
```

## while

Repite un bloque de código mientras la condición sea verdadera.

```python
n = 0
while n < 3:
	print(n)
	n += 1
```

## break, continue, pass

- `break`: Sale del bucle actual.
- `continue`: Salta a la siguiente iteración.
- `pass`: No hace nada, se usa como marcador de posición.

```python
for i in range(5):
	if i == 3:
		break  # Sale del bucle cuando i es 3
	if i == 1:
		continue  # Salta el valor 1
	print(i)

for i in range(3):
	pass  # Bucle vacío, útil como esqueleto
```

---

Las estructuras de control son esenciales para crear programas dinámicos y flexibles en Python.
