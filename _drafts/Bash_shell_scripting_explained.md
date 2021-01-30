---
published: false
---
## Shell scripting

I'd like to see more people doing shell scripting.

## Shell v/s Powershell
Unlike Powershell, GNU/Linux shell scripting is easily remembered.


I remember the first time I was checking out Powershell.

God forgive, the commands were so long and so senseless.


GNU/Linux shell scripting is very different from Powershell.

The syntax themselves are very simple.

And most importantly, we are reusing 'normal' system commands.

## Variables
Variables are simple to create.

1. Single quotes(') for strings that would normally not change and needs no interpretation.
    ```
    #Directory variable
    docs_directory='/usr/local/lib/docs'
	```
2. Double quotes would be used for strings that require interpretation and change dynamically.
	```
    document_file="$docs_directory/mydocument.txt"
    ```
Because we are using the previously set variable, we need to interprete(expand) document_file variable

```
#!/bin/bash

docs_directory='/usr/local/lib/docs'
document_file="$docs_directory/mydocument.txt"

echo "Document Directory: $docs_directory"
echo "Document File: $document_file"
```

![bash variables linux](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/result_b1.png)

## Commands
As you would run commands under GNU/Linux, the same principle applies for shell.

```
cat vars.sh
```

![bash vars commands](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/bash_variables_commands.png)

```
codax@gaming:~/docs/bash_scripting$ cat commands.sh 
#!/bin/bash

cat vars.sh
```

This is the simplest shell script you can make with a single command.

But you can add up as many commands as you would require.

## Arguments and functions
There are positional arguments that you can use while invoking a bash script.

This is handy for cases where you need to do a lot of quick testing.

The first argument would be $1, second is $2 and so on...

Functions on the other hand are simple to initialise
```
function func_name { }
```

Say we want to do a ping on a website.

By default a ping goes infinitely
```
codax@gaming:~/docs/bash_scripting$ ping google.com
PING google.com (216.58.223.110) 56(84) bytes of data.
64 bytes from mba01s08-in-f14.1e100.net (216.58.223.110): icmp_seq=1 ttl=118 time=43.7 ms
64 bytes from mba01s08-in-f14.1e100.net (216.58.223.110): icmp_seq=2 ttl=118 time=41.4 ms
64 bytes from mba01s08-in-f14.1e100.net (216.58.223.110): icmp_seq=3 ttl=118 time=42.8 ms
64 bytes from mba01s08-in-f14.1e100.net (216.58.223.110): icmp_seq=4 ttl=118 time=41.2 ms
64 bytes from mba01s08-in-f14.1e100.net (216.58.223.110): icmp_seq=5 ttl=118 time=42.3 ms
64 bytes from mba01s08-in-f14.1e100.net (216.58.223.110): icmp_seq=6 ttl=118 time=45.1 ms
64 bytes from mba01s08-in-f14.1e100.net (216.58.223.110): icmp_seq=7 ttl=118 time=42.6 ms

```

Let's restrict it to a count of 3
```
vim ping_checker.sh

#ping_checker.sh contents below
#!/bin/bash

#we first initialise the variable to signify our first argument
target_site=$1

#we then create our function
function pinger {
ping -c3 $target_site
}

#we then run the function
pinger
```

Launching the ping checker.
![ping checker bash arguments functions](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/ping_checker.png)

## Case study

Let's say we want to check not only the ping

But also return the average after 3 ping attempts.

All this without showing the details of each ping request.

We first make a copy of ping_checker
```
codax@gaming:~/docs/bash_scripting$ cp -p ping_checker.sh ping_checker_v2.sh
```

We modify the ping line to send the results to a text file
```

```
