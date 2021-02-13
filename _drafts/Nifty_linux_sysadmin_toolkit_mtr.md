---
published: false
---
## mtr
![mtr featured](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/mtr.png)

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
3   192.168.227.1  3.820ms  4.744ms  6.528ms --> This is telecom's private network
4   196.20.225.41  49.548ms  49.860ms  48.437ms --> Another router on telecom's network (MauritiusTelecom) located in Port louis
5   197.226.230.10  49.423ms  51.150ms  48.967ms --> Another telecom network equipement located in Floreal
6   105.16.28.8  219.160ms  271.845ms  270.754ms --> Corresponds to ce-4-0-2.pp-01-jnb.za.seacomnet.com, A CE is a Customer Edge router, on the MPLS network
7   196.60.8.198  52.949ms  48.447ms  48.808ms --> A CDN (NAPAfrica) from (you guessed it) Africa.
8   104.21.40.91  50.253ms  50.766ms  48.191m --> My blog served by CLOUDFLARENET
```
Good to know, traceroute uses the ICMP protocol, just like **ping**

We also see that it takes 8 hops to reach my blog.

The 3 numbers of ms are the RTT (round trip time), the time for a packet to get to a hop and back to the source(my computer)

## MTR the overlord
MTR can be used as simply as 
```
mtr host
```

OR as i like to use it
```
codax@gaming:~$ mtr -rc 10 blog.codarren.com
Start: 2021-02-13T17:11:53+0400
HOST: gaming                      Loss%   Snt   Last   Avg  Best  Wrst StDev
  1.|-- 192.168.101.100            0.0%    10    4.7   3.9   2.6   5.7   1.1
  2.|-- 192.168.100.1              0.0%    10    3.4   5.2   3.4   6.7   1.1
  3.|-- 192.168.227.1              0.0%    10    6.4   7.0   5.9  10.5   1.3
  4.|-- 196.20.225.41              0.0%    10   50.5  50.3  49.0  52.7   1.1
  5.|-- 197.226.230.10             0.0%    10   48.9  49.7  47.8  53.1   1.7
  6.|-- ce-4-0-2.pp-01-jnb.za.sea  0.0%    10  218.8 220.3 218.1 227.9   2.8
  7.|-- cloudflare.ixp.joburg      0.0%    10   51.5  60.6  51.5 126.0  23.0
  8.|-- 172.67.183.71              0.0%    10   49.5  49.9  48.8  51.8   1.1
```
In the way above, we are sending 10 packets and calculating the averages.

It also allows you to redirect the output to a text file
```
mtr -rc 10 blog.codarren.com > mtr_report_blog_codarren.txt
```

You immediately see that MTR already resolves the IPs to their domain equivalent, I was doing it manually with traceroute and [ipinfo](https://ipinfo.info/html/ip_checker.php)

## \ Codarren /

## Credits
[wiki page](https://en.wikipedia.org/wiki/MTR_%28software%29)

[tecmint mtr](https://www.tecmint.com/mtr-a-network-diagnostic-tool-for-linux/)

