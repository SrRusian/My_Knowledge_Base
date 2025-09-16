# 4. Operators: Redirection & Command Chaining

Learn how to control output, redirect data, and combine commands in the shell using operators like `>`, `>>`, `;`, `&&`, and `||`.

---

## 4.1 Output Redirection: `>` and `>>`

Redirect the output of a command to a file.

| Operator | Description                          | Example                  |
| -------- | ------------------------------------ | ------------------------ |
| >        | Overwrite file with command output   | echo "Hello" > file.txt  |
| >>       | Append command output to end of file | echo "World" >> file.txt |

**Examples:**

```bash
echo "First line" > notes.txt   # notes.txt now contains only 'First line'
echo "Second line" >> notes.txt # notes.txt now has both lines
cat notes.txt
# Output:
# First line
# Second line
```

---

## 4.2 Command Chaining: `;`, `&&`, `||`

Combine multiple commands on a single line.

| Operator | Name        | Description                                              |
| -------- | ----------- | -------------------------------------------------------- | ---------- | ------------------------------------------------------------ |
| ;        | Sequential  | Run commands one after another, regardless of success    |
| &&       | Logical AND | Run next command only if previous succeeds (exit code 0) |
|          |             |                                                          | Logical OR | Run next command only if previous fails (non-zero exit code) |

**Examples:**

```bash
echo "Hello" ; echo "World"      # Both commands run, always
mkdir test && cd test           # cd only runs if mkdir succeeds
mkdir work || echo "Failed"     # echo runs only if mkdir fails
```

---

## 4.3 Practical Workflows

**Overwrite a file with new content:**

```bash
echo "New content" > file.txt
```

**Append to a file:**

```bash
echo "Another line" >> file.txt
```

**Run multiple commands in sequence:**

```bash
cd project ; ls ; pwd
```

**Conditional execution:**

```bash
mkdir reports && cd reports
# Only cd if mkdir succeeds

mkdir backup || echo "Backup exists!"
# Only echo if mkdir fails
```

---

## 4.4 Reference Table

| Operator | Usage Example         | Description                       |
| -------- | --------------------- | --------------------------------- | ---------- | --- | ------------- | ------------------------------ |
| >        | echo "Hi" > file.txt  | Overwrite file with output        |
| >>       | echo "Hi" >> file.txt | Append output to file             |
| ;        | echo A ; echo B       | Run both commands, always         |
| &&       | mkdir test && cd test | Run second only if first succeeds |
|          |                       |                                   | mkdir test |     | echo "Failed" | Run second only if first fails |

---

**Summary:**

Shell operators let you control how commands interact, manage output, and build powerful workflows. Practice chaining and redirecting commands to streamline your command line tasks.
