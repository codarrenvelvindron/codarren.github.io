---
published: false
---
## Screen

GNU/Linux screen is used to keep your SSH sessions active.

But it's not the only tool out there.

We also have tmux.

## Here's why you should start using TMUX

### 1. Tmux has a wicked interface

![tmux linux screen](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/tmux_1.png)

Unlike screen which leaves a lot of guessing.

Most of you already most probably know the 'backspace' trick to know if you are in a normal session or a screen session

**tmux** shows a status screen at the bottom.

With date and time, so you don't have to type 'date' everytime to know the time.

Also, this signals that you are in a screen session as it's coloured at the bottom.


### 2. Tmux is good with screen resizing

Unlike screen which always had issues when you resize the window.

Tmux is resize friendly!


### 3. Tmux commands are almost similar
**Enter Shortcut mode**
Screen - CTRL + A

TMUX - CTRL + B

**Detach from session**
Screen - CTRL + A + d

TMUX - CTRL + B + d

**List all sessions**
screen --> screen -ls

TMUX --> tmux ls

### 4. Tmux commands are easier to remember?
**Attach to last screen**
tmux attach

**Attach to specific sessioname**
tmux attach -t sessionname

(Goes like tmux attach terminal sessionname)


### A lot more options..
But my time is limited.

So we'll leave this intro open for now.

Have a nice Sunday !

## \ Codarren /

## Credits

[tmux cheatsheet](https://tmuxcheatsheet.com/)