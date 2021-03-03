---
published: false
---
## We already introed about it

In case you [missed it](https://blog.codarren.com/Day61-Multiprocessing_in_Programming/).

## In python !
Python has multiple modules relating to parallel processing.

One is Threading, and is the most talked about.

Inherently, threading has limitations in python.

And I don't recommend using it (except if i'm doing it wrong maybe !)


The other is multiprocessing and the most useful.

## Getting the number of cores
Before starting up with multiprocessing.

You should know more about the current CPU you are using as they are directly related.

**GNU/Linux**
```
# Under a linux terminal, this will give you the total number of cores you can use.
lscpu

# Output
CPU(s):                          2
On-line CPU(s) list:             0,1
Thread(s) per core:              1
Core(s) per socket:              2
Socket(s):                       1
```
Here, I can see that I have 2 CPUs.

The on-line CPU list tells me again that i have 2 CPUs with ID: 0 and 1

And finally, 2 cores per socket but a single socket.

We retain that we have 2 CPUs !!

**Python**
```
from multiprocessing import Process
import multiprocessing as mp

print(mp.cpu_count())

# Output
2
```
Here is a trick that you will see many people use.

Here we are importing the multiprocessing module.

It's a long name.

Python supports renaming the import to a shorter one using the 'as' keyword.