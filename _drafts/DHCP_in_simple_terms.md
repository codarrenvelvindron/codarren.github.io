---
published: false
---
## DHCP - Dynamic Host Control Protocol

By the name itself:

**D**ynamic - Changing

**H**ost - Device

**C**ontrol - Rule over

**P**rotocol - A set of rules

It's a set of rules to control changing devices ?


## My one line explanation

DHCP is a protocol that assigns IP addresses to devices on a network.

## What's a device ?
A device could be anything, your smartphone, a printer or even a network card.

## What's an IP address ?
Wikipedia.org definition ~ An Internet Protocol address (IP address) is a numerical label assigned to each device connected to a computer network that uses the Internet Protocol for communication. 


That definition is so simple and accurate that we don't need to add anything.

If your device wants to communicate on the network, it needs an IP address.

That includes, your **smartphone**, **printer** and **network card** ?

## What do these 3 have in common ?

Your **smartphone** has a wifi chip, which allows for wireless communication.

Recent **printers** also support wifi, and older printers have USB, and used to be connected to a PC which ultimately is connected to the network.

**Network cards**, allow for wired communication through a physical cable.

All of them have a network interface and are thus able to connect on a network.


## DHCP handles all of them the same way

![DHCP simple diagram](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/DHCP_IP.png)

As per the diagram, a device connects to the network.

The network acts as the medium for the IP request on behalf of the device.

Once the device is leased an IP address, communication with the network and other devices on the network can happen.

## Important DNS terms

*lease* : IP addresses are not given indefinitely by the DHCP server.

After some time, typically 24 hours, the IP address expires and the device is required to renew it's lease.

This is a setting that can be changed on DHCP server side.

