---
published: false
---
## DNS, a love story
Domain Name System; A domain name is just another website name(as we know it).

Example: blog.codarren.com is a domain name.

## The horror stories
Before we begin with what DNS actually is, let's talk about the horror stories.

Google.com - In 2016, the google.com domain was sold to Sanmay Ved for $12. 

Google paid $6006.13 to him, to get the domain back before doubling the sum.
You can read the story [here](https://www.theverge.com/2016/1/29/10868404/google-reveals-how-much-it-paid-the-guy-who-bought-google-com)


More DNS horror stories [here](https://bluecatnetworks.com/blog/6-dns-horror-stories-halloween/)

## Simply
The best analogy that works for most of us would be the telephone directory.

A telephone directory allows you to look for someone's phone number by searching for his name.

```
Codarren Velvindron --> 53182111
blog.codarren.com --> 172.67.183.71
```

## Life without DNS ?
Our lives would be totally different without the DNS.

We'd have a much better memory.

Yes, you read this right.

## Why ?
Because if we wanted to visit [google.com](https://google.com), we'd have to write:
[216.58.223.110](https://216.58.223.110) in our web-browser's search bar.

*Try it and see for yourself*

## Domain names
So basically what lies behind google.com is simply this IP address 216.58.223.110, and this IP address corresponds to google's server (or one of google's servers)

And this is exacly the same story for every single website or web domain on the internet!

## nslookup , the cool tool
nslookup allows you to check a domain's ip address.
```
#If you're under linux open a terminal and type this command:
nslookup google.com

#Under windows, Windows Logo --> run : cmd, then type this:
nslookup google.com

# Interesting to note that commands are the same for both
```

## nslookup resuts
Normally your results will look like this:
```
codax@gaming:~$ nslookup google.com
Server:		8.8.8.8
Address:	8.8.8.8#53

Non-authoritative answer:
Name:	google.com
Address: 216.58.223.110
Name:	google.com
Address: 2a00:1450:401a:804::200e
```
The **Server** is the actual DNS server that is responding to our request, i.e. giving us the IP answer.
The **Address** is the DNS server again, and it uses port **53**, this is the standard/default DNS server port.

The answer section is the real results for our query/lookup.
The first 2 lines of the answer:
**ipv4** address
The last 2 lines of the answer:
**ipv6** address

## reverse lookup, the reverse flash
Just like we are able to find an **IP** from a **domain name**
With a reverse lookup, we attempt to find a **domain name** from an **IP** address.
```
# Same command but this time we look for domain name
codax@gaming:~$ nslookup 185.60.219.35
35.219.60.185.in-addr.arpa	name = edge-star-mini-shv-01-jnb1.facebook.com.

Authoritative answers can be found from:

``