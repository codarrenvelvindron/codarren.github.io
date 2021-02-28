---
published: false
---
## Deep in

This past few weeks, I have been on a python marathon.

Not really. But it does feel like it.

## Python Class
[My last article about classes](https://blog.codarren.com/Day53-Objects_with_class_in_Python/) was a deep dive into the subject with sample code and stuff.

But in this one is more about what I learnt actually applying classes to real coding.

## Basic
A class is a large series of functions relating to a particular object.

These functions are called methods of the class.

## Starting up
```
#It all starts with a class, with a capitalized first letter
class Classname:
```

## Global variables for the class
```python
#The class may or may not contain global variables available to all methods
#But this is highly recommended

class Classname:
__varX = ''
__varZ = ''
__varY = ''

#Here i am using double underscores to differentiate those global variables
#from local variables (inside functions
```
The general idea for global variables are the things that will be used in more than one function.

## The init method for the class
```python
#The init method is the function bound to the class itself.
#It contains the variables that will be used inside the class.
class Classname:
__varX = ''
__varZ = ''
__varY = ''

    def __init__(self, username, value1, value2):
      self.username = username
      self.value1 = value1
      self.value2 = value2
```

The init method for the class may be thought of as a special method.

Its purpose is to allow user variables to be used in the class.

Above, we get the values of these 'user' variables to the actual variables of the method itself, so we can use them!

**Takeaways**

Even though the init method does have 4 arguments, the self does not count.

You just provide it with 3 parameters.

## The other methods
```python

class Classname:
__varX = ''
__varZ = ''
__varY = ''

    def __init__(self, username, value1, value2): #my init function
    	""" This init function takes as parameter username and the 2 required values """
        self.username = username
        self.value1 = value1
        self.value2 = value2
      
    def __activate_user(self): #Activate user in dashboard
        """ Activate user for all user activations """
        self.__varX = '{}{}'.format('my super var', varX)
```
The purpose of the other methods are to change/return values based on inputs.

The other methods must be straightforward.

**Takeaways**: 

A nice trick is to just put the methodname and write 'pass' in the method body.

That methodname must be descriptive enough to define what that function is for.

To go quicker, write all the methodnames and what they will do, this will help you later with what you want to do.