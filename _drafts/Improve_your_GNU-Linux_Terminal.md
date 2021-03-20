---
published: false
---
## There's always a bigger fish

You can catch it.

But you need a bigger hook and a bigger net.


## Terminals
The dark screen that is so useful to us.

When you buy a GNU/Linux server from a webhost, it does not come with the same features as your desktop.

This should be the case, as most of the time we won't use all those features from a typical desktop environment.

## Let's go right to it !
### Aliases
Aliases are one of the most useful features of terminals.

They allow you to create your own commands based on your needs.

For example, one of the long commands that I type often is:
```
ls -lrth
```

This command allows me to see all files in a directory

- With the newer files at the bottom

- And the oldest files towards the top

I can abbreviate it to 'll' instead of typing 'ls -lrth' using alases.

```
#Open a bash terminal
#We check if we are really using bash
ps -p $$ 

#  PID TTY          TIME CMD
# 1960 pts/3    00:00:00 bash
# If we are the instructions below will work for you.

#We open the bash run commands file
vim ~/.bashrc

#We add the alias
alias ll='ls -lrth'

#Save and log back in
```

We can now use the alias on all our terminals.

But it is important to logout so that the bashrc file will be reloaded

Once logged back in, try to type ll in the terminal.

### Terminal colors
The primary advantage of having colored terminals is that it increases readability of text.

For example, on the new webserver that I am connecting right now, the files and folders are of the same color (gret).

And of course it becomes harder to differentiate files from folders.

So I will make folders green.



## Credits
[bashrc](https://superuser.com/questions/173165/what-does-the-rc-in-bashrc-etc-mean)

[shell check](https://www.cyberciti.biz/tips/how-do-i-find-out-what-shell-im-using.html)