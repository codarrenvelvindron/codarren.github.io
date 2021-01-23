---
published: false
---
## How many CPU cores you cooking ?
![intel xeon](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/Intel-Xeon-Platinum-min_25.jpg)

This is one of the many questions that you may end up asking yourself.

Luckily for you, I'm here with all the answers for your questions.

Let's get into it
## CPU - lscpu
*Getting the number of CPU cores on your server/PC*
```
lscpu
```
![lscpu](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/lscpu.png)

Normally, on Redhat-based OSes, lscpu will only give you the number of cores you have.

But on Debian-based OSes, newer ones particularly.

It will give you much more information, but still it's a summary.


The neat information that lscpu gives in this case is the number of cores as well as the number of 
physical sockets.

It means that physically i have only one CPU on my motherboard (which is true).

The concept of sockets and cores is useful for virtual machines.

See, the number of cores per machine is calculated by:

**cores = cores per socket * sockets**

In my case:
**cores = 4 * 1 = 4**

### CPU - cat /proc/cpuinfo
*Unlike lscpu,which summarises all the information.*

*cpuinfo gives per core information*

```
cat /proc/cpuinfo
```
![cpuinfo](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/cpuinfo.png)

I mostly use lscpu due to the fact that it summarizes this information.

## Memory - lsmem
```
lsmem
```
![lsmem](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/lsmem.png)

Total online memory is the main information we're looking for here!

This means I have 16GB of RAM on this computer (not bad eh!)

## Memory - cat /proc/meminfo
```
cat /proc/meminfo
```
![meminfo](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/meminfo.png)

Here, MemTotal/MemFree/MemAvailable are of interest.

MemTotal - The total available RAM. 16GB that i have physically installed.

MemFree - The RAM that has been allocated and ready to use by the OS.

MemAvailable - The RAM that is not been allocated but ready to be allocated by the OS for use.

## PCI - lspci
```
lspci -m
```
lspci in machine-readable format.

![lspci](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/lspci.png)

If you are looking for specific detailed information, use the (-v) flag instead.

Lists all PCI devices/PCI modules of server.

Here, since most of my modules and devices are "ASUSTeK", we can definitely conclude that I'm using an ASUS motherboard.

My VGA is an nvidia not AMD, and so on.

## USB - lsusb
```
lsusb -t
```
![lsusb](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/lsusb.png)
The tree format gives us bandwidth information which might be useful.

Say we are physically connecting USB storage to our server, and we want to know the bandwidth available to that server.

We can see here, there are buses of :

480Mb/s which is USB 2.0 and

10000Mb/s, which corresponds to USB 3.1. 

USB 3.0 would be 4800Mb/s

## \Codarren/

## Credits
[wccftech - intel xeon](http://cdn.wccftech.com/wp-content/uploads/2017/05/Intel-Xeon-Platinum.jpg)
[wikipedia - usb](https://en.wikipedia.org/wiki/USB)