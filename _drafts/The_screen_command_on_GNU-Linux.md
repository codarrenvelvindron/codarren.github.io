---
published: false
---
## The screen command
![linux penguin](https://raw.githubusercontent.com/codarrenvelvindron/codarrenvelvindron.github.io/master/images/154px-Tux-simple.svg.png)

This command might be the most underrated linux commands of all time.

## Purpose
The screen command's primary and most widespread purpose is to keep an SSH session alive.

## SSH
When you get logged out from a server, following a disconnection by timeout or any other disconnections.

Then, your SSH session would get automatically lost ,along with anything you could have launched on the server during your session.

## screen
Now, if you were in an SSH session and ran screen, you would still be able to reconnect to your session, should you be disconnected.

## Installation

The package can be installed under Ubuntu/Debian using the following command:
```
sudo apt-get install screen
```

## Create session
1. SSH to a server, or just open a terminal.

2. Create your screen session
```
    screen -S top
    #in this case, i am creating a screen with session name 'top'
```

## Run a command, any command
The command should be preferably interactive

```
top
```
Now close the terminal window, simulating an SSH disconnect

## Resume session
Open a new terminal window and resume the session
```
screen -r top
```

Yes the SSH session resumes where you left off and your command(s) appear like you never disconnected!

## Listing screen sessions
```
codax@gaming:~$ screen -ls
There is a screen on:
	5503.top	(19/01/21 21:49:13)	(Detached)
1 Socket in /run/screen/S-codax.
```
There you are ! Your top session appears in the list.

## \Codarren/