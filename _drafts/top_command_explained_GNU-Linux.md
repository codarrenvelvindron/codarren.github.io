---
published: false
---
## top

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

us = used --> CPU usage

sy = system --> System usage

ni = nice

id= idle

wa = waiting

hi= 


## Credits
[stackoverflow top command](https://unix.stackexchange.com/questions/18918/linux-top-command-what-are-us-sy-ni-id-wa-hi-si-and-st-for-cpu-usage)

