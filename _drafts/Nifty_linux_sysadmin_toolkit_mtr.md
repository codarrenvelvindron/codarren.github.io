---
published: false
---
## mtr

mtr is an alternative to GNU/Linux traceroute.

The thing that sets it apart from the normal traceroute is that it is an interactive version of traceroute (it keeps updating its values)

## A little background
See, before I start blablering about how great mtr is, i'd like to explain what traceroute is.

And to explain that we'll use an example:

**Target**: blog.codarren.com

## Let's ping my blog
```
codax@gaming:~$ ping blog.codarren.com
PING blog.codarren.com (104.21.40.91) 56(84) bytes of data.
64 bytes from 104.21.40.91 (104.21.40.91): icmp_seq=1 ttl=57 time=48.9 ms
64 bytes from 104.21.40.91 (104.21.40.91): icmp_seq=2 ttl=57 time=49.7 ms
```
Here we get 49 ms as ping on average.

## traceroute my blog
```
codax@gaming:~$ traceroute blog.codarren.com
traceroute to blog.codarren.com (104.21.40.91), 64 hops max
  1   192.168.101.100  1.581ms  1.537ms  1.518ms 
  2   192.168.100.1  3.790ms  2.308ms  1.649ms 
  3   192.168.227.1  3.820ms  4.744ms  6.528ms 
  4   196.20.225.41  49.548ms  49.860ms  48.437ms 
  5   197.226.230.10  49.423ms  51.150ms  48.967ms 
  6   105.16.28.8  219.160ms  271.845ms  270.754ms 
  7   196.60.8.198  52.949ms  48.447ms  48.808ms 
  8   104.21.40.91  50.253ms  50.766ms  48.191ms
```
Now on tracering the route that the network packets are doing, we see multiple network routes.
```
1   192.168.101.100  1.581ms  1.537ms  1.518ms --> This is my router
2   192.168.100.1  3.790ms  2.308ms  1.649ms  --> This is telecom's network fibre GPON
3   192.168.227.1  3.820ms  4.744ms  6.528ms
```