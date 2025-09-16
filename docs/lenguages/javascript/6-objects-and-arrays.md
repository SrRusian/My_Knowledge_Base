# 6. Objects and Arrays

Objects and arrays are fundamental data structures in JavaScript for storing and organizing data.

## Object Literals

Objects store data as key-value pairs.

```js
const person = {
  name: "Alice",
  age: 25,
  isStudent: true,
  greet: function () {
    return "Hello, " + this.name;
  },
};
console.log(person.name); // "Alice"
console.log(person.greet()); // "Hello, Alice"
```

## Array Basics

Arrays are ordered lists of values (elements), indexed from 0.

```js
const numbers = [10, 20, 30, 40];
console.log(numbers[1]); // 20
numbers.push(50); // Add to end
console.log(numbers.length); // 5
```

## Methods for Objects and Arrays

### Common Object Methods

- `Object.keys(obj)`: Returns an array of keys
- `Object.values(obj)`: Returns an array of values
- `Object.entries(obj)`: Returns an array of [key, value] pairs

```js
const keys = Object.keys(person); // ["name", "age", "isStudent", "greet"]
```

### Common Array Methods

- `push()`, `pop()`: Add/remove at end
- `shift()`, `unshift()`: Remove/add at start
- `forEach()`: Run a function for each element
- `map()`: Create a new array by transforming each element
- `filter()`: Create a new array with elements that pass a test
- `reduce()`: Reduce array to a single value

```js
const doubled = numbers.map((n) => n * 2); // [20, 40, 60, 80, 100]
const evens = numbers.filter((n) => n % 2 === 0); // [10, 20, 30, 40, 50]
const sum = numbers.reduce((acc, n) => acc + n, 0); // 150
```

## Destructuring

Destructuring allows you to extract values from objects or arrays into variables.

### Array Destructuring

```js
const [first, second] = numbers;
console.log(first); // 10
console.log(second); // 20
```

### Object Destructuring

```js
const { name, age } = person;
console.log(name); // "Alice"
console.log(age); // 25
```

---

Objects and arrays are essential for managing and manipulating data in JavaScript. Mastering their methods and destructuring makes your code more concise and readable.
