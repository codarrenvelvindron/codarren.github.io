---
layout: post
title: 'Day 61: Multiprocessing in Programming'
published: true
---
## Multi Processing
![featured image](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/processors-smartphones.jpg)

Processing using several processors (or processes)

## What ?

The definition above explains it all while being straightforward.

## Why ?

Multiprocessing is used when we need to do multiple things at the same time.

See, like we're being taught in computer science at school, all programs have a 'program flow'.

It means, it follows a particular set of steps from start to finish.

Of course, we have moments of decision but there is always a start and finish.


Now, if we add a loop, it would seem that there is no finish.

And it may be true but that also is a sequence of events.

Although that sequence of events could go on forever (and hence be called an infinite loop).

## How ?
Multiprocessing uses concepts of CPUs.

**Threads** are virtual representations of CPU cores.

Consumer CPUs use different technologies that do the same thing: AMD (SMT) and INTEL(Hyperthreading)

**Cores** are the physical subparts of the CPU.

They function on their own as separate CPUs.

## Tip
Before you start coding, and introduce parallelism, make sure to check the physical CPUs present on your current build.

Some errors might be due to you not having enough cores.

We'll cover more about the practical part in the next python tutorial.

## \ Codarren /

## Credits
[Multithreading](https://www.tomshardware.com/reviews/cpu-computing-thread-definition,5765.html)

[Featured image](https://ronnie05.files.wordpress.com/2013/09/processors-smartphones.jpg)