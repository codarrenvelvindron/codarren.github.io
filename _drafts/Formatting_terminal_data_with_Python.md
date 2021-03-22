---
published: false
---
## It's possible!

To print text in a python terminal at specific positions.

## Formatting
When we thing about formatting data in python, we think more about GUI interfaces, like tkinter.

But it is still possible to format stuff using python's blessing library.

## Blessings library
```
import blessings
from blessings import Terminal
```

## Example code
Here, I want to format text to appear at the top, in the middle and on the bottom.

```
from blessings import Terminal

term = Terminal()
print (term.clear())
with term.location(0, term.height - 1):
    print (term.yellow("here is the bottom"))
    print ("more bottom text")
    print ("BOT")

with term.location(0, 2 ):
    print (term.red("top "))
    print ("More top text")
    print ("TOP")

with term.location(0, term.height - 15):
    print (term.blue("middle text"))
    print ("More middle text")
    print ("MAIN Text")
```
- The term.height is a special variable for the height of the terminal.

- Minus one sends it at the bottom.

- Terminal text can take colors but they are limited

## Here's how it looks like
![python blessings](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/python_blessings.png)

## Codarren

## Credits
[python blessings library](https://pypi.org/project/blessings/)

[blessings on github](https://github.com/erikrose/blessings)