---
published: false
---
## What is a lesser known command?

Commands that are not talked about too much.

## yes
Say we were to install the vim package under Ubuntu/Debian

We'd normally use:
```
sudo apt-get install vim
```

Now, if we don't want any confirmation, we'll include a 'yes' in the command:
```
sudo apt-get install vim -y
```


Now, say we have apt-get install didn't have argument -y.

Then we could use the following with the same result:
```
yes | sudo apt-get install vim
```

The yes command automatically says yes at the prompt !

You could integrate this into your scripts too, when there is a need to force a yes or 'y'


## false and true

The false command always returns false (value 1)

The true command always returns true (value 0)

If you want to evaluate a condition and return a 0, you could use:
```
return true
#instead of return 0
```

## shuf
The shuf's command usage is to shuffle an output.

This could be of some use if you were to shuffle a music playlist in your command line music player!

```
codax@gaming:~$ ls -lrth | head -n5
total 72K
-rw-r--r--  1 codax codax 8.8K sep 11 07:44 examples.desktop
drwxr-xr-x  2 codax codax 4.0K sep 11 08:22 Videos
drwxr-xr-x  2 codax codax 4.0K sep 11 08:22 Templates
drwxr-xr-x  2 codax codax 4.0K sep 11 08:22 Public

codax@gaming:~$ ls -lrth | head -n5 | shuf
drwxr-xr-x  2 codax codax 4.0K sep 11 08:22 Videos
drwxr-xr-x  2 codax codax 4.0K sep 11 08:22 Templates
-rw-r--r--  1 codax codax 8.8K sep 11 07:44 examples.desktop
drwxr-xr-x  2 codax codax 4.0K sep 11 08:22 Public
total 72K
```

## tac
tac is the reverse of the cat command.

i.e. it reads the file in reverse starting by the last line.

```
codax@gaming:~$ echo -e "a\nb\nc\nd" > sampfile.txt
codax@gaming:~$ cat sampfile.txt 
a
b
c
d
codax@gaming:~$ tac sampfile.txt 
d
c
b
a
```

## rev
The rev command is yet another reversal command.

But it's more useful when dealing with single line as opposed to tac for whole files.

The rev command comes in handy when you need the last item of a given line.

```
#Say we want to get f
codax@gaming:~$ echo "a b c d e f" | cut -d" " -f6
f

#Instead of counting the number of columns, we can make use of the fact that f is last.
codax@gaming:~$ echo "a b c d e f" | rev | cut -d" " -f1 | rev
f
```
rev is particularly useful when you just want the last item of a text or n-1 item


## I'll keep them coming
As and when I encounter them.

## Credits
[Tux featured image](https://upload.wikimedia.org/wikipedia/commons/thumb/2/2b/Tux-simple.svg/154px-Tux-simple.svg.png)

## \Codarren/