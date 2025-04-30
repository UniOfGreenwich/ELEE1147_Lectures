---
marp: true
---

<!--
# Metadata
title: Streams
author: Seb Blair (CompEng0001)
description: Lecture slides on Streams.
keywords: module handbook
lang: en

# Slide styling
theme: uog-theme
_class: lead title
paginate: true
_paginate: false
transition: fade 250ms

style: |
  header em { font-style: normal; view-transition-name: header; }
  header strong { font-weight: inherit; view-transition-name: header2; }
  header:not:has(em) { view-transition-name: header; }
  header:not:has(strong) { view-transition-name: header; }
-->

<style scoped>
h1 {
  view-transition-name: header;
  display: flex;
  align-items: center;
  margin: 0 auto;
}
</style>

# Streams

<div align=center style="font-size:76px; padding-left:300px;padding-right:300px;" >

```py
module = Module(
    code="ELEE1147",
    name="Programming for Engineers",
    credits=15,
    module_leader="Seb Blair BEng(H) PGCAP MIET MIHEEM FHEA"
)
```

</div>

<!-- _footer: "[Download as a PDF](https://github.com/UniOfGreenwich/ELEE1147_Lectures/raw/main/content/Streams/Streams.pdf)" -->

---

<style scoped>
h1 { view-transition-name: header2; }
</style>

<!-- header: "_Streams_" -->

<div style="padding-top:30px">

## Introduction to Streams

</div>

<div style="padding-top:70px">

- Streams are sequences of data elements.
<br>
- In C, we commonly work with three standard streams:
  <br>
  - Standard Input (**stdin**)
  <br>
  - Standard Output (**stdout**)
  <br>
  - Standard Error (**stderr**)

</div>

![drop-shadow bg right:50% 90%](../../figures/usestreams.jpg)

---

<div style="padding-top:20px">

## Kernel

</div>

<div style="padding-top:28px">

When using streams, we need to remember that all of this is handled by the kernel.

System calls, such as `open()`, `write()` and `exit()` can be invoked by user and system level program:

</div>

<br>

<div style="padding-left:10px; font-size:30px">

- `open()`: 
  - It is the system call to open a file.​

- `read()`:​
  - This system call opens the file in reading mode. 
  - Multiple processes can execute the `read()` system call on the same file simultaneously.​

- `write()`:​ 
  - This system call opens the file in writing mode.
  - Multiple processes can not execute the `write()` system call on the same file simultaneously.​

- `close()`: This system call closes the opened file.​

</div>

---

<div style="padding-top:20px">

## But what about concurrent `write()`

</div>

<br>

OneDrive and GoogleDrive etc implement mechanisms to allow concurrent access while avoiding conflicts when multiple processes or users attempt to write to the same file:

<div style="padding-left:10px;padding-top:20px">

- **Granular Locking Mechanism**:
  -  portion of the file is locked

- **Conflict Detection and Resolution**:
  - versioning and merging

- **Real-Time Collaboration**:
  - syncing changes at the character or paragraph level. 
  - Changes are merged in real time, allowing multiple users to work on a file simultaneously. 

- **Metadata, State & Periodic syncing, and local caching**:
  - managed by using timestamping, version numbers and checksums/hashes

</div>

---

## Standard Input (stdin)

<div class="columns-2">
<div>

- **stdin** is the **st**andar**d** **in**put stream.
<br>
- It is used to read input from the user or from another program.
<br>
- Functions like `scanf()`/`scanf_s` and `getchar()` read from stdin.
<br>
- `scanf()` reads input from the standard input (usually the keyboard) and stores it in the specified variable.
<br>
- In this example, it waits for the user to input an integer and stores it in the variable `num`.

</div>
<div style="padding-top:250px">

  ```c
  int num;
  printf("Enter a number: ");
  scanf("%d", &num);
  ```

</div>
</div>

---


## Standard Input flow:

![invert w:1700](../../figures/stdin_diagram.svg "centered")

---

## Standard Output (stdout)

<div class="columns-2">
<div style="padding-top:200px">

- **stdout** is the **st**andar**d** **out**put stream.

- It is used to display output to the user or another program.

- Functions like `printf()` and `putchar()` write to stdout.

</div>

<div style="padding-top:250px">

```c
int result = 42;
printf("The answer is: %d\n", result);
```

</div>
</div>

---


## Standard Error (stderr)

<div class="columns-2">
<div style="padding-top:200px">

- **stderr** is the **st**andar**d** **err**or stream.

- It is used to display error messages or diagnostic information.

- It's particularly useful to separate error messages from regular output.

</div>
<div style="padding-top:180px">

```c
FILE *file = fopen("nonexistent.txt", "r");
if (file == NULL) {
    fprintf(stderr, "Error: Unable to open the file!\n");
}
```

> Note:
> `printf` uses stdout
> `fprintf` can use different streams

</div>
</div>

---

## Standard Ouput and Error flow:

![invert w:1700](../../figures/stdouterr_diagram.svg "centered")

---


<!-- header: "Streams" -->
<!-- class: lead -->

<style scoped>
h1 { view-transition-name: header2; }
</style>


# File Modes

---

<!-- header: "_Streams_ > **File Modes**" -->

## File Modes

- **Read (`"r"`) Mode**: Open a file for reading. The file must exist.

- **Write (`"w"`) Mode**: Open a file for writing. If the file exists, its content is truncated; if not, a new file is created.

- **Append (`"a"`) Mode**: Open a file for writing, but append data to the end. If the file doesn't exist, it is created.


>**Note:**
>> Linux file modes, `r`, `w`, `x`, whereas here there is no execute.

---

## File Mode FLow

![w:800 center](../../figures/read_write_append_diagram.png)

---

<!-- header: "Streams > File Modes" -->

## File Modes

<div style="font-size:24px">

|                | `r`  | `r+`|   `w`|   `w+` |  `a`|   `a+`|
|----------------|----|---|-----|------|---|----|
read - reading from file is allowed| +  | + |     |  +   |   |  +|
<br>
| write - writing to file is allowed|    | + |   + |  +   | + |  +|
<br>
|write after seek  |    + |   + |  +|||
<br>
|create - file is created if it does not exist yet |   |   |   + |  +   | + |  +|
<br>
|truncate - during opening of the file it is made empty (all content of the file is erased)   |   |   + |  +|||
<br>
|position at end - after file is opened, initial position is set to the end of the file|    |   |     |      | + |  +|
<br>

---

<!-- header: "Streams" -->
<!-- class: lead -->

# Functions in C

<style scoped>
h1 { view-transition-name: header2; }
</style>

---

<!-- header: "_Streams_ > **Functions in C**" -->

<div style="padding-top:40px">

C provides functions to interact with streams in the <span style="font-size:38px">`<stdio.h>`</span> header, like these for handling files:

</div>

<br>

<div style="padding-left:20px">

- <span style="font-size:38px">`fopen()`</span>: Opens a file stream.
<br>
- <span style="font-size:38px">`fclose()`</span>: Closes a file stream.
<br>
- <span style="font-size:38px">`fprintf()`</span>: Writes to a stream with formatting.
<br>
- <span style="font-size:38px">`fscanf()`</span>: Reads from a stream with formatting.

</div>

--- 

<div>

## Opening a File

</div>

<div class="columns-2">

<div style="padding-top:150px;">

To operate on a file, you must first open it using the <span style="font-size:38px">`fopen`</span> function. This function allows you to specify the file's path, mode (read, write, execute), and returns a file pointer for further operations.

</div>
<div style="padding-top:50px;">

```c
#include <stdio.h>

int main(){

  FILE *file = fopen("example.txt", "r");
  if (file == NULL) {
      fprintf(stderr, "Error: Unable to open the file!\n");
      exit(1);
  }

  ...

  return 0;
}
```

</div>
</div>

---

## Write and Read

<div style="padding-left:200px;padding-right:200px;">

```c
#include <stdio.h>

int main(){

  // Read Mode
  FILE *readFile = fopen("example.txt", "r");
  if (file == NULL) {
      fprintf(stderr, "Error: Unable to open the file!\n");
      exit(1);
  }
  
  // Output file content to stdout
  char ch;
  while ((ch = fgetc(readFile)) != EOF) {
      putchar(ch); // like printf
  }
  fclose(readFile);

  // Write Mode
  FILE *writeFile = fopen("example.txt", "w");
  if (file == NULL) {
      fprintf(stderr, "Error: Unable to open the file!\n");
      exit(1);
  }
  fprintf(writeFile, "Hello, World!");
  fclose(writeFile);

  // Append Mode
  FILE *appendFile = fopen("example.txt", "a");
  if (file == NULL) {
      fprintf(stderr, "Error: Unable to open the file!\n");
      exit(1);
  }
  fprintf(appendFile, "\nAppended Content");
  fclose(appendFile);

  ...

  return 0;
}
```
---

<div style="padding-top:50px">

## Single Write Instance

</div>

<div class="columns-2" style="padding-top:150px">
<div style="padding-top:50px">

**Only one** instance of a file can be opened for writing at a time. This prevents multiple processes from simultaneously modifying the same file, avoiding data corruption.

</div>
<div>

```c
#include <stdio.h>

int main(){

  FILE *writeFile1 = fopen("example.txt", "w");

  // Error: Cannot open for write concurrently
  FILE *writeFile2 = fopen("example.txt", "w");

  return 0;
}
```

</div>
</div>

---

<div>

## Dirty Files

</div>

<div class="columns-2" style="padding-top:150px">
<div style="padding-top:50px">

When a file is opened for writing, it becomes a "dirty" file. This means changes are made in memory but not yet saved to disk. To persist changes, use the `fclose()` function.

</div>
<div>

```c
#include <stdio.h>

int main(){

  FILE *dirtyFile = fopen("example.txt", "w"); // file is open for writing too
  fprintf(dirtyFile, "Hello, World!"); // File is dirty
  fclose(dirtyFile); // Save changes to disk, file is "clean"

  return 0;
}
```

</div>
</div>

---

<div>

## Why Close Files?

</div>

<div>

When working with files in C, it's crucial to close them properly after operations. Failing to do so can lead to unexpected behavior, data corruption, and resource leaks.
1. **Data Persistence:** 
   - Closing a file ensures that any changes made during read or write operations are saved to the underlying storage. Without proper closure, changes may be lost.

2. **Resource Management:** 
   - File operations involve system resources. Closing a file releases these resources, preventing potential memory leaks or system resource exhaustion.

3. **Avoiding Data Corruption:**
   - Closing files properly helps avoid data corruption, especially when multiple programs or processes access the same file. It ensures exclusive access when needed.

</div>

----

## Proper File Closure Example

<div style="padding-left:200px;padding-right:200px; padding-top:50px">

```c
#include <stdio.h>

int main() {
    FILE *filePtr = fopen("example.txt", "w");

    if (filePtr != NULL) {
        fprintf(filePtr, "Hello, World!");
        fclose(filePtr); // Properly close the file
    } else {
        printf("Error opening the file!\n");
    }

    return 0;
}
```

<div>

---


<!-- header: "Streams" -->

## Python

Same concepts, ever so slightly different syntax:

</div>

<div style="padding-left:200px;padding-right:200px; padding-top:50px">

```py
def main():
    # Open file for reading
    with open("example.txt", "r") as file:
        content = file.read()  # Read entire file
        file.seek(0)  # Reset file pointer to the beginning
        line = file.readline()  # Read single line
        file.seek(0)  # Reset file pointer to the beginning
        lines = file.readlines()  # Read all lines into a list

    # Open file for writing
    with open("example.txt", "w") as file:
        file.write("Hello, World!")  # Write a string to the file

    # Open file for appending
    with open("example.txt", "a") as file:
        file.write("\nAppended Content")  # Append a string to the file

if __name__ == '__main__':
    main()
```

</div>