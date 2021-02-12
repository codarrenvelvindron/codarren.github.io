---
layout: post
title: 'Day 43: top command explained GNU-Linux'
published: true
---
## top
![top linux](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/top_snap.png)

Where does that come from?

## Usage
The top command is one of the most complete all in one command to show the system's vitals.

The command is launched by typing simply top in a terminal.
```
top
```
## Line by line
```
top - 19:39:03 up  8:41,  1 user,  load average: 0.72, 0.65, 0.39
```
First line of top displays uptime
Number of users logged on
Average load : 

```
Load average 1 minute: 0.72
load average 5 minute: 0.65
load average 15 minutes: 0.39
```
Since most computers have multiple cores, the average load will reflect the load on all these cores.

On a **single core system**, the CPU load should not exceed 1.
```
1 equates to 100% CPU overload.
0.4 equates to 40% CPU overload, meaning 60% of the time,CPU was idle.
1.5 equates to 150% CPU overload.
```
On a **multiple core system**, with say 4 cores, the CPU load should not exceed 4.
```
4 equates to 100% CPU overload on all 4 cores.
<4 means not all CPUs are used to their maximum capacity.
8 could mean that CPUs are overloaded by 200% assuming fair distribution 
```
**Tip**: typing 1 on your keyboard while top is running will show you the load on each CPU.
```
top - 19:51:36 up  8:53,  1 user,  load average: 0.56, 0.34, 0.30
Tasks: 342 total,   1 running, 283 sleeping,   0 stopped,   0 zombie
%Cpu0  :  2.3 us,  1.9 sy,  0.0 ni, 93.5 id,  0.3 wa,  0.0 hi,  1.9 si,  0.0 st
%Cpu1  :  4.8 us,  3.9 sy,  0.0 ni, 90.6 id,  0.3 wa,  0.0 hi,  0.3 si,  0.0 st
%Cpu2  :  2.7 us,  3.3 sy,  0.0 ni, 93.7 id,  0.0 wa,  0.0 hi,  0.3 si,  0.0 st
%Cpu3  :  3.9 us,  1.6 sy,  0.0 ni, 94.1 id,  0.0 wa,  0.0 hi,  0.3 si,  0.0 st
```

Taking one line at a time.

us = user --> CPU time in USER space

sy = system --> CPU time in KERNEL space

ni = nice--> user NICE CPU time.

id= idle --> CPU idle time

wa = waiting --> waiting for IO (disk)

hi = hardware irq = CPU time on handling hardware interrupt.


In our case, we can see that here is very little waiting for IO, mostly because i'm using M2 as my primary storage.

NICE --> Is a concept of prioritizing some processes.

To apply priorities for existing processes, we use renice.

```
20683 codax     20   0 4026204 306536 101188 S   9.6  1.9   1:59.29 gnome-shell                      

#Increasing gnome-shell to highest priority (-20)
renice -n -20 -p 20683

20683 codax      0 -20 4026204 306524 101188 S   2.0  1.9   2:06.38 gnome-shell                      

#Decreasing gnome-shell to lowest priority (19)
codax@gaming:~$ sudo renice -n 19 -p 20683
20683 (process ID) old priority 0, new priority 19

```
For new processes we can use nice command directly.
```
#launching nice on a local script
codax@gaming:~$ sudo nice -n -20 ./sleeper.sh
```

## RAM
```
KiB Mem : 16309840 total,  8068056 free,  4480668 used,  3761116 buff/cache
KiB Swap:   999420 total,   999420 free,        0 used. 11128768 avail Mem
```
KiB Mem is the current RAM usage.

16GB available
8GB is free
4.4GB used.

KiB Swap pertains to swap memory.


## Swap Memory
Swap memory is a concept that is no longer relevant nowadays.

Swap was simply a portion of hard drive space that was reserved to be used as memory in case RAM got saturated.

Though hard drives were slower than RAM, it still could perform.

See, in ancient times (back in 1995) , memory used to be extremely expensive and limited.

My PC used to have 8MB of RAM.

32MB of RAM used to be a luxury.

Today, PCs have 32GB of RAM. This is 1024x more than the best of 26 years ago.

Hope you enjoyed, this little tutorial.

Have a great weekend !

## \ Codarren /

## Credits
[stackoverflow top command](https://unix.stackexchange.com/questions/18918/linux-top-command-what-are-us-sy-ni-id-wa-hi-si-and-st-for-cpu-usage)

