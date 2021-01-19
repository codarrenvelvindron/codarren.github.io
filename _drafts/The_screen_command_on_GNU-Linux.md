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
    screen -S top
    #in this case, i am creating a screen with session name 'top'
