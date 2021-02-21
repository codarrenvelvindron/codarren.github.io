---
published: false
---
## Lambda

In python, a lambda function relates to the concept of anonymous functions.

## Example

To understand how lambda functions work.

We'll be using the concept of a normal function.

```
#!/usr/bin/python3

def makeuppercase(yourstring):
    """ To convert string to all uppercase """
    return yourstring.lower()

animal_names = ['Fievel', 'Buck', 'Lassie', 'Zedicus']
animal_names.sort(key=makeuppercase)
```