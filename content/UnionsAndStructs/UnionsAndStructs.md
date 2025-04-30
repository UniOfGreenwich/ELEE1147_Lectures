---
marp: true
---

<!--
# Metadata
title: Unions and Structs
author: Seb Blair (CompEng0001)
description: Lecture slides on Unions and Structs.
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

# Unions and Structs

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

<!-- _footer: "[Download as a PDF](https://github.com/UniOfGreenwich/ELEE1147_Lectures/raw/main/content/UnionsAndStructs/UnionsAndStructs.pdf)" -->

---



<style scoped>
h1 { view-transition-name: header2; }
</style>

<!-- header: "_Unions and Structs_" -->

<div style="padding-top:100px;padding-bottom:200px">

## What are Structs and Unions?

</div>

- **Structs:** Composite data types that group variables under a single name.
- **Unions:** Similar to structs but share the same memory space for all members.

---

<!-- class: lead -->

# Struct

<style scoped>
h1 { view-transition-name: header2; }
</style>

---

<!-- header: "_Unions and Structs_ > **Struct**" -->

<div class="columns-2">
<div>

- A struct is a user-defined data type in which different data types can be grouped together under a single name.

<br>
<br>

- It is declared using the `struct` **keyword**, followed by the structure's name and a block of members enclosed in curly braces `{...}`.

</div>


<div>

```c
struct [NameOfStruct] {
    char var1;
    int var2;
    float var3;
};
```

$\hspace{7em}\ \downarrow\hspace{10em}\ \downarrow$

```c
struct Person {
    char name[50];
    int age;
    float height;
};
```
</div>
</div>

---

<div>

## Accessing Members

</div>

<div class="columns-2"; style="padding-top:150px">
<div style="padding-top:80px">

- **Accessing Members with Pointers**
  <br>

  - The arrow operator (`->`) is used when accessing members through pointers.
  - or `(*structName).member`

</div>

<div>
    
```c
struct Person {
    char name[50];
    int age;
    float height;
};

int main(){

  struct Person person1;
  struct Person *personPointer = &person1;

  // Using the arrow operator
  personPointer->age = 25;

    // Equivalent longhand notation
  (*personPointer).age = 25;

  return 0;
}
```

</div>
</div>

<style scoped>
h1 { view-transition-name: header2; }

.columns-2 > div:nth-of-type(2) pre:nth-of-type(1) code {
  --highlight-line-begin: 13;
  --highlight-lines: 1;
  --highlight-last-line: 16;
  
  --highlight-line-color: rgb(255 255 255 / 15%);
}
</style>


--- 

<!-- header: "Unions and Structs > Struct" -->

<div>

## Arrays of Structs and Struct Members


</div>

<div class="columns-2"; style="padding-top:150px">
<div style="padding-top:60px">


- **Array of Structs**

  <br>

  - You can create an array of structs to manage multiple records efficiently.

</div>

<div>

```c
struct Student {
  char name[50];
  int age;
  float grades[5]; // Member is an array
};

int main(){

  int n = 20; // Number of students
  struct Student *class = (struct Student *)malloc(n * sizeof(struct Student));

  class[0].age = 35;
  strcpy(class[0].name, "Marshall Bruce Mathers III");
  class[0].grades[0] = 90.5;

  return 0;
}
```
  
</div>
</div>

--- 

<div>

## Arrays of Structs and Struct Members

</div>

<div class="columns-2"; style="padding-top:50px">
<div style="padding-top:60px">


- **Array of Structs**

  <br>

  - Size of the struct is:

  <br>

$$
\begin{aligned}
50\,\text{Bytes} & = 1 \times 50\,\text{Bytes}\,\texttt{char} \\
4\,\text{Bytes} & = 1 \times 4\,\text{Bytes}\,\texttt{int} \\
20\,\text{Bytes} & = 4 \times 5\,\text{Bytes}\,\texttt{float} \\
\hspace{10em} \downarrow \\
74\,\text{Bytes} & =
\end{aligned}
$$

</div>

<div style="padding-top:100px">

```c
struct Student {
  char name[50];
  int age;
  float grades[5]; // Member is an array
};

int main(){

  int n = 20; // Number of students
  struct Student *class = (struct Student *)malloc(n * sizeof(struct Student));

  class[0].age = 35;
  strcpy(class[0].name, "Marshall Bruce Mathers III");
  class[0].grades[0] = 90.5;

  return 0;
}
```
  
</div>
</div>

<style scoped>
h1 { view-transition-name: header2; }

.columns-2 > div:nth-of-type(2) pre:nth-of-type(1) code {
  --highlight-line-begin: 1;
  --highlight-lines: 5;
  --highlight-line-color: rgb(255 255 255 / 15%);
}
</style>

--- 
<div>

## Arrays of Structs and Struct Members

</div>

<div class="columns-2"; style="padding-top:50px">
<div style="padding-top:60px">


- **Array of Structs**

  <br>

  - Size of the struct array is:

  <br>

$$
\begin{aligned}
\text{Total Bytes} &= n \times \text{sizeof(struct Student)} \\
&= 20 \times \text{sizeof(struct Student)} \\
&= 20 \times 74\,\text{Bytes} \\
&= 1480\,\text{Bytes}
\end{aligned}
$$
</div>

<div style="padding-top:100px">

```c
struct Student {
  char name[50];
  int age;
  float grades[5]; // Member is an array
};

int main(){

  int n = 20; // Number of students
  struct Student *class = (struct Student *)malloc(n * sizeof(struct Student));

  class[0].age = 35;
  strcpy(class[0].name, "Marshall Bruce Mathers III");
  class[0].grades[0] = 90.5;

  return 0;
}
```
  
</div>
</div>

<style scoped>
h1 { view-transition-name: header2; }

.columns-2 > div:nth-of-type(2) pre:nth-of-type(1) code {
  --highlight-line-begin: 9;
  --highlight-lines: 2;
  --highlight-line-color: rgb(255 255 255 / 15%);
}
</style>

--- 

<!-- header: "Unions and Structs" -->
<!-- class: lead -->

<style scoped>
h1 { view-transition-name: header2; }
</style>


# Unions

---

<!-- header: "_Unions and Structs_ > **Unions**" -->

<div>

## Definition:

</div>

<div class="columns-2"; style="padding-top:150px">
<div style="padding-top:60px"

- Members share the same memory location.
<br>
- Size of union is the size of the largest member.

</div>
<div style="padding-top:50px">

```c
union Data {
    int intValue;
    float floatValue;
    char stringValue[20];
};
```

</div>
</div>

--- 

<div style="padding-bottom:50px">

## Properties of Unions

</div>

<div>

- **Memory Sharing**
  - All members of a union share the same memory space.
  - Size of the union is determined by the largest member.
<br>
- **Single-Access at a Time**
  - Only one member of the union can be accessed at any given time.
  - Modifying one member affects the value of the others.

</div>
</div>

---

<div style="padding-bottom:50px">

## Type Conversion with Unions

</div>


- **Memory Overlay:**

  - Unions store all their members at the same memory location.

  - This means that if you write a value to one member, you are essentially modifying the same memory that is used by other members.

<br>

- **Type Interpretation:**

  - When you access a member of the union, you interpret the stored bits according to the type of that member.

  - For example, if you write an integer to a union member and then access another member of type float, you interpret the same bits as a floating-point number.


---

<div class="columns-2">
<div style="padding-top:90px;font-size:22px">

```
❯ ./unions2.exe
sizeof(union Data): 4 bytes
Address of union Data: 00000025FA5FFCBC

After setting intValue = 42:
  intValue: 42
  floatValue: 0.000000
  stringValue: *
Memory content (hex):
  Byte  0: 0x2A
  Byte  1: 0x00
  Byte  2: 0x00
  Byte  3: 0x00

After setting floatValue = 3.14:
  intValue: 1078523331
  floatValue: 3.140000
  stringValue: ├⌡H@`Γ⌡
Memory content (hex):
  Byte  0: 0xC3
  Byte  1: 0xF5
  Byte  2: 0x48
  Byte  3: 0x40

After setting stringValue = "One":
  intValue: 6647375
  floatValue: 0.000000
  stringValue: One
Memory content (hex):
  Byte  0: 0x4F
  Byte  1: 0x6E
  Byte  2: 0x65
  Byte  3: 0x00
```

<div style="padding-top: 5px;font-size:23px">


**:warning: Caution:**

- It's crucial to be cautious when using unions for type conversion to avoid undefined behavior or unexpected results.

</div>

</div>
<div style="padding-top:90px;font-size:22px">

```c
#include <stdio.h>
#include <string.h>

union Data {
    int intValue; float floatValue; char stringValue[4];
};

void printUnionBytes(const union Data *d) {
    const unsigned char *p = (const unsigned char *)d;
    printf("Memory content (hex):\n");
    for (size_t i = 0; i < sizeof(union Data); ++i) {
        printf("  Byte %2zu: 0x%02X\n", i, p[i]);
    }
    printf("\n");
}

void printUnionState(const union Data *d) {
    printf("  intValue: %d\n", d->intValue);
    printf("  floatValue: %f\n", d->floatValue);
    printf("  stringValue: %s\n", d->stringValue);
}

int main() {
    union Data d;

    printf("sizeof(union Data): %zu bytes\n", sizeof(d));
    printf("Address of union Data: %p\n\n", (void*)&d);

    d.intValue = 42;
    printf("After setting intValue = 42:\n");
    printUnionState(&d);
    printUnionBytes(&d);

    d.floatValue = 3.14f;
    printf("After setting floatValue = 3.14:\n");
    printUnionState(&d);
    printUnionBytes(&d);

    strcpy(d.stringValue, "Hello, world!");
    printf("After setting stringValue = \"Hello, world!\":\n");
    printUnionState(&d);
    printUnionBytes(&d);

    return 0;
}
```
</div>
</div>

<style scoped>
h1 { view-transition-name: header2; }

.columns-2 > div:nth-of-type(2) pre:nth-of-type(1) code {
  --highlight-line-begin: 4;
  --highlight-lines: 3;
  --highlight-last-line:24;
  --highlight-line-color: rgb(255 255 255 / 15%);
}
</style>

---

<div class="columns-2">
<div style="padding-top:90px;font-size:22px">

```
❯ ./unions2.exe
sizeof(union Data): 4 bytes
Address of union Data: 00000025FA5FFCBC

After setting intValue = 42:
  intValue: 42
  floatValue: 0.000000
  stringValue: *
Memory content (hex):
  Byte  0: 0x2A
  Byte  1: 0x00
  Byte  2: 0x00
  Byte  3: 0x00

After setting floatValue = 3.14:
  intValue: 1078523331
  floatValue: 3.140000
  stringValue: ├⌡H@`Γ⌡
Memory content (hex):
  Byte  0: 0xC3
  Byte  1: 0xF5
  Byte  2: 0x48
  Byte  3: 0x40

After setting stringValue = "One":
  intValue: 6647375
  floatValue: 0.000000
  stringValue: One
Memory content (hex):
  Byte  0: 0x4F
  Byte  1: 0x6E
  Byte  2: 0x65
  Byte  3: 0x00
```

<div style="padding-top: 5px;font-size:23px">


**:warning: Caution:**

- It's crucial to be cautious when using unions for type conversion to avoid undefined behavior or unexpected results.

</div>

</div>
<div style="padding-top:90px;font-size:22px">

```c
#include <stdio.h>
#include <string.h>

union Data {
    int intValue; float floatValue; char stringValue[4];
};

void printUnionBytes(const union Data *d) {
    const unsigned char *p = (const unsigned char *)d;
    printf("Memory content (hex):\n");
    for (size_t i = 0; i < sizeof(union Data); ++i) {
        printf("  Byte %2zu: 0x%02X\n", i, p[i]);
    }
    printf("\n");
}

void printUnionState(const union Data *d) {
    printf("  intValue: %d\n", d->intValue);
    printf("  floatValue: %f\n", d->floatValue);
    printf("  stringValue: %s\n", d->stringValue);
}

int main() {
    union Data d;

    printf("sizeof(union Data): %zu bytes\n", sizeof(d));
    printf("Address of union Data: %p\n\n", (void*)&d);

    d.intValue = 42;
    printf("After setting intValue = 42:\n");
    printUnionState(&d);
    printUnionBytes(&d);

    d.floatValue = 3.14f;
    printf("After setting floatValue = 3.14:\n");
    printUnionState(&d);
    printUnionBytes(&d);

    strcpy(d.stringValue, "Hello, world!");
    printf("After setting stringValue = \"Hello, world!\":\n");
    printUnionState(&d);
    printUnionBytes(&d);

    return 0;
}
```
</div>
</div>

<style scoped>
h1 { view-transition-name: header2; }

.columns-2 > div:nth-of-type(1) pre:nth-of-type(1) code {
  --highlight-line-begin: 2;
  --highlight-lines: 2;
  --highlight-line-color: rgb(255 255 255 / 15%);
}

.columns-2 > div:nth-of-type(2) pre:nth-of-type(1) code {
  --highlight-line-begin: 26;
  --highlight-lines: 2;
  --highlight-line-color: rgb(255 255 255 / 15%);
}
</style>

---
<div class="columns-2">
<div style="padding-top:90px;font-size:22px">

```
❯ ./unions2.exe
sizeof(union Data): 4 bytes
Address of union Data: 00000025FA5FFCBC

After setting intValue = 42:
  intValue: 42
  floatValue: 0.000000
  stringValue: *
Memory content (hex):
  Byte  0: 0x2A
  Byte  1: 0x00
  Byte  2: 0x00
  Byte  3: 0x00

After setting floatValue = 3.14:
  intValue: 1078523331
  floatValue: 3.140000
  stringValue: ├⌡H@`Γ⌡
Memory content (hex):
  Byte  0: 0xC3
  Byte  1: 0xF5
  Byte  2: 0x48
  Byte  3: 0x40

After setting stringValue = "One":
  intValue: 6647375
  floatValue: 0.000000
  stringValue: One
Memory content (hex):
  Byte  0: 0x4F
  Byte  1: 0x6E
  Byte  2: 0x65
  Byte  3: 0x00
```

<div style="padding-top: 5px;font-size:23px">


**:warning: Caution:**

- It's crucial to be cautious when using unions for type conversion to avoid undefined behavior or unexpected results.

</div>

</div>
<div style="padding-top:90px;font-size:22px">

```c
#include <stdio.h>
#include <string.h>

union Data {
    int intValue; float floatValue; char stringValue[4];
};

void printUnionBytes(const union Data *d) {
    const unsigned char *p = (const unsigned char *)d;
    printf("Memory content (hex):\n");
    for (size_t i = 0; i < sizeof(union Data); ++i) {
        printf("  Byte %2zu: 0x%02X\n", i, p[i]);
    }
    printf("\n");
}

void printUnionState(const union Data *d) {
    printf("  intValue: %d\n", d->intValue);
    printf("  floatValue: %f\n", d->floatValue);
    printf("  stringValue: %s\n", d->stringValue);
}

int main() {
    union Data d;

    printf("sizeof(union Data): %zu bytes\n", sizeof(d));
    printf("Address of union Data: %p\n\n", (void*)&d);

    d.intValue = 42;
    printf("After setting intValue = 42:\n");
    printUnionState(&d);
    printUnionBytes(&d);

    d.floatValue = 3.14f;
    printf("After setting floatValue = 3.14:\n");
    printUnionState(&d);
    printUnionBytes(&d);

    strcpy(d.stringValue, "Hello, world!");
    printf("After setting stringValue = \"Hello, world!\":\n");
    printUnionState(&d);
    printUnionBytes(&d);

    return 0;
}
```

</div>
</div>

<style scoped>
h1 { view-transition-name: header2; }

.columns-2 > div:nth-of-type(1) pre:nth-of-type(1) code {
  --highlight-line-begin: 5;
  --highlight-lines: 9;
  --highlight-line-color: rgb(255 255 255 / 15%);
}

.columns-2 > div:nth-of-type(2) pre:nth-of-type(1) code {
  --highlight-line-begin: 29;
  --highlight-lines: 4;
  --highlight-line-color: rgb(255 255 255 / 15%);
}
</style>

---

<div class="columns-2">
<div style="padding-top:90px;font-size:22px">

```
❯ ./unions2.exe
sizeof(union Data): 4 bytes
Address of union Data: 00000025FA5FFCBC

After setting intValue = 42:
  intValue: 42
  floatValue: 0.000000
  stringValue: *
Memory content (hex):
  Byte  0: 0x2A
  Byte  1: 0x00
  Byte  2: 0x00
  Byte  3: 0x00

After setting floatValue = 3.14:
  intValue: 1078523331
  floatValue: 3.140000
  stringValue: ├⌡H@`Γ⌡
Memory content (hex):
  Byte  0: 0xC3
  Byte  1: 0xF5
  Byte  2: 0x48
  Byte  3: 0x40

After setting stringValue = "One":
  intValue: 6647375
  floatValue: 0.000000
  stringValue: One
Memory content (hex):
  Byte  0: 0x4F
  Byte  1: 0x6E
  Byte  2: 0x65
  Byte  3: 0x00
```

<div style="padding-top: 5px;font-size:23px">


**:warning: Caution:**

- It's crucial to be cautious when using unions for type conversion to avoid undefined behavior or unexpected results.

</div>

</div>
<div style="padding-top:90px;font-size:22px">

```c
#include <stdio.h>
#include <string.h>

union Data {
    int intValue; float floatValue; char stringValue[4];
};

void printUnionBytes(const union Data *d) {
    const unsigned char *p = (const unsigned char *)d;
    printf("Memory content (hex):\n");
    for (size_t i = 0; i < sizeof(union Data); ++i) {
        printf("  Byte %2zu: 0x%02X\n", i, p[i]);
    }
    printf("\n");
}

void printUnionState(const union Data *d) {
    printf("  intValue: %d\n", d->intValue);
    printf("  floatValue: %f\n", d->floatValue);
    printf("  stringValue: %s\n", d->stringValue);
}

int main() {
    union Data d;

    printf("sizeof(union Data): %zu bytes\n", sizeof(d));
    printf("Address of union Data: %p\n\n", (void*)&d);

    d.intValue = 42;
    printf("After setting intValue = 42:\n");
    printUnionState(&d);
    printUnionBytes(&d);

    d.floatValue = 3.14f;
    printf("After setting floatValue = 3.14:\n");
    printUnionState(&d);
    printUnionBytes(&d);

    strcpy(d.stringValue, "Hello, world!");
    printf("After setting stringValue = \"Hello, world!\":\n");
    printUnionState(&d);
    printUnionBytes(&d);

    return 0;
}
```

</div>
</div>

<style scoped>
h1 { view-transition-name: header2; }

.columns-2 > div:nth-of-type(1) pre:nth-of-type(1) code {
  --highlight-line-begin: 15;
  --highlight-lines: 9;
  --highlight-line-color: rgb(255 255 255 / 15%);
}

.columns-2 > div:nth-of-type(2) pre:nth-of-type(1) code {
  --highlight-line-begin: 34;
  --highlight-lines: 4;
  --highlight-line-color: rgb(255 255 255 / 15%);
}
</style>

---

<div class="columns-2">
<div style="padding-top:90px;font-size:22px">

```
❯ ./unions2.exe
sizeof(union Data): 4 bytes
Address of union Data: 00000025FA5FFCBC

After setting intValue = 42:
  intValue: 42
  floatValue: 0.000000
  stringValue: *
Memory content (hex):
  Byte  0: 0x2A
  Byte  1: 0x00
  Byte  2: 0x00
  Byte  3: 0x00

After setting floatValue = 3.14:
  intValue: 1078523331
  floatValue: 3.140000
  stringValue: ├⌡H@`Γ⌡
Memory content (hex):
  Byte  0: 0xC3
  Byte  1: 0xF5
  Byte  2: 0x48
  Byte  3: 0x40

After setting stringValue = "One":
  intValue: 6647375
  floatValue: 0.000000
  stringValue: One
Memory content (hex):
  Byte  0: 0x4F
  Byte  1: 0x6E
  Byte  2: 0x65
  Byte  3: 0x00
```

<div style="padding-top: 5px;font-size:23px">


**:warning: Caution:**

- It's crucial to be cautious when using unions for type conversion to avoid undefined behavior or unexpected results.

</div>

</div>
<div style="padding-top:90px;font-size:22px">

```c
#include <stdio.h>
#include <string.h>

union Data {
    int intValue; float floatValue; char stringValue[4];
};

void printUnionBytes(const union Data *d) {
    const unsigned char *p = (const unsigned char *)d;
    printf("Memory content (hex):\n");
    for (size_t i = 0; i < sizeof(union Data); ++i) {
        printf("  Byte %2zu: 0x%02X\n", i, p[i]);
    }
    printf("\n");
}

void printUnionState(const union Data *d) {
    printf("  intValue: %d\n", d->intValue);
    printf("  floatValue: %f\n", d->floatValue);
    printf("  stringValue: %s\n", d->stringValue);
}

int main() {
    union Data d;

    printf("sizeof(union Data): %zu bytes\n", sizeof(d));
    printf("Address of union Data: %p\n\n", (void*)&d);

    d.intValue = 42;
    printf("After setting intValue = 42:\n");
    printUnionState(&d);
    printUnionBytes(&d);

    d.floatValue = 3.14f;
    printf("After setting floatValue = 3.14:\n");
    printUnionState(&d);
    printUnionBytes(&d);

    strcpy(d.stringValue, "Hello, world!");
    printf("After setting stringValue = \"Hello, world!\":\n");
    printUnionState(&d);
    printUnionBytes(&d);

    return 0;
}
```

</div>
</div>

<style scoped>
h1 { view-transition-name: header2; }

.columns-2 > div:nth-of-type(1) pre:nth-of-type(1) code {
  --highlight-line-begin: 25;
  --highlight-lines: 9;
  --highlight-line-color: rgb(255 255 255 / 15%);
}

.columns-2 > div:nth-of-type(2) pre:nth-of-type(1) code {
  --highlight-line-begin: 39;
  --highlight-lines: 4;
  --highlight-line-color: rgb(255 255 255 / 15%);
}
</style>

---

<div style="padding-bottom:100px">

## Where might you see a union?

</div>

Reason | Description | Example
|---|---|---|
Save memory | Only one value active at a time | Embedded devices
<br>
Reinterpret bits | View data as different types | Networking, hardware drivers
<br>
Model alternatives | Type-safe "choice" between types | Tagged union design