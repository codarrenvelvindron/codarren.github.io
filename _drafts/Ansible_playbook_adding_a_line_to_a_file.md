---
published: false
---
## Ansible

![ansible logo](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/Ansible_logo.svg.png)

Ansible, the name of resounding legend.

## Problem ?
There are many use cases like this where you would need to add a line to a file.

It could be as simple as adding a new host in the /etc/hosts of multiple servers to allow for DNS resolution using a particular IP.

It could also be about whitelisting an IP address (adding it to the whitelisting plain text file).

## Adding a line to /etc/hosts
In this scenario, we want to add a line to the /etc/hosts file

## Skip this part if you know the use of /etc/hosts
The /etc/hosts file is a plaintext-file on standard GNU/Linux OS.

Its purpose is to allow for DNS resolution of the host.

It has priority over DNS servers.

```
codax@gaming:~$ ping www.google.com
PING www.google.com (216.58.223.100) 56(84) bytes of data.
64 bytes from mba01s08-in-f4.1e100.net (216.58.223.100): icmp_seq=1 ttl=117 time=44.5 ms
```
Now, as we see, google is resolving with IP address 216.58.223.100

Say, I'm living in france and I want to resolve it to google.fr.

1. First I need to check the IP of google.fr
    ```
    codax@gaming:~$ ping www.google.fr
    PING www.google.fr (216.58.223.99) 56(84) bytes of data.
    64 bytes from mba01s08-in-f3.1e100.net (216.58.223.99): icmp_seq=1 ttl=117 time=42.2 ms
    ```
2. I would add the following line in /etc/hosts in the format: IP[Space or tab]FQDN
    ```
    codax@gaming:~$ vim /etc/hosts
    codax@gaming:~$ tail -n3 /etc/hosts
    ff02::2 ip6-allrouters
    216.58.223.99 www.google.com
    ```
    What i'm doing is forcing google.com to resolve to google.fr
3. 


## Credits
[Ansible logo](https://upload.wikimedia.org/wikipedia/commons/thumb/2/24/Ansible_logo.svg/256px-Ansible_logo.svg.png)

## \Codarren/