---
published: false
---
## This is my 4th post about Data Dictionaries

I must admit, there is always more to data dictionaries in python.

## Since it's been useful to me
I need to share that with you!

## Wrong approach
This is the first way I tried to do it.

And it does work when you don't have too many key-value pairs.
```
for key in dictionary:
    if (key == 'myval'):
        #do stuff with it
```

## Correct approach
For larger data dictionaries, with multiple key value pairs, it's better to make use of:
the items method.

```
for k,v in dictionary.items():
    value1 = v['item1']
    if (value1 == 0):
        #do something
```

## Stuck
If you are stuck with a non-working loop that seems to return the same values multiple times.

It's probably your approach that is wrong.


## \Codarren/

## Credits
[python reference dictionaries](https://docs.python.org/3/tutorial/datastructures.html)