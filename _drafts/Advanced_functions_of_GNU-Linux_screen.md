---
published: false
---
## Yesterday I introduced the screen command

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

I use this mode mainly for teaching people how to use linux.

This way, they can see my screen behind their own screen !

