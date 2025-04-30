---
marp: true
---

<!--
# Metadata
title: Debugging
author: Seb Blair (CompEng0001)
description: Lecture slides on Debugging.
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

# Debugging

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

<!-- header: "_Debugging_" -->
<!-- class: lead -->

## Introduction to Debugging

<div style="font-size:27px">

- Debugging is a crucial aspect of software development that involves identifying and fixing errors or defects (bugs) in computer programs. 
<br>
- Regardless of programming language or development environment, all software developers encounter bugs during the development process. 
<br>
- Debugging is the systematic process of locating and resolving these bugs to ensure that the software behaves as expected.

</div>

![drop-shadow bg right:40% 90%](../../figures/debugginMemeOne.jpg)

----

## Origin of Debugging?

<div style="font-size:28px">

Name: Admiral Grace Hopper (USN)
<br>
When: 1947
<br> 

How: Working on the Mark II computer in Harvard and discoved a moth stuck in one of the relays which was causing the errors in the computer... she remarked that she was "debugging" the computer. 

*she created the first compiler and contributed to the programming language COBOL

</div>

![drop-shadow bg right:50% 75%](../../figures/grace.jpg)

----

<div style="padding-bottom:50px">

## Why Debugging Matters

</div>

- **Ensuring Software Quality**: 
  - Debugging helps improve the quality and reliability of software by identifying and fixing defects that could lead to unexpected behavior or system crashes.
<br>
- **Enhancing User Experience**: 
  - Software with fewer bugs provides a better user experience, leading to increased satisfaction and trust among users.
<br>
- **Reducing Development Costs**: 
  - Addressing bugs early in the development process helps reduce the time and resources required to fix them later, minimizing the overall cost of development.
<br>
- **Maintaining Developer Confidence**: 
  - Effective debugging techniques empower developers to tackle complex problems with confidence, enhancing their productivity and morale.

------


<!-- class: lead -->

# Common Types of Bugs

<style scoped>
h1 { view-transition-name: header2; }
</style>

----

<!-- header: "_Debugging_ > **Common Types of Bugs**" -->

<div class="columns-2">
<div>

- **Syntax Errors**: 
  - These occur when the code violates the syntax rules of the programming language, leading to compilation errors.

</div>
<div>

```c
#include <stdio.h>

int main() {
    int x = 5
    printf("The value of x is: %d\n", x);
    return 0;
}
```

</div>
</div>

----

<div class="columns-2" style="padding-top:50px">
<div>

- **Syntax Errors**: 
  - These occur when the code violates the syntax rules of the programming language, leading to compilation errors.
  <br>

  <br>

</div>
<div>

```c
#include <stdio.h>

int main() {
    int x = 5
    printf("The value of x is: %d\n", x);
    return 0;
}
```

- Missing `;`

</div>
</div>

<style scoped>
.columns-2 > div:nth-of-type(2) pre:nth-of-type(1) code {
  --highlight-line-begin: 4;
  --highlight-lines: 1;
  --highlight-line-color: rgb(255 255 255 / 15%);
}
</style>

----


<div class="columns-2">
<div>

- **Logic Errors**: Logic errors occur when the program does not produce the expected output due to flaws in its logic or algorithm.

</div>
<div>

```c
#include <stdio.h>

int main() {
    int x = 5;
    int y = 3;
    int sum = x - y;  // Logic error: subtracting instead of adding

    if (sum = 2){
      return 1;  
    }
    else{
      printf("The sum of x and y is: %d\n", sum);
    }
    return 0;
}
```

</div>
</div>

----

<div class="columns-2">
<div>

- **Logic Errors**: Logic errors occur when the program does not produce the expected output due to flaws in its logic or algorithm.
<br>
- Wrong calulation, wont through an error, but it is a logical error
<br>
- Assignment, instead of equality check.

</div>
<div>

```c
#include <stdio.h>

int main() {
    int x = 5;
    int y = 3;
    int sum = x - y;

    if (sum = 2){
      return 1;  
    }
    else{
      printf("The sum of x and y is: %d\n", sum);
    }
    return 0;
}
```

</div>
</div>

<style scoped>
.columns-2 > div:nth-of-type(2) pre:nth-of-type(1) code {
  --highlight-line-begin: 6;
  --highlight-lines: 1;
  --highlight-last-line: 8;
  --highlight-line-color: rgb(255 255 255 / 15%);
}
</style>

----

<div class="columns-2">
<div>

- **Runtime Errors**: Runtime errors occur during program execution and can result in crashes or unexpected behavior, often caused by issues such as null pointer dereferences or array out-of-bounds access.

</div>

```c
#include <stdio.h>

int main() {
    int x = 5;
    int y = 0;
    int result = x / y;
    printf("The result is: %d\n", result);
    return 0;
}
```

</div>
</div>

----

<!-- header: "Debugging > Common Types of Bugs" -->

<div class="columns-2" style="padding-top:60px">
<div>

- **Runtime Errors**: Runtime errors occur during program execution and can result in crashes or unexpected behavior, often caused by issues such as null pointer dereferences or array out-of-bounds access.

</div>
<div>

```c
#include <stdio.h>

int main() {
    int x = 5;
    int y = 0;
    int result = x / y; 
    printf("The result is: %d\n", result);
    return 0;
}
```

- Runtime error: division by zero

</div>
</div>

<style scoped>
.columns-2 > div:nth-of-type(2) pre:nth-of-type(1) code {
  --highlight-line-begin: 6;
  --highlight-lines: 1;
  --highlight-line-color: rgb(255 255 255 / 15%);
}
</style>

----
<!-- header: "Debugging" -->
<!-- class: lead -->

# Debugging Techniques

<style scoped>
h1 { view-transition-name: header2; }
</style>

----

<!-- header: "_Debugging_ > **Techniques**" -->



<div>

**Print Statements:**

</div>

<div class="columns-2">
<div style="padding-top:100px">

![drop-shadow w:600 center](https://preview.redd.it/an6kr96taj761.jpg?auto=webp&s=bf9ea4807b7b15cbb474013bd8f27f210b5ca842)

</div>
<div style="font-size:28px;padding-top:150px">

```c
int main() {
    int x = 5, y = 3;

    printf("Program start\n"); // Print statement to indicate the start of the program

    // Print statements to output variable values
    printf("Value of x: %d\n", x);
    printf("Value of y: %d\n", y);

    printf("Checkpoint reached\n"); // Print statement to indicate a checkpoint

    printf("Calculating sum\n"); // Print statement to perform a calculation

    int sum = x + y;

    printf("The sum of x and y is: %d\n", sum); // Print statement to output the result

    printf("Program end\n"); // Print statement to indicate the end of the program

    return 0;
}
```

</div>
</div>



----

<div>

**Debugger Tools:**

</div>

<div class="columns-2">
<div>

Integrated development environments (IDEs) and standalone debugger tools provide features such as breakpoints, stepping through code, and variable inspection, allowing developers to analyze program behavior in real-time.

</div>
<div>

![drop-shadpw w:800](../../figures/debuggingTool.png)

</div>

----

## Debugging Techniques

<div style="padding-top:60px">

- **Code Review:** Collaborating with peers to review code can help identify bugs and provide alternative perspectives on problem-solving.

![bg right:50% w:590](../../figures/codeReview.PNG)

----

## Debugging Techniques

<div style="padding-top:60px">

- **Unit Testing:** Writing and executing unit tests to validate individual components of the software can help catch bugs early in the development process.

![bg right:50% w:590](../../figures/unitTesting.png)

----

## Debugging Techniques

- **Logging:** Incorporating logging mechanisms into the software to record relevant events and errors can aid in post-mortem analysis and troubleshooting.

![center w:800](../../figures/logging.jpg)

----------

## Best Practices for Effective Debugging

<div style="font-size:24px">

- **Reproduce the Issue**: Attempt to reproduce the bug consistently to understand its scope and conditions.

- **Isolate the Problem**: Narrow down the search for the bug by identifying the specific sections of code or inputs that trigger the unexpected behavior.

- **Stay Organized:** Keep track of debugging progress, including any changes made to the code or observations during the process, to maintain clarity and focus.

- **Document Findings:** Documenting the debugging process, including the steps taken and the solutions attempted, can provide valuable insights for future reference.

- **Continuous Learning:** Stay updated on debugging techniques and tools, and learn from past debugging experiences to improve problem-solving skills.

</div>