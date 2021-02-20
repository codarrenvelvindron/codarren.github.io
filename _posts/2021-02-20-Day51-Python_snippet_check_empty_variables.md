---
layout: post
title: 'Day 51: Python snippet check empty variables'
published: true
---
## Python Snippet
![python check multiple variables if empty](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/python_check_variable_empty.png)

Because it can save you minutes of searching.

## Aim
The aim of this tutorial is to check for empty variables in python.

## Checking for an empty variable
```
my_var1 = ''

if not my_var1:
    print ("my_var1 is empty")
else:
    print ("my_var1 is full :)")
```

**Result**
```
# Nothing in my_var1
my_var1 is empty

#Something in my_var1 my_var1 = 'dsdads'
my_var1 is full :)
```

## Checking for multiple empty variables
```
my_var1 = ''
my_var2 = ''
if not (my_var1 and my_var2):
    print ("One of my_var1,myvar2 or BOTH are empty")
else:
    print ("All vars contain something")
```

**Result**
```
# Nothing in my_var1 and my_var2
OUTPUT: One of my_var1,myvar2 or BOTH are empty

#my_var1 = 'sdagdfxcchd'
#my_var2 = ''
OUTPUT: One of my_var1,myvar2 or BOTH are empty

#my_var1 = ''
#my_var2 = 'hfgxvxcvx'
OUTPUT: One of my_var1,myvar2 or BOTH are empty

#my_var1 = 'sdsadasgfbc'
#my_var2 = 'hfgxvxcvx'
OUTPUT: All vars contain something
```

## \ Codarren /