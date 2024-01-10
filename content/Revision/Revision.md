---
title: Revision 
description: Revision slides
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
    @import url(../utilities.css);;
size: 16:9
paginate: true
_paginate: false
marp: true
math: true
---

# Revision

    Module Code: ELEE1147

    Module Name: Programming for Engineers

    Credits: 15

    Module Leader: Seb Blair BEng(H) PGCAP MIET MIHEEM FHEA

---

## Content for your exams

- Fundamentals of C programming
- Recogonising Algorithms Complexity   
- Memory Management
- Compiler steps

---

## Fundamentals of C programming


---

## Recogonising Algorithms Complexity

- Constant runtime is represented by $O(1)$
- linear growth is $O(n)$
- logarithmic growth is $O(log\ n)$
- log-linear growth is $O(n\ log\ n)$
- quadratic growth is $O(n^2)$
- exponential growth is $O(2^n)$
- factorial growth is $O(n!)$
  
---

##  Recogonising Algorithms Complexity, Graph

![w:950 center](https://devopedia.org/images/article/17/4996.1513922020.jpg)


---

## $O(2^n)$

<div class="grid" style="columns: 2; gap: 8px;">
<div style="font-size:22px; margin-top:80px">

```c
// Exponential complexity: O(2^n)
long Fibonacci(int n)
{
    if (n == 0)
    {
        return 1;
    }
    else if (n == 1)
    {
        return 1;
    }
    else
    {
        return Fibonacci(n - 1) + Fibonacci(n - 2);
    }
}
```

</div>

<div>

- For each Fibonacci number, the algorithm makes two recursive calls: `Fibonacci(n - 1) and Fibonacci(n - 2)`. This leads to an exponential growth in the number of recursive calls as the input `n` increases.

- Similar to binary as this is base 2 too.  

- An algorithm's performance can degrade rapidly as the input size increases.


</div>
</div>

<!--


The provided algorithm for calculating Fibonacci numbers has exponential time complexity, O(2^n). This is because, for each Fibonacci number, the algorithm makes two recursive calls: Fibonacci(n - 1) and Fibonacci(n - 2). This leads to an exponential growth in the number of recursive calls as the input n increases.

To break it down:

For Fibonacci(n - 1), it makes two more calls for Fibonacci(n - 2) and Fibonacci(n - 3).
For Fibonacci(n - 2), it makes two more calls for Fibonacci(n - 3) and Fibonacci(n - 4).
This pattern continues, and you can see that the number of recursive calls doubles with each level of recursion.
As a result, the time complexity is O(2^n), where n is the input to the Fibonacci function. This exponential growth makes the algorithm inefficient for larger values of n, and more efficient algorithms, like memoization or dynamic programming, are often used to improve the time complexity.

-->

---

## $O(n)$

<div class="grid" style="columns: 2; gap: 8px;">
<div style="font-size:22px; margin-top:60px">

```c
// Linear complexity: O(n)
int FindMaxElement(int[] array)
{
  int max = int.MinValue;
  for (int i = 1; i < array.Length; i++)
  {
    if (array[i] > max)
    {
      max = array[i];
    }
  }
  return max;
}
```
</div>
<div>

The algorithm's time complexity is linearly dependent on the size of the input (each additional element in the array results in one more iteration through the loop), it is denoted as **$O(n)$**, where $n$ is the length of the array. This makes it an efficient linear time algorithm for finding the maximum element in an array.

</div>
</div>

---

## $O(n^2)$

<div class="grid" style="columns: 2; gap: 8px;">
<div style="font-size:26px; margin-top:60px">

```c
// Quadratic complexity: O(n^2)
int FindInversions(int[] array)
{
  int inversions = 0;
  for (int i = 0; i < array.Length - 1; i++)
  {
    for (int j = i + 1; j < array.Length; j++)
    {
      if (array[i] > array[j])
      {
          inversions++;
      }
    }
  }
  return inversions;
}
```

</div>

<div style="font-size:34px">

- Nested loops and the nature of the comparisons being performed result in a quadratic time complexity making this algorithm less efficient for larger arrays compared to algorithms with lower time complexities.


</div>
</div>

<!--

In the context of sorting algorithms and array manipulation, an inversion occurs when two elements in an array are out of order relative to each other. More formally, in an array arr, a pair of indices (i, j) forms an inversion if i<j and arr[i]>arr[j].
-->

---

## $O(log\ n)$

<div class="grid grid-cols-2 gap-4">
<div style="font-size:22px; margin-top:60px">

```c
// logarithmic growth is O(log n)
int GCD(int a, int b)
{
  // Ensure that a is greater than b
  if (b > a)
  {
    int temp = a;
    a = b;
    b = temp;
  }

  // Compute GCD using the Euclidean algorithm
  while (b > 0)
  {
    int r = a % b;
    a = b;
    b = r;
  }

  return a;
}
```
</div>

<div>

Ensure that a is greater than b. If b is greater than a, swap the values of a and b.
Compute the remainder r of a divided by b.
If r is equal to 0, then the GCD of a and b is b. Otherwise, set a to b and b to r, and go back to step 2.
The Euclidean algorithm has a time complexity of O(log N), where N is the larger of the two input integers. This is because, in each iteration of the algorithm, the size of the inputs is reduced by a factor of at least 2, which means that the number of iterations required is proportional to log N.

</div>
</div>

---

## Good luck and have a good time in the exam!

![center](https://i.chzbgr.com/full/9029005056/h761B7854/photo-of-jake-gyllenhaal-situation-youre-in-when-taking-an-exam-and-see-the-first-question)