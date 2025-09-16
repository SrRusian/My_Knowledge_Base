# examples

Here are practical command line workflows and recipes for common tasks. Use these step-by-step examples to master file and directory management in the shell.

---

## 1. Create a Directory and File

```bash
# Create a new directory called 'projects' and move into it
mkdir projects
cd projects

# Create a new file called 'notes.txt'
touch notes.txt
```

---

## 2. Write and Append Text to a File

```bash
# Overwrite the file with new content
echo "First line of notes" > notes.txt

# Append more text
echo "Second line" >> notes.txt

# View the file content
cat notes.txt
```

---

## 3. Move and Rename Files/Directories

```bash
# Rename 'notes.txt' to 'ideas.txt'
mv notes.txt ideas.txt

# Move 'ideas.txt' into a subdirectory 'archive'
mkdir archive
mv ideas.txt archive/
```

---

## 4. Copy Files and Directories

```bash
# Copy a file
cp archive/ideas.txt ideas-copy.txt

# Copy a directory and its contents
cp -r archive archive-backup
```

---

## 5. Combine Files

```bash
# Combine two files into a new file
cat file1.txt file2.txt > combined.txt

# Append the content of one file to another
cat file2.txt >> file1.txt
```

---

## 6. Remove Files and Directories

```bash
# Remove a file
rm ideas-copy.txt

# Remove an empty directory
rmdir archive-backup

# Remove a directory and all its contents
rm -r archive
```

---

## 7. Navigation and Viewing

```bash
# Print the current directory
pwd

# List files and directories
ls

# View the content of a file
cat ideas.txt
```

---

## 8. Chaining and Combining Commands

```bash
# Create a directory and immediately move into it
mkdir reports && cd reports

# List files, then clear the screen
ls ; clear

# Try to make a directory, or print a message if it fails
mkdir data || echo "Directory already exists"
```

---

## 9. Useful Shortcuts

- Use `Tab` to auto-complete file and directory names.
- Use `↑` and `↓` to scroll through command history.
- Use `clear` or `Ctrl+L` to clear the terminal screen.

---

Practice these workflows to become efficient and confident in the command line!
