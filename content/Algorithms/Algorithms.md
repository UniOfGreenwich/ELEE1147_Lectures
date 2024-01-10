---
title: Algorithms
description: Algorithms slides
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
      @import url(../utilities.css);
size: 16:9
paginate: true
_paginate: false
marp: true
math: true
---

# Algorithms

    Module Code: ELEE1147

    Module Name: Programming for Engineers

    Credits: 15

    Module Leader: Seb Blair BEng(H) PGCAP MIET MIHEEM FHEA

---

## What is Big O?

**Definition:**

- Big O notation is a mathematical notation used to describe the upper bound on the growth rate of a function, especially in the context of algorithm efficiency.

---

## Why Big O?

**Importance:**

- Efficient algorithms are crucial in computer science and programming.

- Big O helps in quantifying and comparing algorithm efficiency.

- Allows for better decision-making in algorithm selection.

---

## Analysing Algorithm Complexity

### Factors Affecting Complexity:

- **Time Complexity:** 
  - How the runtime of an algorithm increases with the input size.

- **Space Complexity:** 
  - How the memory requirements of an algorithm scale with the input size.


---

## Time Complexity

Time complexity represents the amount of time an algorithm takes to complete as a function of the input size.

- Constant Time $\Longrightarrow O(1)$

- Logarithmic Time $\Longrightarrow O(log\ n)$

- Linear Time $\Longrightarrow  O(n)$

- Log-linear Time $\Longrightarrow  O(n\ log\ n)$

- Quadratic Time $\Longrightarrow  O(n^2)$

---

## Space Complexity

Space complexity represents the amount of memory space an algorithm requires as a function of the input size.

- Constant Space $\Longrightarrow O(1)$

- Linear Space $\Longrightarrow O(n)$

- Log-linear Space $\Longrightarrow O(n\ log\ n)$

- Quadratic Space $\Longrightarrow O(n^2)$

---

##  Recogonising Algorithms Complexity, Graph

![w:950 center](https://devopedia.org/images/article/17/4996.1513922020.jpg)


---

## Examples of Big O Notation

- Linear Search $\Longrightarrow O(n)$

- Binary Search $\Longrightarrow O(log\ n)$

- Bubble Sort $\Longrightarrow O(n^2)$

- Merge Sort $\Longrightarrow O(n\ log\ n)$

- ...

---


## Real-world Applications

- Choosing the right data structures and algorithms for software development.

- Optimizing database queries.

- Designing efficient algorithms for large-scale data processing.

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

## Linear Search Example, $O(n)$:

- Searching for a value and its index

- Unordered List, Small Data Sets, Linked Lists.


<div class="grid" style="columns: 2; gap: 8px;">
<div style="font-size:22px; margin-top:0px">

```c
#include <stdio.h>

int linearSearch(int arr[], int size, int target) {
    for (int i = 0; i < size; i++) {
        if (arr[i] == target) {
            return i;  // Target found
        }
    }
    return -1;  // Target not found
}
```
</div>
<div>

```c
int main() {
    int arr[] = {3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5};
    int size = sizeof(arr) / sizeof(arr[0]);
    int target = 4;

    int result = linearSearch(arr, size, target);

    if (result != -1) {
        printf("Target %d found at index %d\n", target, result);
    } else {
        printf("Target %d not found\n", target);
    }

    return 0;
}
```
</div>
</div>

---


## Second example of $O(n)$, finding Max:

<div class="grid" style="columns: 2; gap: 20;">
<div style="font-size:26px; margin-top:60px">

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

- The algorithm's time complexity is linearly dependent on the size of the input (each additional element in the array results in one more iteration through the loop)
- it is denoted as **$O(n)$**, where $n$ is the length of the array. This makes it an efficient linear time algorithm for finding the maximum element in an array.

</div>
</div>

---

## Binary search $O(log\ n)$ code example:

<div class="grid" style="columns: 2; gap: 8px;">
<div style="font-size:22px; margin-top:0px">

```c
#include <stdio.h>

int binarySearch(int arr[], int size, int target) {
    int low = 0, high = size - 1;

    while (low <= high) {
        int mid = (low + high) / 2;
        if (arr[mid] == target) {
            return mid;  // Target found
        } else if (arr[mid] < target) {
            low = mid + 1;
        } else {
            high = mid - 1;
        }
    }

    return -1;  // Target not found
}
```

</div>

<div>

```c
int main() {
    int arr[] = {5,11,12,14,15,18,19,21,23,
                    27,25,28,30,32,37};
    int size = sizeof(arr) / sizeof(arr[0]);
    int target = 27;

    int result = binarySearch(arr, size, target);

    if (result != -1) {
        printf("Target %d found at index %d\n", 
                  target, result);
    } else {
        printf("Target %d not found\n", target);
    }

    return 0;
}

```
<div>
<div>

---

## Binary search $O(log\ n)$ and Linear Search $O(n)$

![w:800 center](https://www.mathwarehouse.com/programming/images/binary-vs-linear-search/binary-and-linear-search-animations.gif)

---

## Binary search $O(log\ n)$ Tree view

![w:600 center](https://www.mathwarehouse.com/programming/images/binary-search-tree/binary-search-tree-sorted-array-animation.gif)


---

## Exponential growth is $O(2^n)$, Fibonacci:

![w:550 center](https://www.mathwarehouse.com/programming/images/fibonacci-recursion-demonstration-animation-python.gif )

---

## Exponential growth is $O(2^n)$, Fibonacci:


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

## Greatest Common Demonator $O(log\ n)$

<div class="grid" style="columns: 2; gap: 8px;">
<div style="font-size:30px;">

```c
// logarithmic growth is O(log n)
int GCD(int a, int b)
{
  if (b > a) // Ensure that a is greater than b
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

<div style="font-size:30px">

- The Euclidean algorithm has a time complexity of O(log N), where N is the larger of the two input integers. 
- This is because, in each iteration of the algorithm, the size of the inputs is reduced by a factor of at least 2, 
- which means that the number of iterations required is proportional to $log\ N$.

</div>
</div>

<!--
- Ensure that a is greater than b. If b is greater than a, swap the values of a and b.
- Compute the remainder r of a divided by b.
- If r is equal to 0, then the GCD of a and b is b. Otherwise, set a to b and b to r, and go back to step 2.
-->
---

##  Bubble Sort $\Longrightarrow O(n^2)$:

```c
for (c = 0 ; c < n - 1; c++)
  {
    for (d = 0 ; d < n - c - 1; d++)
    {
      if (array[d] > array[d+1])
      {
        swap       = array[d];
        array[d]   = array[d+1];
        array[d+1] = swap;
      }
    }
  }
```
![bg right:50% 90%](https://upload.wikimedia.org/wikipedia/commons/5/54/Sorting_bubblesort_anim.gif?20140912160204)

--- 

## Quick Sort $\Longrightarrow O(n\ log\ n)$:

```c
void quicksortMiddle(int arr[], int low, int high) {
  if (low < high) {
    // Selecting the middle element as the pivot
    int pivot = arr[(low + high) / 2]; 
    int i = low,j = high, temp;

    while (i <= j) {
      // Moving elements smaller than pivot to the left
        while (arr[i] < pivot) i++; 
        // Moving elements greater than pivot to the right
        while (arr[j] > pivot) j--; 

        if (i <= j) {
            temp = arr[i]; // Swapping elements        
            arr[i] = arr[j];
            arr[j] = temp;
            i++;
            j--;
        }
    }
    // Recursively sort the two partitions
    if (low < j) quicksortMiddle(arr, low, j);
    if (i < high) quicksortMiddle(arr, i, high);
  }
}
```


![bg right:40% 90%](https://upload.wikimedia.org/wikipedia/commons/6/6a/Sorting_quicksort_anim.gif)

<!--
sorting algorithm based on the divide and conquer approach

https://hackr.io/blog/quick-sort-in-c
-->
