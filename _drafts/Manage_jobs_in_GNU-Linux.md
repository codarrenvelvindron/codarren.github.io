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

### More jobs !!! Moar
```
codax@gaming:~/Projects/tests$ cat job1.sh 
#!/bin/bash
sleep 150
codax@gaming:~/Projects/tests$ cat job2.sh 
#!/bin/bash
sleep 500
codax@gaming:~/Projects/tests$ cat job3.sh 
#!/bin/bash
sleep 1000
codax@gaming:~/Projects/tests$ cat job4.sh 
#!/bin/bash
sleep 1500
```
I created 4 job scripts with increasing sleep time, i.e.execution time.

### Let's execute all of them
```
codax@gaming:~/Projects/tests$ ./job1.sh &
[1] 7865
codax@gaming:~/Projects/tests$ ./job2.sh &
[2] 7872
codax@gaming:~/Projects/tests$ ./job3.sh &
[3] 7893
codax@gaming:~/Projects/tests$ ./job4.sh &
[4] 7898
codax@gaming:~/Projects/tests$ 
```
The & means background execution.
Notice that they have a job id (1,2,3,4) and the 4-digit number is a PID.

### the jobs command
```
codax@gaming:~/Projects/tests$ jobs
[1]   Running                 ./job1.sh &
[2]   Running                 ./job2.sh &
[3]-  Running                 ./job3.sh &
[4]+  Running                 ./job4.sh &
```
Using this command, I am able to see their running status

### job1 done
```
codax@gaming:~/Projects/tests$ jobs
[1]   Done                    ./job1.sh
[2]   Running                 ./job2.sh &
[3]-  Running                 ./job3.sh &
[4]+  Running                 ./job4.sh &
```

After some time, it's marked done.
## Credits
[Featured image from pngwing](https://www.pngwing.com/en/search?q=human+Multitasking)