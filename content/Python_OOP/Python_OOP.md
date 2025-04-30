---
marp: true
---

<!--
# Metadata
title: Python - OOP
author: Seb Blair (CompEng0001)
description: Lecture slides on Python - OOP
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

# Python - OOP

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


<!-- _footer: "[Download as a PDF](https://github.com/UniOfGreenwich/ELEE1147_Lectures/raw/main/content/Python_OOP/Python_OOP.pdf)" -->

---

<style scoped>
h1 { view-transition-name: header2; }
</style>

<!-- header: "_Python - OOP_" -->
<!-- class: lead -->

<div>

## Object-Oriented Programming in Python
</div>

<div>

<br>

- **What is OOP?**
  - A programming paradigm based on "objects"
  - Combines **data** and **methods** into single entities
  - Focuses on **modularity** and **reusability**

<br>

- **Key Features:**
  - Encapsulation
  - Inheritance
  - Polymorphism
  - Abstraction

</div>

---

<!-- class: lead -->

# Classes


<style scoped>
h1 { view-transition-name: header2; }
</style>

---

<!-- header: "_Python - OOP_ > **Classes**" -->

<div style="padding-bottom:100px">

## Classes

<div>

<div>

- **Classes** are software programming models 
  - abstractions of the real world or system entities. 

<br>

- **Classes** define methods that operate on their object instances

</div>

![drop-shadow bg right:50% 90%](../../figures/houses_class.png)

<!--

- Classes have *state* and *behaviour*

- *Variables* are used to describe the state of the class and methods are used to describe behaviour

- Classes are collections of objects with common structure, common behaviour, common relationships and common semantics

- Objects belong to a particular class, objects are instances of a particular class 

-->

---

<div style="padding-bottom:50px">

## Classes vs Objects (2)

</div>

<div>

**House Class**

- Data
    - House color (`String`)
    - Number of windows (`Number`)
    - Is for sale (`Boolean`)

<br>

- Behavior
    - `updateColor()`
    - `putOnSale()`

</div>

![drop-shadow bg right:50% 90%](../../figures/houses_objects.png)

<!--

The House class contains a blueprint of what goes into a House. It has properties like color (which is a String), number of windows (an Int), and whether or not the house is for sale (a Boolean).

The House class also contains methods like updating the house color or putting the house on sale.

We use the class to create object instances of the class. On the right are 3 different House object instances that have different attributes. They have different colors and one is even for sale.

-->

---

<div>

```python
# Define the class (the blueprint)
class House:
    def __init__(self, color, number_of_windows, door_color, sale_state):
        self.color = color
        self.number_of_windows = number_of_windows
        self.door_color = door_color
        self.sale_state = sale_state

    def describe(self):
        return (f"House Colour: {self.color}\nNumber of Windows: {self.number_of_windows}\n"
                f"Door Colour: {self.door_color}\nIs for Sale: {self.sale_state}\n")

# Object instances (the real houses)
house1 = House(color="blue", number_of_windows=4, door_color="blue", sale_state=True)
house2 = House(color="orange", number_of_windows=3, door_color="orange", sale_state=True)
house3 = House(color="red", number_of_windows=5, door_color="red",  sale_state=False)

print(f"{house1.describe()}id:{id(house1)}\n")
print(f"{house2.describe()}id:{id(house2)}\n")
print(f"{house3.describe()}id:{id(house3)}\n")
```

<style scoped>
div:nth-of-type(1) pre:nth-of-type(1) code {
  --highlight-line-begin: 3;
  --highlight-lines: 1;
  --highlight-last-line:14;
  --highlight-line-color: rgb(255 255 255 / 15%);
}
</style>


</div>

<br>

<div style="font-size:22px">

```
House Colour: blue
Number of Windows: 4
Door Colour: white
Is for Sale: True
id:2349953673808

House Colour: orange
Number of Windows: 3
Door Colour: brown
Is for Sale: True
id:2349956762512

House Colour: red
Number of Windows: 5
Door Colour: purple
Is for Sale: False
id:2349956762832
```

</div>

![drop-shadow bg right:45% 90%](../../figures/houses_class.png)

---

<div>

```python
# Define the class (the blueprint)
class House:
    def __init__(self, color, number_of_windows, door_color, sale_state):
        self.color = color
        self.number_of_windows = number_of_windows
        self.door_color = door_color
        self.sale_state = sale_state

    def describe(self):
        return (f"House Colour: {self.color}\nNumber of Windows: {self.number_of_windows}\n"
                f"Door Colour: {self.door_color}\nIs for Sale: {self.sale_state}\n")

# Object instances (the real houses)
house1 = House(color="blue", number_of_windows=4, door_color="blue", sale_state=True)
house2 = House(color="orange", number_of_windows=3, door_color="orange", sale_state=True)
house3 = House(color="red", number_of_windows=5, door_color="red",  sale_state=False)

print(f"{house1.describe()}id:{id(house1)}\n")
print(f"{house2.describe()}id:{id(house2)}\n")
print(f"{house3.describe()}id:{id(house3)}\n")
```

<style scoped>
div:nth-of-type(1) pre:nth-of-type(1) code {
  --highlight-line-begin: 9;
  --highlight-lines: 3;
  --highlight-last-line:18;
  --highlight-line-color: rgb(255 255 255 / 15%);
}
</style>

</div>

<br>

<div style="font-size:22px">

```
House Colour: blue
Number of Windows: 4
Door Colour: white
Is for Sale: True
id:2349953673808

House Colour: orange
Number of Windows: 3
Door Colour: brown
Is for Sale: True
id:2349956762512

House Colour: red
Number of Windows: 5
Door Colour: purple
Is for Sale: False
id:2349956762832
```

<style scoped>
div:nth-of-type(2) pre:nth-of-type(1) code {
  --highlight-line-begin: 1;
  --highlight-lines: 5;
  --highlight-last-line:11;
  --highlight-line-color: rgb(255 255 255 / 15%);
}
</style>

</div>

![drop-shadow bg right:45% 90%](../../figures/houses_class.png)

---

<div style="padding-bottom:100px">

## Encapsulation

</div>

<div class="columns-2" style="padding-bottom:100px">
<div>

- **Definition**: 
  - Bundling data and methods into a single unit (class) and restricting direct access to some components.

<br>

- Example:
  - Use **getter and setter methods** to access private attributes.

</div>
<div style="padding-top:100px">


```python {1,2}
class BankAccount:
    def __init__(self, balance):
        self.__balance = balance  # Private attribute

    # Setter
    def deposit(self, amount):
        self.__balance += amount

    # Getter
    def get_balance(self):
        return self.__balance
```

</div>
</div>

---

<div>

## Inheritance

</div>

<div class="columns-2" style="padding-top:70px">
<div style="padding-top:150px">

- **Definition**: A mechanism to derive a class from another class.

<br>

- Python supports single and multiple inheritance.

</div>
<div style="padding-top:10px">

```python
class Animal:
    def __init__(self, name):
        self.name = name

    def eat(self):
        print("I can eat!")

    def sleep(self):
        print("I can sleep")

class Dog(Animal):
    def __init__(self, name, breed):
        # Call the parent class's __init__
        super().__init__(name)  
        self.breed = breed

    def bark(self):
        print("Woof!")

dog = Dog("Alfski", "Norwegian Elkhound")
print(dog.name)  # Alfski
print(dog.breed)  # Norwegian Elkhound
print(dog.bark)  # Woof!
```

</div>
</div>

<style scoped>
.columns-2 > div:nth-of-type(2) pre:nth-of-type(1) code {
  --highlight-line-begin: 1;
  --highlight-lines: 1;
  --highlight-last-line:11;
  --highlight-line-color: rgb(255 255 255 / 15%);
}
</style>


---

<div>

## Inheritance

</div>

<div class="columns-2" style="padding-top:70px">
<div style="padding-top:250px">

- keyword: `super()` gives you access to the parent class you inherited

</div>
<div style="padding-top:10px">

```python
class Animal:
    def __init__(self, name):
        self.name = name

    def eat(self):
        print("I can eat!")

    def sleep(self):
        print("I can sleep")

class Dog(Animal):
    def __init__(self, name, breed):
        # Call the parent class's __init__
        super().__init__(name)  
        self.breed = breed

    def bark(self):
        print("Woof!")

dog = Dog("Alfski", "Norwegian Elkhound")
print(dog.name)  # Alfski
print(dog.breed)  # Norwegian Elkhound
print(dog.bark)  # Woof!
```

</div>
</div>

<style scoped>
.columns-2 > div:nth-of-type(2) pre:nth-of-type(1) code {
  --highlight-line-begin: 2;
  --highlight-lines: 2;
  --highlight-last-line:14;
  --highlight-line-color: rgb(255 255 255 / 15%);
}
</style>

---


<div>

## Inheritance

</div>

<div class="columns-2" style="padding-top:70px">
<div style="padding-top:250px">

- Expand with additional functions for this class

</div>
<div style="padding-top:10px">

```python
class Animal:
    def __init__(self, name):
        self.name = name

    def eat(self):
        print("I can eat!")

    def sleep(self):
        print("I can sleep")

class Dog(Animal):
    def __init__(self, name, breed):
        # Call the parent class's __init__
        super().__init__(name)  
        self.breed = breed

    def bark(self):
        print("Woof!")

dog = Dog("Alfski", "Norwegian Elkhound")
print(dog.name)  # Alfski
print(dog.breed)  # Norwegian Elkhound
print(dog.bark)  # Woof!
```

</div>
</div>

<style scoped>
.columns-2 > div:nth-of-type(2) pre:nth-of-type(1) code {
  --highlight-line-begin: 17;
  --highlight-lines: 2;
  --highlight-last-line:23;
  --highlight-line-color: rgb(255 255 255 / 15%);
}
</style>

---

<div>

## Polymorphism

</div>

<div class="columns-2" style="padding-top:70px">
<div style="padding-top:150px">

- **Definition**: The ability of objects to take many forms.

</div>
<div>

```python
class Bird:
    def fly(self):
        print("Bird flies")

class Penguin(Bird):
    def fly(self):
        print("Penguins cannot fly")

def test_fly(bird):
    bird.fly()

test_fly(Bird())    # Bird flies
test_fly(Penguin())  # Penguins cannot fly
```

</div>
</div>

---

<div>

## Abstraction

</div>

<div class="columns-2" style="padding-top:70px">
<div style="padding-top:70px">

- **Definition**: 
  - Hiding implementation details while showing essential features.

</br>

- Achieved using abstract base classes.

</div>
<div>

```python
from abc import ABC, abstractmethod

class Shape(ABC):
    @abstractmethod
    def area(self):
        pass ## keyword for placeholder

class Circle(Shape):
    def __init__(self, radius):
        self.radius = radius

    def area(self):
        return 3.14 * self.radius ** 2

circle = Circle(5)
print(circle.area())  # 78.5
```

</div>
</div>

---

<div>

## Special Methods in Python

</div>

<div class="columns-2" style="padding-top:70px">
<div style="padding-top:70px">

- **Magic/Dunder Methods**: Special methods with double underscores.
- Examples:
  - `__init__`: Initialize an object.
  - `__str__`: String representation of an object.
  - `__add__`: Define addition behavior for objects.

</div>
<div style="padding-top:50px">

```python
class Vector:
    def __init__(self, x, y):
        self.x = x
        self.y = y

    def __add__(self, other):
        return Vector(self.x + other.x, self.y + other.y)

    def __str__(self):
        return f"Vector({self.x}, {self.y})"

v1 = Vector(2, 3)
v2 = Vector(5, 6)
print(v1 + v2)  # Vector(7, 9)
```

</div>
</div>

---

<div>

## Why Use OOP?

</div>

<div>
<br>

- **Benefits:**
  - Code reusability through inheritance.
  - Modularity for easier debugging and maintenance.
  - Encapsulation enhances data security.
  - Polymorphism makes systems more flexible.
<br>

- **Real-World Use Cases:**
  - GUI applications
  - Games
  - Web frameworks

</div>

---

<div>

## Summary

</div>

<div>
<br>

- OOP provides a structured and modular way of programming.
<br>
- Key concepts:
  - Classes and Objects
  - Encapsulation
  - Inheritance
  - Polymorphism
  - Abstraction
  - `super()` for parent class method calls

<br>

- Use OOP for scalable and maintainable code.

</div>