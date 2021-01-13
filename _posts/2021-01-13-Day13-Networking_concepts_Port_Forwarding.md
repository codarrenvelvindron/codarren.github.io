---
layout: post
title: 'Day 13: Networking concepts Port Forwarding'
published: true
---
## There are terms like that.

Yes, terms that you can hear over and over again and not know what it's about.

## I'll explain slowly for you

Let's understand Port Forwarding by using an example.

Do you know teamspeak ? It's an app that is used for audio communication among gamers.

## I want to host my own teamspeak server

Or any application server for that matter !

I go about and get a guide on how to do it.

It's now set up locally, we can test it on LAN.

And we are able to connect to the teamspeak server by LAN.

## Making it available to the whole world!

Once it's up, we can make it available to the world by using port forwarding.

Port forwarding allows us to do just that.

## A little wikipedia definition

Port forwarding allows remote computers (for example, computers on the Internet) to connect to a specific computer or service within a private local-area network (LAN)

## What is a port ?
A lot of people get confused by what a port is.

And the definitions don't help.


## Here's my defintion
A port is a map to an application.

A port is an application, usually a server.

Port 22 is down on the server, your SSH server is down.

Port 21 is down, FTP server is down.

Port 53 down, DNS server is down


This is not the strict definition.

But that's how I imagine things and it makes all the nonsense easier to understand.

## Back to Port Forwarding
![Port forwarding](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/port_forwarding.png)

OK here's how we set it up.
1. We enter an application name, easier for us to track

2. We enter protocol, it could be only TCP or only UDP, if not sure allow both.

3. Port from and port to: It could be available on a range of ports.

But if it's just one, port from and to should be the same as i did.

4. Enable, add and click apply.

## What did we just do ?
We mapped IP address our teamspeak server on my local PC's IP: 192.168.5.4.

Using port 2222.

Every request to port 2222 is forwarded to my local server.

**P**ort **F**orwarding.

## How do people access my server?
They simply connect using:
**public ip**:**port**

As an example, if my public IP is: 194.20.200.54.

They would access my server using: 

> 192.20.200.54:2222

It's as simple as that!

## \Codarren/
