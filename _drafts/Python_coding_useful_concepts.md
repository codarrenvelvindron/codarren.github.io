---
published: false
---
## Python

Today, I'm onto Python.

## Rusty
I just got back to python programming.

And I thought I was rusty.

But, the beauty of Python lies in its simple syntax.

Didn't feel rusty at all !

## Looping a count
Here, our goal is to create a count in a particular range.

```
for x in range (1,10):
    print (x)
print ("Finished looping count")
```

**Result**
![looping count python](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/looping_count.png)

**Thoughts**
If you wanted to loop to the upper limit of 10 including 10 itself, you need to specify the upper limit as 11.

This is useful in cases where we need to automate number generation.

## Looping a string
Here, we take a string of characters and we loop through it.
```
for x in "ELEPHANT":
    print (x)
print ("Finished looping string")
```

**Result**
![loop string python](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/looping_string.png)

**Thoughts**
Useful when doing analysis on components of a long string.

## Lists and loops
A list is made up of several objects quoted and separated by commas enclosed in square brackets.

```
ninja_turtles = ["Raphael", "Donatello", "Michaelangelo", "Leonardo"]
for turtles in ninja_turtles:
    print (turtles)
print ("and of course Master Splinter!")
```

**Result**
![list loops python](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/list_loops.png)

**Thoughts**
This is more useful than the previous concept, as lists can contain whole words.

## Halting loops
```
possibilities= ["A", "B", "C", "D", "", "E"]
for possibility in possibilities:
    if possibility == "":
        print ("Not good")
        break
    print(possibility)
print("Loop finished")
```

**Result**
![halt loop python](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/halting_loops.png)

**Thoughts**
This stops the loops when the particular item is found.

However, we notice here that the last item is not being read.

We'll do this in the next example.

