# 3. Operators

Operators are symbols or keywords that perform operations on values and variables. JavaScript supports several types of operators.

## Arithmetic Operators

Used for mathematical calculations:

| Operator | Description    | Example      | Result |
| -------- | -------------- | ------------ | ------ |
| +        | Addition       | 5 + 2        | 7      |
| -        | Subtraction    | 5 - 2        | 3      |
| \*       | Multiplication | 5 \* 2       | 10     |
| /        | Division       | 5 / 2        | 2.5    |
| %        | Modulus        | 5 % 2        | 1      |
| \*\*     | Exponentiation | 2 \*\* 3     | 8      |
| ++       | Increment      | let x=1; x++ | 2      |
| --       | Decrement      | let x=1; x-- | 0      |

**Example:**

```js
let a = 10;
let b = 3;
console.log(a + b); // 13
console.log(a % b); // 1
```

## Comparison Operators

Used to compare two values. They return a boolean (true or false).

| Operator | Description         | Example   | Result |
| -------- | ------------------- | --------- | ------ |
| ==       | Equal to            | 5 == '5'  | true   |
| ===      | Strict equal to     | 5 === '5' | false  |
| !=       | Not equal to        | 5 != '5'  | false  |
| !==      | Strict not equal to | 5 !== '5' | true   |
| >        | Greater than        | 7 > 3     | true   |
| <        | Less than           | 7 < 3     | false  |
| >=       | Greater or equal    | 5 >= 5    | true   |
| <=       | Less or equal       | 4 <= 3    | false  |

**Example:**

```js
console.log(5 == "5"); // true
console.log(5 === "5"); // false
console.log(7 > 3); // true
```

## Logical Operators

Used to combine or invert boolean values.

| Operator | Description | Example       | Result |
| -------- | ----------- | ------------- | ------ | ----- | ---- |
| &&       | AND         | true && false | false  |
| \|\|     | OR          | true          |        | false | true |
| !        | NOT         | !true         | false  |

**Example:**

```js
let isAdult = true;
let hasID = false;
console.log(isAdult && hasID); // false
console.log(isAdult || hasID); // true
console.log(!isAdult); // false
```

## Ternary Operator

The ternary operator is a shorthand for if-else statements. Syntax:

```js
condition ? valueIfTrue : valueIfFalse;
```

**Example:**

```js
let age = 18;
let status = age >= 18 ? "Adult" : "Minor";
console.log(status); // "Adult"
```

---

Operators are essential for performing calculations, making decisions, and controlling logic in JavaScript programs.
