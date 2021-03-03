---
published: false
---
## We already introed about it

![multiprocessing python](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/multi-core-cpu.shutterstock_251423881.webp)

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

## Python Global Interpreter Lock(GIL)
The Python GIL is a mechanism used in CPython(The version of python written in C and python).

It synchronizes the execution of threads so that only one native thread can execute at a time, even if run on a multi-core processor.

This is the mechanism used in the python Threading module.

## Important stuff!
To have a working multiprocessing program, make sure that you are using the main guard.

```
if __name__ == '__main__':
    main()
```
The multiprocessing code must be placed in the main() method of your program.

## Let's do an example
```
from multiprocessing import Process
import multiprocessing as mp
import time

def nameprinter():
    print ('Starting to print names')
    print ('{}:{}'.format('Name','Johns'))
    print('Finished priniting names')

def main():
    print('{}:{}'.format('Number of cores detected',mp.cpu_count()))
    p = Process(target=nameprinter)
    p.start()
    p.join()

if __name__ == '__main__':
    print ('starting main')
    main()
    print('Main Finished')
```

**Result**
```
starting main
Number of cores detected:2
Starting to print names
Name:Johns
Finished printing names
Main Finished
```
Here, we are spawning only one process to the nameprinter method.

## We'll heat things up now
```
from multiprocessing import Process
import multiprocessing as mp
import time

def nameprinter(name,sleeptime):
    print ('Starting to print names')
    print ('{} {}'.format('Hello',name))
    time.sleep(sleeptime)
    print('Finished printing names')

def main():
    print('{}:{}'.format('Number of cores detected',mp.cpu_count()))
    p1 = Process(target=nameprinter, args=('Pong',3))
    p1.start()

    p2 = Process(target=nameprinter, args=('Pingu',2))
    p2.start()

    p3 = Process(target=nameprinter, args=('Pongo',1))
    p3.start()

    p1.join()
    p2.join()
    p3.join()
```

Here, we are spawning 3 processes with variable sleep times.

**Result**
```
Number of cores detected:2
Starting to print names
Hello Pong
Starting to print names
Hello Pongo
Starting to print names
Hello Pingu
Finished printing names
Finished printing names
Finished printing names
Finished main
```

**Takeaways**
We can see that even though Pingu has a sleep time of 2 seconds, Pongo got output first.

This shows clearly that these processes are running in parallel.

## Have fun going parallel !!!

## Credits
[featured multiprocessing image](https://venturebeat.com/wp-content/uploads/2016/02/multi-core-cpu.shutterstock_251423881.jpg?w=1000&strip=all)

[python docs multiprocessing](https://docs.python.org/3/library/multiprocessing.html)

[multiprocessing tutorial](https://zetcode.com/python/multiprocessing/)

[multiprocessing example](https://www.journaldev.com/15631/python-multiprocessing-example)

[things i wished they told me](https://www.cloudcity.io/blog/2019/02/27/things-i-wish-they-told-me-about-multiprocessing-in-python/)


