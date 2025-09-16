# 5. Functions

Functions are reusable blocks of code that perform a specific task. They are fundamental in JavaScript.

## Function Declaration

The classic way to define a function:

```js
function greet(name) {
  return "Hello, " + name + "!";
}
console.log(greet("Alice")); // Hello, Alice!
```

## Function Expression

A function can be assigned to a variable:

```js
const add = function (a, b) {
  return a + b;
};
console.log(add(2, 3)); // 5
```

## Arrow Functions

Introduced in ES6, arrow functions provide a shorter syntax:

```js
const multiply = (x, y) => x * y;
console.log(multiply(4, 5)); // 20

// With one parameter and multiple lines
const square = (n) => {
  return n * n;
};
```

## Parameters and Arguments

Parameters are variables listed in the function definition. Arguments are values passed to the function.

```js
function sayHello(name = "Guest") {
  console.log("Hello, " + name);
}
sayHello("Bob"); // Hello, Bob
sayHello(); // Hello, Guest
```

## Scope

Scope determines where variables are accessible. Functions create their own scope.

```js
let x = 10;
function test() {
  let y = 20;
  console.log(x); // 10 (outer scope)
  console.log(y); // 20 (local scope)
}
// console.log(y); // Error: y is not defined
```

## Closures

A closure is a function that remembers its outer variables even after the outer function has finished executing.

```js
function makeCounter() {
  let count = 0;
  return function () {
    count++;
    return count;
  };
}
const counter = makeCounter();
console.log(counter()); // 1
console.log(counter()); // 2
```

---

Functions are powerful tools for structuring and reusing code in JavaScript. Understanding scope and closures is key to mastering functions.
