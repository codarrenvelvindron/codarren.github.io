---
published: false
---
## Lambda

In python, a lambda function relates to the concept of anonymous functions.

## Problem
We want to sort a list in alphabetical order.

```
animal_names = ['Fievel', 'Buck', 'lasSie', 'Zedicus']
animal_names.sort()
```
Easy enough right?

**Result**
```
['Buck', 'Fievel', 'Zedicus', 'lasSie']
```
The issue here is that due to case differences, we are unable to sort them alphabetically.

## Normal function

To understand how lambda functions work.

We'll contrast with a normal function to solve the issue above

In the function below, we have a function that converts a string to uppercase.
```
#!/usr/bin/python3

def makeuppercase(yourstring):
    """ To convert string to all uppercase """
    return yourstring.upper()

animal_names = ['Fievel', 'Buck', 'lasSie', 'Zedicus']
animal_names.sort(key=makeuppercase)

print (animal_names)
```

**Result**
```
['Buck', 'Fievel', 'lasSie', 'Zedicus']
```
Because, it first transforms all elements to uppercase, it is able to sort them properly.

## Lambda function
Because our previous function uses only one line of code.

We can convert it to a lambda function instead, which does just that.

The syntax for a lambda function is:
```
lambda parameters : expression
```

We can replace the lambda parameters with what we used in the previous function.
```
lambda yourstring : yourstring.upper()
```

Since, the function has been stripped from its name, it's now an anonymous (lambda) function.

## Putting it together
```
animal_names = ['Fievel', 'Buck', 'lasSie', 'Zedicus']
animal_names.sort (key = lambda yourstring : yourstring.lower())
print(animal_names)
```

**Result**
```
['Buck', 'Fievel', 'lasSie', 'Zedicus']
```

## Making lambda less anonymous
They are supposed to be, but don't need to be :).

```
make_uppercase = lambda yourstring : yourstring.lower()

animal_names.sort(key=make_uppercase)
print (animal_names)
```

**Result**
```
['Buck', 'Fievel', 'lasSie', 'Zedicus']
```


## \ Codarren /

## Credits
[modified example from python all in one for dummies](https://marvito.store/product/python-all-in-one-for-dummies-for-dummies-computertech-ebook-8696893/?utm_source=Bing%20Shopping&utm_campaign=Marvito-BingShop-231020&utm_medium=cpc&utm_term=49421&msclkid=79c149fc97fc1c6cff7f29ce378efd0f)