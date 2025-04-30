---
marp: true
---

<!--
# Metadata
title: Introduction to C
author: Seb Blair (CompEng0001)
description: Lecture slides on Introduction to C.
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

# Introduction to C

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

<!-- _footer: "[Download as a PDF](https://github.com/UniOfGreenwich/ELEE1147_Lectures/raw/main/content/Intro_To_C/Intro_To_C.pdf)" -->

---

<style scoped>
h1 { view-transition-name: header2; }
</style>

<!-- header: "_Introduction To C_" -->
<!-- class: lead -->
<a name="why-c"></a>

# Why C?

Developed by Denis Ritchie [1941-2011] in 1972 

<div class="columns-2">
<div>

- Low-level access to memory
- A simple set of keywords
- A clean style
- Suitable for system programming:
  - operating systems
  - compiler development
- Procedural and structured programming
- Portable across various platforms
- Combines low-level hardware control and high-level language convenience

</div>

<div style="padding-top:110px;">

```c
#include <stdio.h>

int main(){

  printf("Hello World!\n");

  printf("Goodbye World!");

  return 0;
}
```
</div>

---

<!-- header: "_Introduction To C_ > **Why C?**" -->


![bg fit](../../figures/why_c.png)

---

<!-- header: "Introduction To C > Why C?" -->

## C God's programming language* 

<div style="padding-top:80px">

![drop-shadow](../../figures/C_Tree.png "centered" )

</div>


<div style="font-size:16px;padding-top:80px">

*Shreiner D. 2010. OpenGL programming guide : the official guide to learning OpenGL, versions 3.0 and 3.1. 7th ed. Upper Saddle River, Nj: Addison-Wesley.

</div>
‌

---

<!-- header: "_Introduction To C_" -->

<!--- _class: lead -->

<style scoped>
h1 { view-transition-name: header2; }
</style>


<a name="first_program"></a>

# First Program in C

<div style="font-size:32px;padding-left:400px;padding-right:400px;">

```
$ mkdir Learning_C && cd Learning_C
$ mkdir Helloworld && cd Helloworld
$ touch helloworld.c
$ <nano/vim/vi> helloworld.c
```

---

<style scoped>
h1 { view-transition-name: header2; }
</style>

<!-- header: "_Introduction To C_ > **First Program in C**" -->

<div style="padding-top:80px">

 - Single line comments

<style scoped>
  code {
    --highlight-line-begin: 1;
    --highlight-lines: 1;
    --highlight-line-color: rgb(255 255 255 / 15%);
  }
</style>

<div style="padding-top:80px">

```c
// library or header file that contains  standard input/output operatioins

#include <stdio.h>

/* 
  main() function every C program must have a main, 
  it has a returnable 'int' this is for exit codes
*/
int main(void) // void means no input argument
{
    printf("Hello World!\n");
    printf("Goodbye World!\n");
    return 0; // return exit code 0, no error
}
```
---
<div style="padding-top:80px">

- directive, tells the preprocessor to include the contents of a specified file.

<style scoped>
  code {
    --highlight-line-begin: 1;
    --highlight-lines: 1;
    --highlight-line-color: rgb(255 255 255 / 15%);
  }
</style>

<div style="padding-top:80px">

<style scoped>
  code {
    --highlight-line-begin: 3;
    --highlight-lines: 1;
    --highlight-line-color: rgb(255 255 255 / 15%);
  }
</style>

```c
// library or header file that contains  standard input/output operatioins

#include <stdio.h>

/* 
  main() function every C program must have a main, 
  it has a returnable 'int' this is for exit codes
*/
int main(void) // void means no input argument
{
    printf("Hello World!\n");
    printf("Goodbye World!\n");
    return 0; // return exit code 0, no error
}
```

---

<div style="padding-top:80px">

- Multi-line comments


<style scoped>
  code {
    --highlight-line-begin: 5;
    --highlight-lines: 4;
    --highlight-line-color: rgb(255 255 255 / 15%);
  }
</style>

<div style="padding-top:80px">

```c
// library or header file that contains  standard input/output operatioins

#include <stdio.h>

/* 
  main() function every C program must have a main, 
  it has a returnable 'int' this is for exit codes
*/
int main(void) // void means no input argument
{
    printf("Hello World!\n");
    printf("Goodbye World!\n");
    return 0; // return exit code 0, no error
}
```

---

<div style="padding-top:80px">

 - All **C** programs need a `main()` function as it's entry point


<style scoped>
  code {
    --highlight-line-begin: 9;
    --highlight-lines: 1;
    --highlight-line-color: rgb(255 255 255 / 15%);
  }
</style>

<div style="padding-top:80px">

```c
// library or header file that contains  standard input/output operatioins

#include <stdio.h>

/* 
  main() function every C program must have a main, 
  it has a returnable 'int' this is for exit codes
*/
int main(void) // void means no input argument
{
    printf("Hello World!\n");
    printf("Goodbye World!\n");
    return 0; // return exit code 0, no error
}
```

---

<div style="padding-top:80px">

- Body of the code that is executed, wrapped in braces `{}`


<style scoped>
  code {
    --highlight-line-begin: 11;
    --highlight-lines: 3;
    --highlight-line-color: rgb(255 255 255 / 15%);
  }
</style>

<div style="padding-top:80px">

```c
// library or header file that contains  standard input/output operatioins

#include <stdio.h>

/* 
  main() function every C program must have a main, 
  it has a returnable 'int' this is for exit codes
*/
int main(void) // void means no input argument
{
    printf("Hello World!\n");
    printf("Goodbye World!\n");
    return 0; // return exit code 0, no error
}
```

---

## Compile the code

We are going to use `gcc` compiler to compile our `c` code; 

```sh
$ gcc helloworld.c -o helloworld.exe
```

- first argument is the source file[s], `helloworld.c` 
-  `-o` means output file, `helloworld.exe` 
-  The file extension in linux can be left blank or called whatever you want. 

![drop-shdaow w:900](../../figures/c_compile.png "centered")

---

## Execute the code

- As we are using a terminal, we must prepend the newley created file with `./`. 
  - The `.` denotes the current directory.

- Since we want to run a file in our current directory which is not our `$PATH`
  - You need the `./` bit to tell the **shell** where the executable is.

**Output:**

<div style="font-size:32px;padding-left:400px;padding-right:400px;">

```sh
$ ./helloworld.exe
Hello World!
Goodbye World!
```
</div>

---

<!-- _header: "Introduction To C > First Program in C"  -->

<!-- _class: lead -->

<style scoped>
h1 { view-transition-name: header2-alt; }
</style>


<a name="header_files"></a>

# Header Files

<div style="padding-top:50px">

These files contain all scaffolding code that your `main()` will use as we do not want to overpopulate with excessive lines of code for readability.

Computers used to be too slow to compile a whole program in one single mega-blob where all the functions and types were visible.

To solve this, programs are split into c/h files which are each individually compiled into a machine code file (the ‘object’ file), and then linked together into an `exe` or `dll`.

</div>

---

<style scoped>
header strong { view-transition-name: header2-alt; }
</style>

<!-- header: "_Introduction To C > First Program in C_ > **Header Files**" -->

<div style="padding-top:50px;font-size:30px;">

- Create a new header file:

  ```
  $ touch usefulfunctions.h
  $ <nano/vim/vi> usefulfunctions.h
  ```

- `usefulfunctions.h`

  ```c
  #ifndef USEFULFUNCTIONS_H_   /* Include guard */
  #define USEFULFUNCTIONS_H_

  int sqr(int x);  /* An example function declaration */

  #endif // USEFULFUNCTIONS_H_
  ``` 

- Create a new source file:

  ```
  $ touch usefulfunctions.c
  $ <nano/vim/vi> usefulfunctions.c
  ```

- `usefulfunctions.c`

  ```c
  #include "usefulfunctions.h"  /* Include the header (not strictly necessary here) */

  int sqr(int x)    /* Function definition */
  {
      return x * x;
  }
  ```

</div>

---

<div style="padding-top:50px">

## Revist helloworld.c

We are modifiying the code to use our custom library:

<div style="font-size:32px;padding-left:300px;padding-right:300px;padding-top:50px">

```c 
#include <stdio.h> /* searches system header file directories */
#include "usefulfunctions.h" /* notice "" searches current directory */

int main(void) /* void means no input argument */
{
    printf("Hello World\n!");  /* using standard ouput function to printf()*/
    printf("%d\n",sqr(255));
    printf("Goodbye World!\n");

    return 0; /* return exit code 0, no error */
}

```

</div>

---

## Compile and run

We need to source all files needed to build our modified program. 

Remember the header file points to the function in the `usefulfunctions.c` file.

```sh
$ gcc helloworld.c usefulfunctions.c -o helloworld.out

```

**Output:**

```sh
$ ./helloworld.out
Hello World!
65025
Goodbye World!
```

---
<!-- header: "Introduction To C > First Program in C > Header Files" -->
## Standard Input and Output 

 - `stdio.h` is a large file that contains many function declarations, in fact there are 827 lines of code for this header file alone.

    <div style="font-size:32px;padding-left:300px;padding-right:300px;padding-top:50px">
    
    ```h
    /* Define ISO C stdio on top of C++ iostreams.
    Copyright (C) 1991-2024 Free Software Foundation, Inc.
    Copyright The GNU Toolchain Authors.
    This file is part of the GNU C Library.
    ...
    */
    #ifndef _STDIO_H
    #define _STDIO_H	1
    ...
    /* Write formatted output to stdout.
    This function is a possible cancellation point and therefore not
    marked with __THROW.  */
    extern int printf (const char *__restrict __format, ...);
    ```

    </div>

<!-- _footer: https://code.woboq.org/userspace/glibc/libio/stdio.h.html -->

---

<style scoped>
h1 { view-transition-name: header2; }
</style>

<!-- header: _Introduction To C_ -->
<!-- _class: lead -->

# Primitive Data Types

<a name="prim-data-types"></a>

---

<!-- header: _Introduction To C_ > **Primitive Data Types**-->

<div style="font-size:28px">

## Primitive Data Types


C has several data types and all variables **must** have a data type

|Data Type	|Size (Bytes)|	Range | Format Specifier |
|---|---|---|---|
|(unsigned)char	| at least 1 	| $-128$ to $127$ or $0$ to $255$ | `%c`
|(unsigned)short| at least 2 |	$-32768$ to $32767$, $0$ to $65535$| `%h`
|(unsigned)int |	at least 2 |	$-2,147,483,648$ to  $2,147,483,647$   $0$ to $4294967295$| `%u`,`%d`|
|long	| least 4 | $–9,223,372,036,854,775,808$ to $9,223,372,036,854,775,807$| `%l`, `%ll`, `%lld`, `%lli` |
|unsigned long |	at least 4  |	$0$ to $18,446,744,073,709,551,615$| `%lu`,`%llu`|
|float | at least 2 |	$3.4e-038$ to $3.4e+038$|`%f`|
|(unsigned)double	| at least 8 |	$1.7e-308$ to $1.7e+308$| `%lf`|
|long double |	  at least 10 |   $1.7e-4932$ to $1.7e+4932$| `%Lf`|

</div>

---

<!-- header: _Introduction To C_ -->

## C Advanced Features

- Pointers and addressing, `int*`, `&var1` (more about this later)
- `struct`
  - Allows to combine data items of different kinds
  - `struct Books { char  title[50]; char author[50]; int book_id;} book`
- `enum`
  - It consists of constant integrals or integers that are given names by a user.
  - `enum enum_name{int_const1, int_const2, int_const3, …. int_constN};`
- `union` 
  - allows to store different data types in the same memory location
  - `union Data { int i; float f; char str[20];} data;` 

---

![drop-shadow bg right:35% vertical 100%](../../figures/PIC18F23K22_Schematic.png)
![drop-shadow bg right vertical 90%](../../figures/PIC18F23K22_IC.png)

<div style="padding-top:30px">

## Embedded C

<div style="padding-top:80px">

```c
ANSEL  = 0;      // Configure AN pins as digital I/O
ANSELH = 0;
C1ON_bit = 0;    // Disable comparators
C2ON_bit = 0;
//         76543210
TRISC  = 0b10000000;   // PORTC is input
UART1_Init(9600); // Initialize UART PROTO

...

ANSELA  = 0;      // Configure AN pins as digital I/O
ANSELB  = 0;
ANSELC  = 0;
TRISB = 0;
```

</div>
</div>

---

![drop-shadow bg right:40% 50%](../../figures/objc_book.png)

<div style="padding-top:30px">

## Objective-C

<div style="padding-top:80px">

```objc
#import "MyClass.h"
 
@implementation MyClass
- (id)initWithString:(NSString *)aName
{
    // code goes here
}
 
+ (MyClass *)myClassWithString:(NSString *)aName
{
    // code goes here
}
@end
```
---

## Compilation

<div style="font-size:32px">

Throughout this session we have been using `gcc` or `the GNU Compiler Collection'. The GNU is a recursive acronym: ‘GNU’s Not Unix!'

<div class="columns-2">

<div style="padding-top:50px;padding-left:170px;">

Supports:

-  C, 
-  embedded-C ,
-  Objective-C,
-  C++,
-  Fortran, 
-  Ada, 
-  Go, 
-  and D 

</div>

<div style="padding-top:50px;padding-right:170px;">

- Example **C** code

```c
int square(int num) {
    return num * num;
}
```

- Example assembley code from `gcc`
```asm
square:
 push   %rbp
 mov    %rsp,%rbp
 mov    %edi,-0x4(%rbp)
 mov    -0x4(%rbp),%eax
 imul   %eax,%eax
 pop    %rbp
 ret
```

</div>

</div>

---

<style scoped>
h1 { view-transition-name: header2; }
</style>

<!-- _class: lead -->

# Command Line Arguments

<a name="cli"></a>

<div style="font-size:32px;padding-left:300px;padding-right:300px;padding-top:20px">

```
$ mkdir arguments && cd arguments
$ touch arguments.c
$ vim arguments.c
```

</div>

---

<style scoped>
h1 { view-transition-name: header2; }
</style>

<!-- header: _Introduction To C_ > **Command Line Arguments** -->

<div style="font-size:30px;padding-top:100px;">

- `main()` can now take an integer as an argument. 

<style scoped>
  code {
    --highlight-line-begin: 3;
    --highlight-lines: 1;
    --highlight-line-color: rgb(255 255 255 / 15%);
  }
</style>

<div style="font-size:30px;padding-top:40px;padding-left:300px;padding-right:300px;">

```c
#include <stdio.h>

int main( int argc, char *argv[] )  {

   printf("Program name %s\n", argv[0]);
 
   if( argc == 2 ) {
      printf("The argument supplied is %s\n", argv[1]);
   }
   else if( argc > 2 ) {
      printf("Too many arguments supplied.\n");
   }
   else {
      printf("One argument expected.\n");
   }
   return 0;
}
```

</div>

---

<div style="font-size:30px;padding-top:100px;">

- `argv[0]` this is an array, at index 0 is the current programs file name... **always**. 

<style scoped>
  code {
    --highlight-line-begin: 5;
    --highlight-lines: 1;
    --highlight-line-color: rgb(255 255 255 / 15%);
  }
</style>

<div style="font-size:30px;padding-top:40px;padding-left:300px;padding-right:300px;">

```c
#include <stdio.h>

int main( int argc, char *argv[] )  {

   printf("Program name %s\n", argv[0]);
 
   if( argc == 2 ) {
      printf("The argument supplied is %s\n", argv[1]);
   }
   else if( argc > 2 ) {
      printf("Too many arguments supplied.\n");
   }
   else {
      printf("One argument expected.\n");
   }
   return 0;
}
```

</div>

--- 
<div style="font-size:30px;padding-top:100px;">

- `if( argc == 2 )` checks to see if the number of arguments supplied is 2, (program name is 1)

<style scoped>
  code {
    --highlight-line-begin: 7;
    --highlight-lines: 1;
    --highlight-line-color: rgb(255 255 255 / 15%);
  }
</style>

<div style="font-size:30px;padding-top:40px;padding-left:300px;padding-right:300px;">

```c
#include <stdio.h>

int main( int argc, char *argv[] )  {

   printf("Program name %s\n", argv[0]);
 
   if( argc == 2 ) {
      printf("The argument supplied is %s\n", argv[1]);
   }
   else if( argc > 2 ) {
      printf("Too many arguments supplied.\n");
   }
   else {
      printf("One argument expected.\n");
   }
   return 0;
}
```

</div>

--- 
<div style="font-size:30px;padding-top:100px;">

- `...%s\n", argv[1])` gets the argument you supplied and then formats it as string to the terminal

<style scoped>
  code {
    --highlight-line-begin: 8;
    --highlight-lines: 1;
    --highlight-line-color: rgb(255 255 255 / 15%);
  }
</style>

<div style="font-size:30px;padding-top:40px;padding-left:300px;padding-right:300px;">

```c
#include <stdio.h>

int main( int argc, char *argv[] )  {

   printf("Program name %s\n", argv[0]);
 
   if( argc == 2 ) {
      printf("The argument supplied is %s\n", argv[1]);
   }
   else if( argc > 2 ) {
      printf("Too many arguments supplied.\n");
   }
   else {
      printf("One argument expected.\n");
   }
   return 0;
}
```

</div>

--- 
<div style="font-size:30px;padding-top:100px;">

- `else if( argc > 2 )` if the first `if` is `false`, then check to see if you have supplied 2 arguments

<style scoped>
  code {
    --highlight-line-begin: 10;
    --highlight-lines: 1;
    --highlight-line-color: rgb(255 255 255 / 15%);
  }
</style>

<div style="font-size:30px;padding-top:40px;padding-left:300px;padding-right:300px;">

```c
#include <stdio.h>

int main( int argc, char *argv[] )  {

   printf("Program name %s\n", argv[0]);
 
   if( argc == 2 ) {
      printf("The argument supplied is %s\n", argv[1]);
   }
   else if( argc > 2 ) {
      printf("Too many arguments supplied.\n");
   }
   else {
      printf("One argument expected.\n");
   }
   return 0;
}
```

</div>

--- 
<div style="font-size:30px;padding-top:100px;">

- `else` if you have not supplied an argument

<style scoped>
  code {
    --highlight-line-begin: 13;
    --highlight-lines: 1;
    --highlight-line-color: rgb(255 255 255 / 15%);
  }
</style>

<div style="font-size:30px;padding-top:40px;padding-left:300px;padding-right:300px;">

```c
#include <stdio.h>

int main( int argc, char *argv[] )  {

   printf("Program name %s\n", argv[0]);
 
   if( argc == 2 ) {
      printf("The argument supplied is %s\n", argv[1]);
   }
   else if( argc > 2 ) {
      printf("Too many arguments supplied.\n");
   }
   else {
      printf("One argument expected.\n");
   }
   return 0;
}
```

</div>