# 2. Navigation

Learn how to move through the filesystem using essential commands like `pwd`, `ls`, and `cd`. This section covers directory structure concepts, viewing file contents, and useful keyboard shortcuts for efficient navigation.

---

## 2.1 Filesystem and Directories

Your computer's filesystem is organized into directories (folders) and files. In the command line, folders are called **directories**. You can navigate, list, and inspect these using a few core commands.

### Filesystem Example

```
/ (root)
├── home/
│   └── user/
│       ├── Documents/
│       ├── Desktop/
│       └── file.txt
└── etc/
```

---

## 2.2 Print Working Directory: `pwd`

Shows your current location in the filesystem.

```bash
pwd
# Example output:
/home/user/Documents
```

---

## 2.3 List Directory Contents: `ls`

Lists files and directories in your current location.

```bash
ls
# Example output:
Desktop  Documents  file.txt
```

**Common options:**

| Option | Description         |
| ------ | ------------------- |
| -l     | Long format         |
| -a     | Show hidden files   |
| -h     | Human-readable size |

Example:

```bash
ls -la
```

---

## 2.4 Change Directory: `cd`

Moves you to a different directory.

```bash
cd directory-name
cd Documents
```

**Special usages:**

| Command          | Description                   |
| ---------------- | ----------------------------- |
| cd ..            | Go up one directory (parent)  |
| cd ../..         | Go up two directories         |
| cd /             | Go to the root directory      |
| cd ~             | Go to your home directory     |
| cd directory/sub | Go directly to a subdirectory |

**Examples:**

```bash
cd ..
cd Desktop/Projects
cd ../../Downloads
```

---

## 2.5 Viewing File Content: `cat` and `echo`

Display the contents of a file:

```bash
cat file.txt
# Prints the content of file.txt
```

Print a line of text (or variable):

```bash
echo "Hello, World!"
# Output: Hello, World!
```

---

## 2.6 Clearing the Terminal: `clear`

Removes all previous output from the terminal window (does not change your current directory).

```bash
clear
```

---

## 2.7 Keyboard Shortcuts for Navigation

| Shortcut | Description                           |
| -------- | ------------------------------------- |
| Tab      | Auto-complete file or directory names |
| ↑ / ↓    | Cycle through previous/next commands  |
| Ctrl + L | Clear the terminal (like `clear`)     |

**Tip:** Even after clearing, you can still use ↑ and ↓ to access command history.

---

## 2.8 Practical Navigation Workflow

1. **Check where you are:**
   ```bash
   pwd
   ```
2. **List contents:**
   ```bash
   ls
   ```
3. **Move to a directory:**
   ```bash
   cd Documents
   ```
4. **Go back up:**
   ```bash
   cd ..
   ```
5. **View a file:**
   ```bash
   cat notes.txt
   ```
6. **Clear the screen:**
   ```bash
   clear
   ```

---

## 2.9 Reference Table

| Command / Shortcut | Description                |
| ------------------ | -------------------------- |
| pwd                | Print current directory    |
| ls                 | List files and directories |
| cd directory       | Change to directory        |
| cd ..              | Go up one directory        |
| cat file           | Show file contents         |
| echo "text"        | Print text to terminal     |
| clear              | Clear the terminal screen  |
| Tab                | Auto-complete names        |
| ↑ / ↓              | Command history navigation |
| Ctrl + L           | Clear terminal (shortcut)  |

---

**Summary:**

Mastering navigation commands is essential for efficient command line usage. Practice moving around, listing contents, and viewing files to become comfortable with the filesystem structure.
