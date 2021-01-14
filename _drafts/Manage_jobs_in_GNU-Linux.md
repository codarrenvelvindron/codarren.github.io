---
published: false
---
## Multitasking. A frivolous concept.
![featured](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/pngwing.com.png)
Companies are looking for people who can multitask.

### Do you realise what it means?
Multitasking is the concurrent execution of multiple tasks.

### Is it possible for a human ?
No, it looks cool on the CV.

But at any time T, you are always doing 1 (one) task at a time.

That's not multitasking sorry.

We are only task switching.


## In the world of servers
Here, there is a real need to do several tasks.

### Here's a script
```
codax@gaming:~/Projects/tests$ cat job1.sh 
#!/bin/bash
sleep 150
```
It does a simple thing, it sleeps for 150 seconds.

If we launch it it will last for at least 150 seconds.

Which is what we want to demonstrate execution.

### This is a foreground execution
![FG execution](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/fg_execution.png)

Now we know that while this script is running, for 150 seconds this terminal cannot be used.

Except if we were to send a SIGINT (Ctrl + C) or a SIGSTOP (CTRL + Z).
## Credits
[Featured image from pngwing](https://www.pngwing.com/en/search?q=human+Multitasking)