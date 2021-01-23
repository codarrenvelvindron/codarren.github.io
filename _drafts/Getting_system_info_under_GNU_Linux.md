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


### CPU - cat /proc/cpuinfo
*Unlike lscpu,which summarises all the information.*

*cpuinfo gives per core information*

```
cat /proc/cpuinfo
```
![cpuinfo](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/cpuinfo.png)

## \Codarren/

## Credits
[wccftech - intel xeon](http://cdn.wccftech.com/wp-content/uploads/2017/05/Intel-Xeon-Platinum.jpg)