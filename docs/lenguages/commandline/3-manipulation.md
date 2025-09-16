# 3. Manipulation

Learn how to create, move, rename, copy, and delete files and directories from the command line. This section covers essential commands and practical workflows for manipulating your filesystem.

---

## 3.1 Creating Directories: `mkdir`

Create a new directory (folder) in your current location.

```bash
mkdir new-directory
```

**Example:**

```bash
mkdir projects
mkdir notes/2025
```

**Tip:** You can create nested directories in one command (if parent exists):

```bash
mkdir parent/child
```

---

## 3.2 Creating Files: `touch`

Create a new, empty file.

```bash
touch file.txt
touch notes/summary.md
```

**Tip:** `touch` can create any file type (e.g., `.py`, `.html`).

---

## 3.3 Writing to Files: `echo` and `cat`

Write text to a file (overwriting or appending):

| Command                      | Description                              |
| ---------------------------- | ---------------------------------------- |
| echo "text" > file.txt       | Overwrite file.txt with "text"           |
| echo "more text" >> file.txt | Append "more text" to file.txt           |
| cat file-a > file-b          | Overwrite file-b with contents of file-a |
| cat file-a >> file-b         | Append contents of file-a to file-b      |

**Examples:**

```bash
echo "Hello, World!" > hello.txt
echo "Second line" >> hello.txt
cat hello.txt
# Output:
# Hello, World!
# Second line
```

---

## 3.4 Moving and Renaming: `mv`

Move or rename files and directories.

| Command                    | Description                       |
| -------------------------- | --------------------------------- |
| mv file.txt folder/        | Move file.txt into folder/        |
| mv oldname.txt newname.txt | Rename file                       |
| mv folder1/ folder2/       | Rename or move folder1 to folder2 |

**Examples:**

```bash
mv notes.txt archive/
mv draft.md final.md
mv old_folder new_folder
```

---

## 3.5 Deleting Files and Directories: `rm`, `rmdir`

Remove files and directories.

| Command        | Description                        |
| -------------- | ---------------------------------- |
| rm file.txt    | Delete file.txt                    |
| rm file1 file2 | Delete multiple files              |
| rm -r folder/  | Delete folder and all its contents |
| rmdir folder/  | Delete empty folder                |

**Examples:**

```bash
rm temp.txt
rm -r old_projects/
rmdir empty_folder/
```

**Warning:** `rm -r` is powerful—deleted files and folders cannot be easily recovered.

---

## 3.6 Copying Files and Directories: `cp`, `cp -r`

Copy files and directories.

| Command             | Description                                 |
| ------------------- | ------------------------------------------- |
| cp file-a file-b    | Copy file-a to file-b (overwrite if exists) |
| cp -r dir-a/ dir-b/ | Copy dir-a and all contents to dir-b        |

**Examples:**

```bash
cp report.txt backup.txt
cp -r projects/ projects-backup/
```

---

## 3.7 Practical Manipulation Workflow

1. **Create a directory and file:**
   ```bash
   mkdir demo
   touch demo/example.txt
   ```
2. **Write to the file:**
   ```bash
   echo "Sample text" > demo/example.txt
   ```
3. **Copy the file:**
   ```bash
   cp demo/example.txt demo/copy.txt
   ```
4. **Rename the file:**
   ```bash
   mv demo/copy.txt demo/renamed.txt
   ```
5. **Delete the file:**
   ```bash
   rm demo/renamed.txt
   ```
6. **Remove the directory:**
   ```bash
   rm -r demo
   ```

---

## 3.8 Reference Table

| Command / Operator   | Description                   |
| -------------------- | ----------------------------- |
| mkdir dir            | Create directory              |
| touch file           | Create file                   |
| echo "text" > file   | Overwrite file with text      |
| echo "text" >> file  | Append text to file           |
| cat file-a > file-b  | Overwrite file-b with file-a  |
| cat file-a >> file-b | Append file-a to file-b       |
| mv src dest          | Move/rename file or directory |
| rm file              | Delete file                   |
| rm -r dir            | Delete directory and contents |
| rmdir dir            | Delete empty directory        |
| cp src dest          | Copy file                     |
| cp -r dir-a dir-b    | Copy directory and contents   |

---

**Summary:**

Manipulation commands let you organize, edit, and maintain your filesystem efficiently. Practice these commands to master file and directory management from the command line.
