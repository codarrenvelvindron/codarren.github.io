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
The done task will disappear on the next jobs command launch.

### + sign
The plus sign tells us that this job will be the default command to go to foreground if 
i were to use the foreground command.

### - sign
The minus sign tells us this job will be the default to go to foreground.

Only after the first one (+) finishes.

Just telling us this one is next.

### fg and bg
The fg (foreground) and bg (background) commands go hand in hand.
![fgandbg](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/fg_and_bg.png)

1. We can switch to the + task using the fg command

2. Then suspend its execution using CTRL + Z

3. Then send it back to background execution using the bg command

### foreground specific task
```
codax@gaming:~/Projects/tests$ jobs -r
[4]-  Running                 ./job4.sh &
[5]+  Running                 ./job3.sh &
codax@gaming:~/Projects/tests$ fg 4
./job4.sh
```
If we want to foreground a specific task, we use the job id.

In this case, we wanted to switch to job 4.

### Background specific task
```
codax@gaming:~/Projects/tests$ fg 4
./job4.sh
^Z
[4]+  Stopped                 ./job4.sh
codax@gaming:~/Projects/tests$ bg 4
[4]+ ./job4.sh &
```
Same for bg

## Real world usage
I use this a lot when there is a need to run multiple database queries.

Particularly those that I am outputting to some file.

But this could also be used for scripts that you want to run in background.

/!\ Once you close your terminal session, the current running jobs will be exited /!\

## Credits
[Featured image from pngwing](https://www.pngwing.com/en/search?q=human+Multitasking)