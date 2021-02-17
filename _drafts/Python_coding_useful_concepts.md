---
published: false
---
## Python

Today, I'm onto Python.

## Rusty
I just got back to python programming.

And I thought I was rusty.

But, the beauty of Python lies in its simplicity.

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

## Halting/breaking loops
Here we are interrupting the loop with the 'break' keyword.
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

## Continue loops
```
possibilities= ["A", "B", "C", "D", "", "E"]
for possibility in possibilities:
    if possibility == "":
        print ("Not good")
        continue
    print(possibility)
print("Loop finished")
```

**Result**
![halt loop python](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/continue_loops.png)

**Thoughts**

This continues looping the list, even when that certain empty item is found.

The difference between this one and the above is that we replaced the 'break' with the 'continue' keyword.

## Accessing items in list
Items in lists are accessed by referencing them by number starting with 0.
```
possibilities= ["A", "B", "C", "D", "", "E"]
#if i want to reference C, i'll use 2, as we start with 0,1,2
print (possibilities[2])
```

**Result**
![access items in list](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/acceess_item_list.png)

**Thoughts**

Referencing items by item number is easy when the list is short.

But when the list is long, we need to use a different technique.

## Checking if item in list
To see whether an item is found in the list.

We'll use boolean concepts.

```
languages = ["C", "C++", "Python", "Javascript", "Golang"]

has_python = "Python" in languages
print(has_python)

has_java = "Java" in languages
print(has_java)
```

**Result**
![checking item in list python](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/checking_item_list.png)

**Thoughts**

Here, we get True returned if an item is found in the list and False if not found.

This is very useful as we can use the boolean result for something else.

## Adding item in list
We'll build on the previous to add a non-existing language to the list
```
languages = ["C", "C++", "Python", "Javascript", "Golang"]

has_python = "Python" in languages
print(has_python)

has_java = "Java" in languages
print(has_java)
#if (has_java) == "False": --> won't work
if (has_java) == False:
    languages.append("Java")
print (languages)
```

**Result**
![append item list python](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/append_item_list.png)

**Thoughts**

Here, notice that quoting the "False" keywork won't work as the type is not the same. We're dealing with booleans here.

```
>>> type(False)
<class 'bool'>
>>> type("False")
<class 'str'>
```

## Removing item in list
Remove an existing language to the list.
```
languages = ["C", "C++", "Python", "Javascript", "Golang"]

has_python = "Python" in languages
print(has_python)

has_java = "Java" in languages
print(has_java)
#if (has_java) == "False": --> won't work
if (has_java) == False:
    languages.append("Java")
print (languages)

#remove language C++
languages.remove("C++")
print (languages)
```

**Result**
![remove item list python](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/remove_item_list.png)

**Thoughts**

When an item is removed, we can specify it directly using its (string) name.

## \ Codarren /
