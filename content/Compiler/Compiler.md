---
marp: true
---

<!--
# Metadata
title: Compilers
author: Seb Blair (CompEng0001)
description: Lecture slides on Compilers.
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

# Compilers

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

<!-- _footer: "[Download as a PDF](https://github.com/UniOfGreenwich/ELEE1147_Lectures/raw/main/content/Compiler/Compiler.pdf)" -->

---

<style scoped>
h1 { view-transition-name: header2; }
</style>

<!-- header: "_Compilers_" -->
<!-- class: lead -->

## What we will cover

1. We will understand how ‘high’ and ‘low’ level programming languages are compiled to machine code so that it controls the hardware.​


1. We will compare a number of programming languages and how they compile to machine code.​


![drop-shadow bg right 55%](https://imgs.xkcd.com/comics/compiling.png)

---

<!-- clase: lead -->

# What is programming?

<a name="programming"></a>

<style scoped>
h1 { view-transition-name: header2; }
</style>

---


<!-- header: "_Compilers_ > **What is Programming?**" -->

- A programming language is a computer language programmers use to develop software programs, scripts, or other sets of instructions for computers to execute​...

- Automate process​, Create digital records​, Communication ,Simulation/emulation​, …​

- But ultimately programming provides instructions on how hardware is controlled, remember at the end of the day it is all zeroes and ones that represent electrical signals.​


---

## Programming Paradigms

- ~1605 programming lanaguages

- 94 Types

- 65 Paradigms

![bg right:60% 100%](../../figures/paradigms.png)

<!--
- High Level / low level – C#, Java, Python, Ruby, C, C++, assembly ​

- Declarative / imperative/procedural – SQL, Curl, Prolog​

- General-purpose/domain specific – HTML, Markdown/up, MATLAB​

- Object-orientated/concurrent – C#, Java, Python,​

- Command/complied/script language – batch, bash, Javascript​

- Answer set - Prolog

-->


---

<!-- header: "Compilers" -->

<!-- class: lead -->

# Human Language and Programming Languages


<style scoped>
h1 { view-transition-name: header2; }
</style>

<div style="padding-top:30px; padding-left:600px;">

Are they all in English?

</div>

---

<!-- header: "_Compilers_ > **Human Language and Programming Languages**" -->


## Linotte​

<div>

It has been a developer for using French keywords:​

</div>

<div style="padding-top:60px;padding-left:400px;padding-right:400px;padding-bottom:90px">

```vb
BonjourLeMonde:​
  début​
    affiche "Bonjour le monde!"​

------------------------

HelloWorld:​
  beginning
    poster "Hello world!
```
</div>

<div>

Has a web engine for HTML and PHP and JSP. 

</div>

---

## SAKO​

<div>

System Automatycznego Kodowania Operacji (Automatic Operation Encoding System) programming language, which uses polish as for its keywords:​

</div>

<div style="padding-top:60px;padding-left:400px;padding-right:400px;padding-bottom:90px">

```
LINIA​
  TEKST:​
  HELLO WORLD​
KONIEC​

---------------------------------

LINE
  TEXT:
  HELLO WORLD
END
```
</div>

<div>

Really only used in the late 1950s and early 1960s for the XYZ computers.

</div>

---

## Rapira​

<div>

Rapira is another awesome example of non-english programming languages. It uses Russian keywords:​

</div>

<div style="padding-top:60px;padding-left:400px;padding-right:400px;padding-bottom:90px">


```
ПРОЦ СТАРТ()​

    ВЫВОД: 'Привет, мир!'​

КОН ПРОЦ​

-------------------

proc start()
     output: 'Hello, world!!!';
end proc
```

</div>

---

## EPL

<div>

易语言 (Easy Programming Language, as known as EPL):​

</div>

<div style="padding-top:60px;padding-left:400px;padding-right:400px;padding-bottom:90px">

```cs
公开 类 启动类​
{​
  公开 静态 启动()​
  {​
    控制台.输出("你好，世界！");​
  }​
}

-------------------

public class startup class​
{
  public static start()
  {
    console.output("Hello, World!");
  }
}
```

---

<!-- header: "Compilers" -->

## Compiler

A compiler is a program that `processes` source code written in a programming language.

- **Program Processing:** A compiler serves as a crucial tool in handling programs written in various programming languages.

- **Program Generation:** It functions as a program generator, capable of producing executable programs in a specified language.

- **Language Translation:** The compiler translates programs written in one language into equivalent programs in another language.

---


- **Increased Productivity:** Allows for faster and more efficient development by focusing on the logic and design rather than intricate details.

- **Enhanced Readability:** Code becomes more readable and understandable, facilitating collaboration and maintenance.

- **Code Portability:** Encourages code portability by minimizing dependencies on specific hardware or architecture

---

![bg right:50% 100%](../../figures/compilerFlowExample.PNG)

- Translates from one language into another

- Output a low level program which behaves as specified by
the input, higher level program.

- Mediate between higher level human concepts, and the
word by word data manipulation which the machine performs.

---

<!-- class: lead -->

# GCC

<style scoped>
h1 { view-transition-name: header2; }
</style>

![drop-shadow bg right:50% 50% horizontal](../../figures/GNU_Compiler_Collection_logo.png)![drop-shadow bg right:50% 50%](../../figures/gnu-logo.png)

---

<!-- header: "_Compilers_ > **GCC**" -->

## GCC compiler example


`$ gcc -S -O test.c`

<div class="columns-2">

<div>

Input file `test.c`

```c
int A;
int B;
test_fun()
{
  A = b + 123;
}
```

</div>

<div>

Output file `test.out`
```asm
.comm _A,4
.comm _B,4
_test_fun:
pushl %ebp
movl %esp,%ebp 
movl _B,%eax 
addl $123,%_A
movl %ebp,%esp 
popl %ebp
ret
```

</div>

</div>

The flag `S` tells the compiler to produce assembly code, `O` turns optimisation on

---

## Assembly code

- **Assembly code** is a `low-level` programming language that serves as an `interface` between `high-level` programming languages and the computer's `hardware`.

- **Human-Readable Machine Code**: Assembly code is a human-readable representation of machine code, making it more understandable than binary machine code.

- **Close to Hardware**: Unlike high-level languages, assembly code provides a direct correspondence to the architecture and operations of the underlying hardware.

---

## Symbolic Representation

-  Uses mnemonics and symbols to represent machine instructions, making it more comprehensible than raw machine code.

<div align=center>

|**Binary**|**Opcode**|**Mnemonic**|**Description**|
|---|---|---|---|
|1000 0111|87|`ADD A`|Add the contents of the register A to that of the accumulator|
|0011 1010| 3A| `LDA` | Load data stored in the given memory address|
|0111 1001|79|`MOV A C`| Move data from register A to C|
|1100 0011| C3|`JMP`| Jump to instruction in specified memory address|
|1100 0001| C1 |`POP` B|Pop from stack and copy to memory register B + C|

</div>

---

<div class="columns-2">

<div>

## Example

- The .data section declares a null-terminated string "Hello, Assembly!".

- `msg` - name of the varibable

- `db` - Define Byte

  - <span style="font-size:28px">`msg db 'Hello', 0xA  ; stores 6 bytes: H, e, l, l, o, newline`</span>
    - <span style="font-size:28px">`010001000`</span>, <span style="font-size:28px">`01100101`</span>,<span style="font-size:28px">`01101100`</span>,<span style="font-size:28px">`01101100`</span>,<span style="font-size:28px">`01101111`</span>,

- `0xA` means new line
  - <span style="font-size:28px">`00001010`</span>


</div>

<div style="font-size:28px">

```c
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(){

  //Declare and initialise the string
  char msg [] = "Hello, Assembly!";

  // Write the message to stdout
  write(1, msg, strlen(msg));

  // Exit the program with a return code of 0
  exit(0);
}
```

```asm
section .data
  msg db 'Hello, Assembly!', 0xA  ; Message with newline (0xA = '\n')

section .text
  global _start

_start:
  ; Write the message to stdout
  mov eax, 4        ; syscall: write
  mov ebx, 1        ; file descriptor: stdout
  mov ecx, msg      ; pointer to the message
  mov edx, 17         ; length of message (16 chars + newline)
  int 0x80          ; invoke the kernel

; Exit the program
  mov eax, 1        ; syscall: exit
  xor ebx, ebx      ; exit code 0
  int 0x80          ; invoke the kernel
```

</div>
</div>

<style scoped>
h1 { view-transition-name: header2; }

.columns-2 > div:nth-of-type(2) pre:nth-of-type(1) code {
  --highlight-line-begin: 8;
  --highlight-lines: 1;
  --highlight-line-color: rgb(255 255 255 / 15%);
}
.columns-2 > div:nth-of-type(2) pre:nth-of-type(2) code {
  --highlight-line-begin: 2;
  --highlight-lines: 1;
  --highlight-line-color: rgb(255 255 255 / 15%);
}

</style>

---


<div class="columns-2">

<div>

## Example:

- The .text section contains the program logic.

</div>

<div style="font-size:28px">

```c
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(){

  //Declare and initialise the string
  char msg [] = "Hello, Assembly!";

  // Write the message to stdout
  write(1, msg, strlen(msg));

  // Exit the program with a return code of 0
  exit(0);
}
```

```asm
section .data
  msg db 'Hello, Assembly!', 0xA  ; Message with newline (0xA = '\n')

section .text
  global _start

_start:
  ; Write the message to stdout
  mov eax, 4        ; syscall: write
  mov ebx, 1        ; file descriptor: stdout
  mov ecx, msg      ; pointer to the message
  mov edx, 17         ; length of message (16 chars + newline)
  int 0x80          ; invoke the kernel

; Exit the program
  mov eax, 1        ; syscall: exit
  xor ebx, ebx      ; exit code 0
  int 0x80          ; invoke the kernel
```

</div>
</div>

<style scoped>
h1 { view-transition-name: header2; }

.columns-2 > div:nth-of-type(2) pre:nth-of-type(1) code {
  --highlight-line-begin: 1;
  --highlight-lines: 15;
  --highlight-line-color: rgb(255 255 255 / 15%);
}
.columns-2 > div:nth-of-type(2) pre:nth-of-type(2) code {
  --highlight-line-begin: 4;
  --highlight-lines: 1;
  --highlight-line-color: rgb(255 255 255 / 15%);
}

</style>

---

<div class="columns-2">

<div>

## Example:

- The _start label marks the entry point of the program.

</div>

<div style="font-size:28px">

```c
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(){

  //Declare and initialise the string
  char msg [] = "Hello, Assembly!";

  // Write the message to stdout
  write(1, msg, strlen(msg));

  // Exit the program with a return code of 0
  exit(0);
}
```

```asm
section .data
  msg db 'Hello, Assembly!', 0xA  ; Message with newline (0xA = '\n')

section .text
  global _start

_start:
  ; Write the message to stdout
  mov eax, 4        ; syscall: write
  mov ebx, 1        ; file descriptor: stdout
  mov ecx, msg      ; pointer to the message
  mov edx, 17         ; length of message (16 chars + newline)
  int 0x80          ; invoke the kernel

; Exit the program
  mov eax, 1        ; syscall: exit
  xor ebx, ebx      ; exit code 0
  int 0x80          ; invoke the kernel
```

</div>
</div>

<style scoped>
h1 { view-transition-name: header2; }

.columns-2 > div:nth-of-type(2) pre:nth-of-type(1) code {
  --highlight-line-begin: 5;
  --highlight-lines: 1;
  --highlight-last-line: 15;
  --highlight-line-color: rgb(255 255 255 / 15%);
}
.columns-2 > div:nth-of-type(2) pre:nth-of-type(2) code {
  --highlight-line-begin: 5;
  --highlight-lines: 1;
  --highlight-line-color: rgb(255 255 255 / 15%);
}

</style>

---

<div class="columns-2">

<div>

## Example:

<div style="font-size:24px;padding-top:100px">

|Register|	Meaning|	Value|
|--------|--------|--------|
|`eax`	 |syscall number	|4 = write|
|`ebx`	 |file descriptor	|1 = stdout|
|`ecx`	 |pointer to buffer	|address of msg|
|`edx`	 |number of bytes to write|	17|
|`mov`   |Copy data from one place to another| -|
|`int`   |Software interrupt (calls the kernel)	Control/Interrupt|-|

</div>

</div>

<div style="font-size:28px">

```c
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(){

  //Declare and initialise the string
  char msg [] = "Hello, Assembly!";

  // Write the message to stdout
  write(1, msg, strlen(msg));

  // Exit the program with a return code of 0
  exit(0);
}
```

```asm
section .data
  msg db 'Hello, Assembly!', 0xA  ; Message with newline (0xA = '\n')

section .text
  global _start

_start:
  ; Write the message to stdout
  mov eax, 4        ; syscall: write
  mov ebx, 1        ; file descriptor: stdout
  mov ecx, msg      ; pointer to the message
  mov edx, 17         ; length of message (16 chars + newline)
  int 0x80          ; invoke the kernel

; Exit the program
  mov eax, 1        ; syscall: exit
  xor ebx, ebx      ; exit code 0
  int 0x80          ; invoke the kernel
```

</div>
</div>

<style scoped>
h1 { view-transition-name: header2; }

.columns-2 > div:nth-of-type(2) pre:nth-of-type(1) code {
  --highlight-line-begin: 1;
  --highlight-lines: 1;
  --highlight-last-line: 11;
  --highlight-line-color: rgb(255 255 255 / 15%);
}
.columns-2 > div:nth-of-type(2) pre:nth-of-type(2) code {
  --highlight-line-begin: 9;
  --highlight-lines: 4;
  --highlight-line-color: rgb(255 255 255 / 15%);
}

</style>

---

<!-- header: "Compilers > GCC" -->

<div class="columns-2">

<div>

## Example:

<div style="font-size:24px;padding-top:170px">

|Register|	Role|	Value|
|--------|--------|--------|
|`eax`|	syscall number| 	1 = exit|
|`ebx`|	exit code |	0 = success|
|`int`| `0x80`	syscall trigger |	invokes the kernel|
|`xor`|	Bitwise XOR (commonly used to zero a register)	Logical/bitwise| - |
</div>
</div>

<div style="font-size:28px">

```c
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(){

  //Declare and initialise the string
  char msg [] = "Hello, Assembly!";

  // Write the message to stdout
  write(1, msg, strlen(msg));

  // Exit the program with a return code of 0
  exit(0);
}
```

```asm
section .data
  msg db 'Hello, Assembly!', 0xA  ; Message with newline (0xA = '\n')

section .text
  global _start

_start:
  ; Write the message to stdout
  mov eax, 4        ; syscall: write
  mov ebx, 1        ; file descriptor: stdout
  mov ecx, msg      ; pointer to the message
  mov edx, 17         ; length of message (16 chars + newline)
  int 0x80          ; invoke the kernel

; Exit the program
  mov eax, 1        ; syscall: exit
  xor ebx, ebx      ; exit code 0
  int 0x80          ; invoke the kernel
```

</div>
</div>

<style scoped>
h1 { view-transition-name: header2; }

.columns-2 > div:nth-of-type(2) pre:nth-of-type(1) code {
  --highlight-line-begin: 14;
  --highlight-lines: 1;
  --highlight-line-color: rgb(255 255 255 / 15%);
}
.columns-2 > div:nth-of-type(2) pre:nth-of-type(2) code {
  --highlight-line-begin: 16;
  --highlight-lines: 3;
  --highlight-line-color: rgb(255 255 255 / 15%);
}

</style>

---


<!-- class: lead -->

# Compiling Stages

![center w:700](../../figures/compiler_stages.png)

<style scoped>
h1 { view-transition-name: header2; }
</style>

---

<!-- header: "_Compilers > GCC_ > **Compiling Stages**" -->

## Lexical Analysis

<div>

The compiler begins converting the series of characters into tokens​

</div>

<div class="columns-2" style="padding-top:50px; padding-left:150px">
<div style="font-size:26px;padding-top:50px;margin-left:50px">

|Token name​|Example token values​|
|---|----|
|identifier|`n`, `q`​|
|keyword​|`int`, `float`, `if`, `else`, `return`, `while`| ​
|separator​|`{ }`, `( )`,  `[ ]`, `;`​|
|operator​|`+`,`-`,`*`,`/`,`=`,`<`,`>`,`:`,`?`​|
|literal​|`True`, `false`, `6.02e23`, `"string"`​|
|comment| `// this is a comment`​|

</div>

<div style="padding-top:40px; padding-left:150px">

High Level Code​

<div style="font-size:28px;padding-top:10px;padding-right:325px">

```c
int n = 11;​
float q = 1.618f;​
if (n < 12)
{​ 
  return q;​
}​
else​
{
  return n;
​}​
```

</div>
</div>
</div>

---

## Syntax Analysis

<div>

Syntax analysis is based on the rules based on the specific programming language by constructing the parse tree with the help of tokens. ​

- Interior node: record with an operator filed and two files for children​

- Leaf: records with 2/more fields; one for token and other information about the token​

- Ensure that the components of the program fit together meaningfully​

- Gathers type information and checks for type compatibility​

- Checks operands are permitted by the source language​

</div>

![drop-shadow bg right:30% 60%](../../figures/parse_tree.png)

---

## Semantic Analyser

<div>

The Semantic Analyser checks for type mismatches, incompatible operands, improper function calls, undeclared variables, and more — including **implicit type conversions**.

</div>

<div class="columns-2" style="padding-top:80px">

<div style="padding-top:60px">

```c
int n = 11;
float q = 1.618 * n;
```

</div>

<div>

- Type Promotion: `int → float`
- Operation: `float * float = float`
- Safe, no data loss

</div>
</div>

<div>

</div>

<div class="columns-2">

<div  style="padding-top:220px">

```c
float f = 3.9;
int x = f * 2;
```

</div>

<div  style="padding-top:100px">

- Promotes `2` to `2.0f`
- Computes `3.9 * 2.0 = 7.8`
- Then **casts `7.8 → 7` (truncation)**

- Type Conversion: `float → int`
- Potential data loss

</div>
</div>


---

## Intermediate Code Generation

<div>

Removes unnecessary code lines​.

Arranges the sequence of statements to speed up the execution of the program without wasting resources. ​

</div>

<div class="columns-2" style="padding-top:50px">

<div style="padding-top:100px">

Original

<div style="padding-left:200px;padding-right:200px;padding-top:20px">

```c
a = int_to_float(10)​
b = c * a​
d = e + b​
f = d​
```

</div>

</div>

<div>


<table style="width:100%;">
  <thead>
    <tr>
      <th>
        Stage
      </th>
      <th>
        IR Code
      </th>
    </tr>
  </thead>
  <tbody>
    <tr style="width:30%;">
      <td style="font-size:24px">
      Intermediate Representation
      </td>
      <td style="font-size:32px">
    
  ```
  t1 = 10
  t2 = int_to_float t1
  t3 = c * t2
  t4 = e + t3
  f = t4
  ```
   </td>
  </tr>
  <tr>
    <td style="font-size:24px">
    Optimised IR 
    </td>
    <td style="font-size:32px">
    
  ```text
  t2 = 10.0f
  t3 = c * t2
  f  = e + t3
  ```

   </td>
  </tr>
  <tr>
    <td style="font-size:24px">
      Fully Optimised
    </td>
    
  <td >


  ```text
  f = e + (c * 10.0f)
  ```

  </td>
  </tr>
  </tbody>
</table>

</div>
</div>

---

## Code Generation

<div>

Now we are going to see how we go from C to Assembly to machine code…

</div>

<table>
<tr>
<td>

```c
int square(int num) {
    return num * num;
}
```
</td>
<td>

```as
square:
  pushq  %rbp
  movq   %rsp, %rbp
  movl   %edi, -4(%rbp)
  movl   -4(%rbp), %eax
  imull  %eax, %eax
  popq   %rbp
  ret
```
</td>

<td>

||Memory Addresses|
|---|---|
||0x0007556ff0e0|
||0x0007556ff0df|
||0x0007556ff0de|
|<span style="color:#58a6ff;font-weight:bold">saved %rbp</span>|<span style="color:#58a6ff;font-weight:bold">0x0007556ff0dd</span>|
||...|
||0x0007556ff0da|
|<span style="color:#58a6ff;font-weight:bold">↑ %rbp</span>|<span style="color:#58a6ff;font-weight:bold">0x0007556ff0d9</span>|

</td>
</tr>
</table>

<style scoped>
h1 { view-transition-name: header2; }

td:nth-of-type(1) pre:nth-of-type(1) code {
  --highlight-line-begin: 1;
  --highlight-lines: 1;
  --highlight-line-color: rgb(255 255 255 / 15%);
}
td:nth-of-type(2) pre:nth-of-type(1) code {
  --highlight-line-begin: 2;
  --highlight-lines: 1;
  --highlight-line-color: rgb(255 255 255 / 15%);
}
</style>

---

## Code Generation

<div>

Instruction sets up the stack frame, and how it maps to our memory layout.

</div>

<table>
<tr>
<td>

```c
int square(int num) {
    return num * num;
}
```

</td>

<td>

```as
square:
  pushq  %rbp
  movq   %rsp, %rbp
  movl   %edi, -4(%rbp)
  movl   -4(%rbp), %eax
  imull  %eax, %eax
  popq   %rbp
  ret
```

</td>

<td>

||Memory Addresses|
|---|---|
||0x0007556ff0e0|
||0x0007556ff0df|
||0x0007556ff0de|
|<span style="color:#58a6ff;font-weight:bold">saved %rbp</span>|<span style="color:#58a6ff;font-weight:bold">0x0007556ff0dd</span>|
||...|
||0x0007556ff0da|
|<span style="color:#58a6ff;font-weight:bold">↑ new %rbp</span>|<span style="color:#58a6ff;font-weight:bold">0x0007556ff0d9</span>|

</td>
</tr>
</table>

<style scoped>
h1 { view-transition-name: header2; }

td:nth-of-type(2) pre:nth-of-type(1) code {
  --highlight-line-begin: 3;
  --highlight-lines: 1;
  --highlight-line-color: rgb(255 255 255 / 15%);
}
</style>


---

## Code Generation

<div>

Now we are going to see how we go from C to Assembly to machine code…

</div>

<table>
<tr>
<td>

```c
int square(int num) {
    return num * num;
}
```
</td>
<td>

```as
square:
  pushq  %rbp
  movq   %rsp, %rbp
  movl   %edi, -4(%rbp)
  movl   -4(%rbp), %eax
  imull  %eax, %eax
  popq   %rbp
  ret
```
</td>

<td>

||Memory Addresses|
|---|---|
||0x0007556ff0e0|
||0x0007556ff0df|
||0x0007556ff0de|
|<span style="color:#58a6ff;font-weight:bold">saved %rbp</span>|<span style="color:#58a6ff;font-weight:bold">0x0007556ff0dd</span>|
||...|
||0x0007556ff0da|
|<span style="color:#58a6ff;font-weight:bold">↓ num</span>|<span style="color:#58a6ff;font-weight:bold">0x0007556ff0d5</span>|

</td>
</tr>
</table>

<style scoped>
h1 { view-transition-name: header2; }

td:nth-of-type(1) pre:nth-of-type(1) code {
  --highlight-line-begin: 1;
  --highlight-lines: 2;
  --highlight-line-color: rgb(255 255 255 / 15%);
}
td:nth-of-type(2) pre:nth-of-type(1) code {
  --highlight-line-begin: 4;
  --highlight-lines: 2;
  --highlight-line-color: rgb(255 255 255 / 15%);
}
</style>


---

## Code Generation

<div>

Now we look at the final operation: `imull %eax, %eax`, which computes `num * num`. This instruction directly maps to the C expression and uses the loaded value from the stack.

</div>

<table>
<tr>
<td>

```c
int square(int num) {
    return num * num;
}
```

</td>
<td>

```as
square:
  pushq  %rbp
  movq   %rsp, %rbp
  movl   %edi, -4(%rbp)
  movl   -4(%rbp), %eax
  imull  %eax, %eax
  popq   %rbp
  ret
```

</td>

<td>

||Memory Addresses|
|---|---|
||0x0007556ff0e0|
||0x0007556ff0df|
||0x0007556ff0de|
|<span style="color:#58a6ff;font-weight:bold">saved %rbp</span>|<span style="color:#58a6ff;font-weight:bold">0x0007556ff0dd</span>|
||...|
||0x0007556ff0da|
|<span style="color:#58a6ff;font-weight:bold">num</span>|<span style="color:#58a6ff;font-weight:bold">0x0007556ff0d5</span>|
|<span style="color:#58a6ff;font-weight:bold">eax = num*num</span>|<span style="color:#58a6ff;font-weight:bold">(register)</span>|

</td>
</tr>
</table>

<style scoped>
h1 { view-transition-name: header2; }

td:nth-of-type(1) pre:nth-of-type(1) code {
  --highlight-line-begin: 2;
  --highlight-lines: 1;
  --highlight-line-color: rgb(255 255 255 / 15%);
}
td:nth-of-type(2) pre:nth-of-type(1) code {
  --highlight-line-begin: 6;
  --highlight-lines: 1;
  --highlight-line-color: rgb(255 255 255 / 15%);
}
</style>


---

## Code Generation

<div>

Finally, we examine the `popq %rbp` instruction — the function epilogue that restores the previous stack frame, preparing for return to the caller.

</div>

<table>
<tr>
<td>

```c
int square(int num) {
    return num * num;
}
```

</td>
<td>

```as
square:
  pushq  %rbp
  movq   %rsp, %rbp
  movl   %edi, -4(%rbp)
  movl   -4(%rbp), %eax
  imull  %eax, %eax
  popq   %rbp
  ret
```

</td>

<td>

||Memory Addresses|
|---|---|
|<span style="color:#58a6ff;font-weight:bold">↑ restored %rbp</span>|<span style="color:#58a6ff;font-weight:bold">0x0007556ff0dd</span>|
||0x0007556ff0dc|
||0x0007556ff0db|
||0x0007556ff0da|
|num|0x0007556ff0d5|

</td>
</tr>
</table>

<style scoped>
h1 { view-transition-name: header2; }

td:nth-of-type(1) pre:nth-of-type(1) code {
  --highlight-line-begin: 2;
  --highlight-lines: 1;
  --highlight-line-color: rgb(255 255 255 / 15%);
}
td:nth-of-type(2) pre:nth-of-type(1) code {
  --highlight-line-begin: 7;
  --highlight-lines: 1;
  --highlight-line-color: rgb(255 255 255 / 15%);
}
</style>

---

## Code Generation: Assembly and Hex Representation

<div>

```c
int square(int num) {
    return num * num;
}
```
</div>

<div style="padding-top:40px">

$$\therefore$$

</div>

<div class="columns-2" style="padding-top:40px">
<div>

```as
square:
  pushq  %rbp
  movq   %rsp, %rbp
  movl   %edi, -4(%rbp)
  movl   -4(%rbp), %eax
  imull  %eax, %eax
  popq   %rbp
  ret
```

</div>
<div>

```
HEX
55      
48 89 e5
89 7d fc
8b 45 fc
0f af c0
5d      
c3      
```

</div>
</div>

---

## Symbol Management Table

<div>

A symbol table contains a record for each identifier with fields for the attributes of the identifier. 

</div>

<p align=center>

|Operation|Function|
|---|---|
|`allocate`| to allocate a new empty symbol table|
|`free`| to remove all entries and free storage of symbol table|
|`lookup`| to search for a name and return a pointer to its entry|
|`insert`| to insert a name in a symbol table and return a pointer to its entry|
|`set_attribute`| to associate an atrribute to a given entry|
|`get_attribute`| to get an attribute associated with a given entry|

</p>

---

## Error Handling Routine

During compilation process error(s) may occur in all the below-given phases:​

​
- Lexical analyser: Wrongly spelled tokens​
- Syntax analyser: Missing parenthesis​
- Semantic analyser: Mismatched data types, missing arguments​
- Intermediate code generator: Mismatched operands for an operator​
- Code Optimizer: When the statement is not reachable​
- Code Generator: Unreachable statements​
- Symbol tables: Error of multiple declared identifiers​

---

<!-- header: "Compilers" -->

## Labs

<div style="padding-top:100px">

You are going experience programming in several languages <C , Python and Ada> to do similar operations, and see how the code compiles and the subsequent outputs!​

</div>

<div style="padding-top:70px">

![drop-shadow w:1200](https://uniofgreenwich.github.io/ELEE1147_Exercises/Compilers/Figures/CompilerExplorer.PNG "centered")

</div>
</div>

<!-- footer: https://uniofgreenwich.github.io/ELEE1147_Exercises/Compilers/compilers.html -->