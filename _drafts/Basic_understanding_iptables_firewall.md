---
published: false
---
## iptables

This is a guide on the terms used in iptables.

I believe the major obstacle to using iptables is the lack of understanding of the terms.


## Listing rules

```
codax@gaming:~$ sudo iptables -L
[sudo] password for codax: 
Chain INPUT (policy ACCEPT)
target     prot opt source               destination         

Chain FORWARD (policy ACCEPT)
target     prot opt source               destination         

Chain OUTPUT (policy ACCEPT)
target     prot opt source               destination
```
Listing rules is the most basic command to seeing the rules that are actually defined on iptables.

This is the first argument that you will be using most of the time.

## Chain

As we see above, when we list rules, there are 3 chains that can be seen.

The INPUT, FORWARD and OUTPUT chains.

First of all, we'll refer to the machine running iptables as the HOST.

### Chains - INPUT
The INPUT chain, relates to all packets that are received by the HOST.

Let's say we do not wish to allow other hosts to send a ping request to my HOST

```
#e.g.
#For simplicity, we want to block IP 192.168.1.188 from sending requests to my HOST
iptables -I INPUT -s 192.168.1.188 -p icmp -j DROP
```


**Why do we make use of the INPUT chain ?**

Because it refers to all packets that are send to my HOST OR all packets that are received by my HOST.

Let's translate the command above in English.

iptables **I**nsert a new rule to the **INPUT** chain; taking as **s**ource the IP 192.168.1.188; and **p**rotocol **icmp**; 


## Credits
[iptables questions](https://unix.stackexchange.com/questions/96548/what-is-the-difference-between-output-and-forward-chains-in-iptables)

