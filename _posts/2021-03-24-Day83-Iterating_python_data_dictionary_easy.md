---
layout: post
title: 'Day 83: Iterating python data dictionary easy'
published: true
---
## This is my 4th post about Data Dictionaries
![python data dictionary iterating](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/python-logo.png)

I must admit, there is always more to data dictionaries in python.

## Since it's been useful to me
I need to share that with you!

## Wrong approach
This is the first way I tried to do it.

And it does work when you don't have too many key-value pairs.
```
for key in dictionary:
    if (key == 'mykey'):
        #do stuff with the values
```

## Better approach
For larger data dictionaries, with multiple key value pairs, it's better to make use of:
the items method.

```
for k,v in dictionary.items():
    value1 = v['item1']
    if (value1 == 0):
        #do something
```

## Adding dictionary items from one dictionary to another
If you need to add only certain items that respect certain criterias from one dictionary to another.

Use the code below:
```
dict1 = {'name':'Birdy','age':'10'}
dict2 = {}

for k,v in dict1.items():
    if ('condition' in v):
        dict2[k] = v
print (dict2)
```
## Stuck
If you are stuck with a non-working loop that seems to return the same values multiple times.

It's probably your approach that is wrong.


## \ Codarren /

## Credits
[python reference dictionaries](https://docs.python.org/3/tutorial/datastructures.html)