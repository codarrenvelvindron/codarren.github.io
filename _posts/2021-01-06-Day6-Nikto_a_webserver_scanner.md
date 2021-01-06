---
layout: post
title: 'Day 6: Nikto a webserver scanner'
published: true
---
## Have you heard about Nikto ?
![Nikto](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/nikto.png)
No, we are not talking about the Call of Duty character!

## What is Nikto ?
Nikto is a web server security scanner.

However, it's not designed to be stealthy.



## Why would you want to be stealthy ?
I'm glad you asked! Let's start with a brief story.

Back in the day in 2018, I escaped into the wonderful world of bug bounty hunting.

It was a time where money seemed to be easily earned, and almost felt like cheating (almost :) )

Let's not deviate here.


When you are testing testing websites, you need to be stealthy.


## What does stealthy mean ?
It simply means that you need to control the number of requests that you send to the web app you are testing.

Why? Otherwise the Intrusion Detection Systems will detect you as a possible intruder and ban your IP !

## Once your IP is banned, it's game over.

Not really. If you are persistent enough, you will find a way.

Like getting a cheap VPS and keep on doing your testing from that VPS.

Or, if you live in Mauritius like me, with dynamic IPs. 

You just need to reboot your router, and hope your ISP gives you a shiny new IP address.

## Then why are we using Nikto ?
For fun! And also, it's part of the Curriculum for CEH v11, which i'm currently studying.

## Installation
```
#On debian
sudo apt-get update
sudo apt-get install nikto
```

## Running Nikto
```
#Nikto uses the -h flag to specify the hostname
#As an example I'll test my own blog
nikto -h blog.codarren.com
```

## Results
![Niktos scan](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/nikto_scan.png)

## Interpreting the results
Target IP : This is a standard information that you will get from a basic ping

Target Port: By default it scans over port 80, you can specify another port with the (-port) argument

Server: It immediately detects that i'm behind cloudflare, and basically cf is serving my pages.

Cookie: httponly flag, normally, a minor warning, you can read more about that flag

Uncommon header: It already knows that the header is uncommon, I'm guessing it has a list of common headers built in with their corresponding possible flaws, so it finds none.

No CGI Directories found: you can force using the flag given.

This simple test means my website is quite secure, nothing serious was found, which is positive.

## Have fun playing with Nikto
But not too much fun, you might be banned from using a website* :)

P.S. *You are supposed to test your own website.

## Credits:
[Nikto call of duty image](https://static.wikia.nocookie.net/callofduty/images/3/34/Nikto_Portrait.png)

[nikto documentation](https://cirt.net/Nikto2)