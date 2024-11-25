---
title:  Header Files, Guards and Macros
description: Header Files, Guards and Macros ppt
class: gaia
_class:
  - lead
  - invert
style: |
    #img-right{
      float: right;
    }
     img[alt~="center"] {
      display: block;
      margin: 0 auto;
    }
    table {
      border-collapse: collapse;
      font-size: 22px;
    }
    table, th,tr, td {
      border: none!important;
      vertical-align: middle;
    }
    section::after {
      content: attr(data-marpit-pagination) '/' attr(data-marpit-pagination-total);
    }
    @import url('https://unpkg.com/tailwindcss@^2/dist/utilities.min.css');
footer: "ELEE1147 | Programming for Engineers"
size: 16:9
paginate: true
_paginate: false
marp: true
math: true
---

<!-- _footer: "" -->

# Header Files, Guards and Macros

    Module Code: ELEE1147
    
    Module Name: Programming for Engineers

    Credits: 15

    Module Leader: Seb Blair BEng(H) PGCAP MIET MIHEEM FHEA

---


## Why Use Header Files?

- **Modularity:** Separate interface from implementation.

- **Reusability:** Share functions and data structures.

- **Readability:** Enhance code organisation.

- **Function Prototypes:** Allows the compiler to check function signatures during compilation.

- **Precompiled Headers:** Speeds up compilation by avoiding redundant parsing of headers in multiple source files.

---

## How Does It Work?

![w:700 center](../../figures/header_links.png)

---

<div style="font-size:26px; margin-left:410px">

## Header Example

</div>

<div class="grid grid-cols-2 gap-4">
<div style="font-size:26px; margin-top:1px ">

```h
// header.h
#ifndef HEADER_H // Header guard
#define HEADER_H // Macro

#include <stdio.h> // Other libraries

void greeter(); // Function prototype

#define PI 3.14159 // Shared constant
#define GR ((double)1.61803) // ""

// Shared DataStorage
struct Student {
  char name[50];
  int studentId;
  float classification;
};
#endif // HEADER_H
```
</div>


<div class="grid grid-rows-2 gap-4">
<div style="font-size:26px">

```c
// main.c
#include "header.h"
int main() {
    greeter();
    return 0;
}
```

</div>

<div style="font-size:26px;margin-bottom:88px">

```c
#include "header.h"

void greeter(){
    printf("Hello World!")!
}

```

</div>

</div>

</div>

---

## What are Header Guards?

- **Purpose:** Prevent multiple inclusions of the same header file.
- **Issue:** Without guards, redefinitions can occur during multiple inclusions.
- **Solution:** Use preprocessor directives to conditionally include the contents.

---

## Why Use Header Guards?

<div class="grid grid-cols-2 gap-4">
<div>

- **Avoid Redefinitions:** Prevent compilation errors due to duplicate declarations.

- **Ensure Once-Only Inclusion:** Each header is included only once in a translation unit.

- **Improve Compilation Efficiency:** Reduce redundant parsing of header contents.

</div>

<div style="margin-top:110px">

```h
#ifndef HEADER_H
#define HEADER_H

...

#endif //end of HEADER_H

```

</div>
</div>

---
## How Header Guards Work

![w:800 center](../../figures/headerGuard.png)

---

## Macros

Macros in C are a way to **define** constants or simple functions using the `#define` directive. They are preprocessor directives, meaning they are processed before the actual compilation of the code.

```h
// example_macros.h

#ifndef EXAMPLE_MACROS_H
#define EXAMPLE_MACROS_H

#define PI 3.14159 // Shared Constant
#define SQUARE(x) ((x) * (x)) // Function

#ifdef _MSC_VER
// Code specific to Microsoft Version C/C++
#endif //end of _MSC_VER

#endif // end of EXAMPLE_MACROS_H
```
---

## Preprocessor Directive: `#include` `""` vs `<>` 

- Use `#include ""` 
  - for including header files that are part of your project or are in the current directory.

- Use `#include <>` for 
  - including standard library header files or other headers that are part of the system include directories.
---

## Standardised Header Examples:

[stdio.h](https://github.com/lattera/glibc/blob/master/libio/stdio.h)

```h
23. #ifndef _STDIO_H
24. #define _STDIO_H	1
25. 
26. #define __GLIBC_INTERNAL_STARTING_HEADER_IMPLEMENTATION
27. #include <bits/libc-header-start.h>
...
878. 
879. __END_DECLS
880. 
881. #endif /* <stdio.h> included.  */
```
---

## Standardised Header Examples:

[math.h](https://github.com/openbsd/src/blob/master/include/math.h)
```h
...
130. #define	M_E		((double)2.7182818284590452354)  /* e */
131. #define	M_LOG2E		((double)1.4426950408889634074)  /* log 2e */
132. #define	M_LOG10E	((double)0.43429448190325182765) /* log 10e */
133. #define	M_LN2		((double)0.69314718055994530942) /* log e2 */
134. #define	M_LN10		((double)2.30258509299404568402) /* log e10 */
135. #define	M_PI		((double)3.14159265358979323846) /* pi */
...
494. int __signbitl(long double);
495. __END_DECLS
496. 
497. #endif /* !_MATH_H_ */
```
---

![w:1200 center](../../figures/headermagicianmeme.png)