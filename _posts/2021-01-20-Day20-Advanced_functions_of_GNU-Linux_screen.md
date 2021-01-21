---
layout: post
title: 'Day 20: Advanced functions of GNU-Linux screen'
published: true
---
## Yesterday I introduced the screen command
![screenonly](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/screen_only.png)

[Click here if you want to read the intro](https://blog.codarren.com/Day19-The_screen_command_on_GNU-Linux/)

Today, we explore advanced functions.

## Multi-Display mode
Screen is much more than a session keeper.

We can eye a screen session via the multi-display command

We are doing this test on a single PC, but SSH to a remote server will give the same result.
```
#1. Open a terminal window
#2. Create a new screen
screen -S newone
#3. Open another terminal window
#4. Attach to the same screen by running this command on the 2nd window
screen -x newone
```
![multi-displayscreen](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/multi_display_screen.png)

**Result**: Everything I type on Screen1 is immediately visible on screen 2!

I use this mode mainly for teaching people how to use linux.

This way, they can see my screen behind their own screen !


But there can be many other uses for this.
e.g. Commands that must be typed in and checked by multiple admins (critical commands)

## Detach
This is the basic way of using gnu screen.

But a lot of people don't know how to use this.

So I thought i'd explain:

```
#You want to detach from inside a screen session
#We use the Ctrl key + a for action
Ctrl + a
#Once we are in this action mode
#We can detach by typing in 'd'
d
#We are detached from the screen session
```
![screen detach](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/detach_from_screen.png)

## Reattach
Another useful command is the screen reattach
```
#After being detached
#We attach to the screen
screen -r newone
```

## Reattach to an already attached screen
If someone else is attached to the screen, and you want to detach him.

Or if that someone was you.

We use the below command.

```
screen -Dr newone
```
The other user will get a "remote detached from session" as a prompt.

If using the same computer to test, the terminal window will simply be closed.

An easy way to remember this command is to think "Screen **D**octo**r**"

## Have fun using screen

## \Codarren/
