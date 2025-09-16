# 6. Visual Summary and Reference Tables

Quick reference tables for commands, keyboard shortcuts, and operators. Use this section for a fast lookup of the most important command line tools.

---

## 6.1 Essential Commands

| Command / Usage   | Description                     |
| ----------------- | ------------------------------- |
| pwd               | Print current working directory |
| ls                | List files and directories      |
| cd directory      | Change to directory             |
| cd ..             | Go up one directory             |
| cd ../..          | Go up two directories           |
| cd dir/subdir     | Go directly to subdirectory     |
| touch file        | Create a new file               |
| mkdir dir         | Create a new directory          |
| cat file          | Show file contents              |
| echo "text"       | Print text to terminal          |
| clear             | Clear the terminal screen       |
| mv src dest       | Move/rename file or directory   |
| rm file           | Delete file                     |
| rm -r dir         | Delete directory and contents   |
| rmdir dir         | Delete empty directory          |
| cp src dest       | Copy file                       |
| cp -r dir-a dir-b | Copy directory and contents     |

---

## 6.2 Keyboard Shortcuts

| Shortcut    | Description                           |
| ----------- | ------------------------------------- |
| Tab         | Auto-complete file or directory names |
| ↑ / ↓       | Cycle through previous/next commands  |
| Ctrl + L    | Clear the terminal (like `clear`)     |
| Command + K | Clear the terminal (Mac)              |

**Tip:** Even after clearing, you can still use ↑ and ↓ to access command history.

---

## 6.3 Operators and Chaining

| Operator | Usage Example         | Description                       |
| -------- | --------------------- | --------------------------------- | ---------- | --- | ------------- | ------------------------------ |
| >        | echo "Hi" > file.txt  | Overwrite file with output        |
| >>       | echo "Hi" >> file.txt | Append output to file             |
| ;        | echo A ; echo B       | Run both commands, always         |
| &&       | mkdir test && cd test | Run second only if first succeeds |
|          |                       |                                   | mkdir test |     | echo "Failed" | Run second only if first fails |

---

## 6.4 File Manipulation Reference

| Command / Operator   | Description                  |
| -------------------- | ---------------------------- |
| echo "text" > file   | Overwrite file with text     |
| echo "text" >> file  | Append text to file          |
| cat file-a > file-b  | Overwrite file-b with file-a |
| cat file-a >> file-b | Append file-a to file-b      |

---

**Summary:**

Use these tables as a quick reference for the most common and useful command line tools, shortcuts, and operators. Mastery of these basics will make you efficient and confident in the shell.
