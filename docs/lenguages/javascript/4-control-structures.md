# 4. Control Structures

Control structures allow you to make decisions and repeat actions in your code. JavaScript supports several types of control structures.

## if, else, switch

### if / else if / else

Used to execute code based on a condition.

```js
let score = 85;
if (score >= 90) {
  console.log("Excellent");
} else if (score >= 70) {
  console.log("Good");
} else {
  console.log("Needs improvement");
}
```

### switch

Used to select one of many code blocks to execute.

```js
let fruit = "apple";
switch (fruit) {
  case "apple":
    console.log("It's an apple");
    break;
  case "banana":
    console.log("It's a banana");
    break;
  default:
    console.log("Unknown fruit");
}
```

## for, while, do...while

### for loop

Executes a block of code a specific number of times.

```js
for (let i = 0; i < 5; i++) {
  console.log(i);
}
```

### while loop

Executes a block of code as long as a condition is true.

```js
let n = 0;
while (n < 3) {
  console.log(n);
  n++;
}
```

### do...while loop

Executes a block of code at least once, then repeats as long as a condition is true.

```js
let count = 0;
do {
  console.log(count);
  count++;
} while (count < 3);
```

## break and continue

- `break`: Exits the nearest loop or switch statement.
- `continue`: Skips the current iteration and continues with the next one.

**Example:**

```js
for (let i = 0; i < 5; i++) {
  if (i === 3) break;
  if (i === 1) continue;
  console.log(i); // Output: 0, 2
}
```

---

Control structures are essential for decision-making and repeating actions in JavaScript programs.
