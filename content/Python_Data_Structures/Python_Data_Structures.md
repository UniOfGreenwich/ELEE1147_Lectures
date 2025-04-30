---
marp: true
---

<!--
# Metadata
title: Data Structures in Python
author: Seb Blair (CompEng0001)
description: Lecture slides on Data Structures in Python.
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

# Data Structures in Python

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


<!-- _footer: "[Download as a PDF](https://github.com/UniOfGreenwich/ELEE1147_Lectures/raw/main/content/Python_Data_Structures/Python_Data_Structures.pdf)" -->

---

<style scoped>
h1 { view-transition-name: header2; }
</style>

<!-- header: "_Data Structures in Python_" -->

<div style="padding-top:50px; padding-bottom:100px">

## Data Structures in Python

- Essential components of programming
- Help manage and organise data effectively
- Python has built-in and user-defined data structures

---

## Types of Data Structures in Python

<div style="padding-top:150px">

1. **Primitive Data Structures**
   - Integers, Floats, Strings, Booleans

<br>

2. **Non-Primitive Data Structures**
   - Lists, Tuples, Sets, Dictionaries
   - User-defined structures

</div>

---

## Lists

<div class="columns-2">
<div style="padding-top:100px">

- Ordered, mutable, allows duplicate elements
- Defined with square brackets `[]`
- Common methods: 
  - `append()`
  - `extend()`
  - `insert()`
  - `pop()`
  - `remove()`

</div>
<div style="padding-top:100px">

```python
# Example
fruits = ["apple", "banana", "cherry"]

# ["apple", "banana", "cherry", "orange"]
fruits.append("orange")

# ["apple", "banana", "cherry", "orange", "mango", "grape"]
fruits.extend(["mango", "grape"])

 # ["apple", "blueberry" ,"banana", "cherry", "orange", "mango", "grape"]
fruits.insert(1, "blueberry")

# ["apple", "blueberry", "orange", "mango", "grape"]
fruits.pop(2)

# ["apple", "blueberry", "banana", "orange", "mango", "grape"]
fruits.remove("banana")

# ['grape', 'mango', 'orange', 'banana', 'blueberry', 'apple']
fruits.reverse()
```

</div>
</div>

---

## Tuples

<div class="columns-2" style="padding-top:50px">
<div style="padding-top:140px">

- Ordered, immutable, allows duplicate elements
- Defined with parentheses `()`
- Suitable for fixed data collections

</div>
<div style="padding-top:100px">

```python
# Example
coordinates = (10, 20, 30) # X ,Y, Z

coordinates.index[10] # returns: 1

coordinates[0:2] # sliced: 20, 30

coordinates = coordinates * 3 # (10, 20, 30, 10, 20, 30, 10, 20, 30)

len(coordinates) # 9
```

</div>
</div>

---

## Sets

<div class="columns-2" style="padding-top:50px">
<div style="padding-top:140px">

- Unordered, mutable, does not allow duplicates
- Defined with curly braces `{}` or `set()`
- Common methods: 
  - `add()`
  - `remove()`
  - `union()`
  - `intersection()`


</div>
<div style="padding-top:170px">

```python
# Example
unique_numbers = {1, 2, 3, 4}#

unique_numbers.add(5) # {1, 2, 3, 4, 5}

unique_numbers.update([6, 7, 8]) # {1, 2, 3, 4, 5, 6, 7, 8}

unique_numbers.remove(3) # {1, 2, 4, 5, 6, 7, 8}

unique_numbers.discard(9) # No error if not there unlike .remove 

unique_numbers.clear() # set() is now empty.
```

</div>
</div>

---

## Dictionaries

<div class="columns-2" style="padding-top:50px">
<div style="padding-top:250px">

- Key-value pairs, unordered, mutable
- Defined with curly braces `{key: value}`
- Useful for storing related data

</div>
<div style="padding-top:10px">
   

```python
# Example
server_info = {
    "hostname": "server01",
    "ip_address": "192.168.1.10",
    "status": "active",
    "cpu_load": 73.5,
    "services": ["httpd", "sshd", "mysql"]
}

server_info["hostname"] # Output: "server01"

# Output: "Not Available" (if key not present)
server_info.get("uptime", "Not Available")

# server_info now contains disk_usage
server_info["disk_usage"] = 85.2

# "httpd" removed from "services"
server_info["disk_usage"].pop(0)

# Output: dict_keys(["hostname", "status", "cpu_load", "services"])
server_info.keys()

# Output: dict_values(["server01", "active", 73.5, ["sshd", "mysql"]])
server_info.values()
```

</div>
</div>

---

## Comparison of Data Structures


|Feature	|List|	Tuple|	Set|	Dictionary|
|----|---|---|---|---|
|Ordered|   Yes       | Yes       | No        | No              |
|Mutable|   Mutable       | Yes       | No        | Yes       | Yes             |
|Duplicate| Duplicate     | Allowed   | Allowed   | Not Allowed | Keys Unique  |
|====|====|===|=====|=====|
|Memory Usage|	Medium|	Low|Medium|	High|
|Access Time|	O(1) for index-based access|	O(1) for index-based access	|O(1) average for membership check	|O(1) average for key access|
|Insert/Delete Time| O(n) average (insert at end O(1))|	Not Applicable	O(1) |average for add/remove	| O(1) average for add/remove|
