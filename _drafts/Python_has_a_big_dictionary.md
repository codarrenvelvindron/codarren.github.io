---
published: false
---
## Python Dictionary
![python dictionary](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/python-logo.png)

We'll take another practical look at it today.

## Definition
A dictionary is a data store that stores data in key-value pairs.

A dictionary is ordered(as of python 3.7, earlier versions are unordered)

## Creating a dictionary
```
print ('0. Dictionaries are created using curly braces and are of class dict')
my_dict = {}
print (type(my_dict))
```

***Result***
```
0. Dictionaries are created using curly braces and are of type dict
<class 'dict'>
```
A dictionary is created by using curly braces,

Here we are creating an empty dictionary.

## Adding data
```
print ('1. Dictionaries are created by using key-value pairs, separated by commas')
my_dict = {'name' : 'Barry', 'hero' : 'flash', 'speciality' : 'speed'}
print (my_dict)
```

***Result***
```
1. Dictionaries are created by using key-value pairs, separated by commas
{'name': 'Barry', 'hero': 'flash', 'speciality': 'speed'}
```

## Adding more data?
```
print ('2. Would this work?')
my_dict['name'] = 'Clark'
my_dict['hero'] = 'Superman'
my_dict['speciality'] = ' strength'
print(my_dict)

```
No !

## Rethinking this
It's important to understand that dictionaries are made up of key value pairs.

And you can add as much data as you require.

The important thing is to figure out what piece of data should be the key.
```
print ('3. Rethinking the key first')
my_dict = {}
my_dict['Barry'] = {'fullname' : 'Barry Allen', 'hero' : 'The Flash', 'speciality' : 'Speed'}
print (my_dict)

```

## Really adding more data
```
my_dict = {}
my_dict['Barry'] = {'fullname' : 'Barry Allen', 'hero' : 'The Flash', 'speciality' : 'Speed'}
print (my_dict)

print ('4. Adding more data')
my_dict['Clark'] = {'fullname': 'Clark Kent', 'hero' : 'Superman', 'speciality' : 'Strength'}
print (my_dict)
```

## Getting the values from keys
```
print (my_dict['Barry'])
#OUTPUT--> {'fullname': 'Barry Allen', 'hero': 'The Flash', 'speciality': 'Speed'}

print (my_dict['Barry']['fullname'])
#OUTPUT--> Barry Allen

print (my_dict['Barry']['hero'])
#OUTPUT--> The Flash
```

## Conclusion
Dictionaries can be used to store a very large amount of temporary data.

Ideal for cases where we need some data put away and we only need it for immediate processing and we don't necessarily need to keep it to file.

Once you figure out the key that you want, the values and other sub-keys can be many !

## \ Codarren /

## Credits
[python dictionary techbeamers](https://www.techbeamers.com/python-dictionary/)

[w3school ref](https://www.w3schools.com/python/python_dictionaries.asp)

[w3school tuples](https://www.w3schools.com/python/python_tuples.asp)
