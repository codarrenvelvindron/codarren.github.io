---
layout: post
title: 'Day 81: Upgrading Kali Linux'
published: true
---
## Kali Linux
![upgrading kali linux](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/Gns38.png)

This is an OS centered around security.

And weirdly enough, there are not too much information on doing stuff on it.

It's important to know that Kali is Debian-based.

Since it is debian-based, all/most debian commands and packages should work on it.


## Check current version
```
uname -a
```

***Output***
```
Linux 5.9.0-kali1-amd64 #1 SMP Debian 5.9.1-1kali2 (2020-10-29) x86_64 GNU/Linux
```

## Upgrade packages
```
sudo apt-get upgrade
```

### Not enough space in /var/cache/apt/archives/
In case you get this error like me, you do not need to repartition.

A simple fix would be creating a symbolic link to your larger partition.

- Create a new directory on your larger partition, in my case /home/

```
df -h
#/dev/mapper/ichmachine--vg-var   2.3G  1.1G  1.1G  50% /var
#/dev/sda1                        511M  140K  511M   1% /boot/efi
#/dev/mapper/ichmachine--vg-tmp   1.8G  5.8M  1.7G   1% /tmp
#/dev/mapper/ichmachine--vg-home   93G   16G   73G  18% /home

sudo mkdir -p /home/apt-cache
```

- Copy oroginal cache dir to the new dir
```
cp -rp /var/cache/apt /home/apt-cache/
```

- Remove the original directory **if** everything was copied successfully
```
rm -rf /var/cache/apt
```

- Create new symbolic lin to the new directory
```
ln -s /home/apt-cache/apt /var/cache/apt
```

- Retry the upgrade again. It will work now.

- After the upgrade is done, you can do a
```
sudo apt-get clean
```

## Upgrade kali to latest
```
sudo apt dist-upgrade
```

## Clean up unneeded packages
```
sudo apt autoremove
```

## Check new version
```
uname -a
```

***Output***
```
Linux 5.10.0-kali4-amd64 #1 SMP Debian 5.10.19-1kali1 (2021-03-03) x86_64 GNU/Linux

```

### Rolling back changes to cache
***Only if you got the same space issue as me***
```
sudo rm -i /var/cache/apt

sudo cp -rp /home/apt-cache/apt /var/cache

rm -rf /home/apt-cache
```
## \ Codarren /

## Credits
[featured image](https://i.stack.imgur.com/Gns38.png)
