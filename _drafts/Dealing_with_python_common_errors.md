---
published: false
---
## Errors

Errors can be very time-consuming to resolve, if you can't interprete them.

## Coding mistakes
Let's be honest here.

We all make mistakes.

Particularly when we are coding.

I was always amazed by people who type in code and it just works.

## How do they do it ?
This was a question that bugged me.

And the answer is...

Well some people are just gifted !

They have very logical minds, that come in line with what programming languages are.

But, you can do it too with some hard work.

## Let's do this !

### KeyError
Remember that dictionaries are made up of key-value pairs ?

A KeyError means that one of the keys that we are trying to use/modify/delete in a dictionary has some issue.

It may be that it doesn't exist or something similar.

***Handling KeyErrors***
The way to deal with them are by catching those errors when they occur and doing something to them.

We need to put that piece of code where we got an error in a try-except block
```
try:
    key1 = diction[1]
    #do this do that with that key
except KeyError
    #the key has some issues, it may be inexistant or something
    #we can either output an error, or do something particular 
    #like creating the key if it does not exist
    #or we could just pass it using the pass keyword to just do nothing about this error
    #logic being we just need it to be handled and go to the next key (if we're in a loop)
    pass
```

### UnboundLocalError: local variable referenced before assignment
Let me translate that error for you.

A variable was referenced before assignment.

This simply means that we are calling a variable, before actually assigning it some value.

***Handling referenced before assignment errors***
The resolution is easy in this case, we need to initialize this variable to an empty variable.

And this must be done at the start of the code block

```
#in the case of an int we initialize it to 0
b = 0
#in the case of a string, we initialize it to empty string
c = ''
```

## Have fun error handling !

## \ Codarren /