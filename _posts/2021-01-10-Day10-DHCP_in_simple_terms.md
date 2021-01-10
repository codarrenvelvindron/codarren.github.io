---
layout: post
title: 'Day 10: DHCP in simple terms'
published: true
---
## DHCP - Dynamic Host Control Protocol

By the name itself:

**D**ynamic - Changing

**H**ost - Device

**C**ontrol - Rule over

**P**rotocol - A set of rules

It's a set of rules to control changing devices ?


## A one line simple definition

DHCP is a protocol whereby a DHCP server assigns IP addresses to devices on a network.

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


## DHCP handling devices

![DHCP simple diagram](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/DHCP_IP.png)

As per the diagram, a device connects to the network.

The network acts as the medium for the IP request on behalf of the device.

Once the device is leased an IP address, communication with the network and other devices on the network can happen.

## Important DNS terms

**lease** : IP addresses are not given indefinitely by the DHCP server.

After some time, typically 24 hours, the lease expires and the device is required to renew it's lease.

This is a setting that can be changed on DHCP server side.

**MAC(Media Access Control)** address: The MAC address is the unique identifier to a device.

Unlike an IP address, it normally doesn't change. e.g. b8:9a:2a:1a:d5:92

In the event MAC addresses are changed, they are modified only at software level, they cannot be changed at hardware level. 

See [MAC spoofing](https://en.wikipedia.org/wiki/MAC_spoofing)

**Dynamic IP** : In the strict sense, DHCP servers assign IP address dynamically. This means that 

a device will not get the same IP address twice, that is the very definition of DHCP.

It still could by RNG magic ?

**Static IP** : You can force a DHCP server to assign IP addresses statically by making use of the MAC address.

Using the MAC address as a unique identifier, you can always assign IP 192.168.1.5, to that MAC address.

**Range** : DHCP servers are normally bound by a range, in which it will assign IPs to devices that connect.

That range depending on how the network is configured can be modified at will.

e.g. you could set 192.168.1.100 TO 192.168.1.150 as range.


This would mean, you will have a maximum hosts of 50 to connect to this network.

## Having fun
The best place to start playing with DHCP servers would be your home router.

It has an integrated DHCP server. Enjoy !

## Credits
[Wikipedia definition](https://en.wikipedia.org/wiki/Dynamic_Host_Configuration_Protocol)

[IETF](https://tools.ietf.org/html/rfc2131)

## \Codarren/