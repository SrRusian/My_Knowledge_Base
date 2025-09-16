# 2. Variables and Types

Understanding variables and data types is fundamental in JavaScript. This section covers variable declarations, the main data types, and type coercion.

## var, let, const

JavaScript provides three ways to declare variables:

- `var`: Function-scoped, can be redeclared and updated. Hoisted to the top of its scope.
- `let`: Block-scoped, can be updated but not redeclared in the same scope. Introduced in ES6.
- `const`: Block-scoped, cannot be updated or redeclared. The value must be assigned at declaration.

**Examples:**

```js
var x = 10;
let y = 20;
const z = 30;

y = 25; // OK
// z = 40; // Error: Assignment to constant variable
```

## Data Types

JavaScript has dynamic typing, meaning variables can hold any type of value. The main data types are:

- **Number**: Integers and floating-point numbers
  ```js
  let age = 30;
  let price = 19.99;
  ```
- **String**: Textual data
  ```js
  let name = "Alice";
  let greeting = "Hello";
  ```
- **Boolean**: true or false
  ```js
  let isActive = true;
  let isComplete = false;
  ```
- **Null**: Intentional absence of value
  ```js
  let data = null;
  ```
- **Undefined**: Variable declared but not assigned
  ```js
  let result;
  console.log(result); // undefined
  ```
- **Object**: Collections of key-value pairs
  ```js
  let person = { name: "Bob", age: 22 };
  ```
- **Array**: Ordered list of values (technically objects)
  ```js
  let numbers = [1, 2, 3, 4];
  ```
- **Symbol**: Unique and immutable value (advanced, ES6)
  ```js
  let id = Symbol("id");
  ```

## Type Coercion

JavaScript automatically converts values from one type to another when needed. This is called type coercion.

**Examples:**

```js
let result = "5" + 2; // "52" (number 2 is coerced to string)
let sum = "5" - 2; // 3   (string "5" is coerced to number)
let bool = Boolean(0); // false
let n = Number("123"); // 123
```

**Loose vs. strict equality:**

```js
0 == false; // true (type coercion)
0 === false; // false (no coercion, different types)
```

---

Choosing the right variable declaration and understanding data types and coercion is key to writing reliable JavaScript code.
