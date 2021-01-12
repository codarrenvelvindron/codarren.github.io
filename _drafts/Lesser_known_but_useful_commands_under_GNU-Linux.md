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

