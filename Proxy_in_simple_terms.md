## Proxy. Proximity ?

![Proxy image squid](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/DXxSP7SVAAAnArQ.png)

The dictionary definition says it all:

*Proxy*: a person authorized to act on behalf of another

## In our case

A proxy server would be a server that **performs requests** and **receives responses** on your behalf.


## Since a proxy is an intermediary, it's bad

Not all intermediaries are bad. 

A proxy server won't make you pay more!

Matter of fact, there are some free and very popular proxy servers like [squid](http://www.squid-cache.org/).

## Types of proxy servers

### Transparent Proxy
Transparent proxies identify themselves as proxy servers and pass along  your IP address to destination servers. 

Hence the word transparent, they'll show your IP address.

These proxies are usually used by public libraries and schools for content filtering.

Transparent Proxy talking to server: Hey! I'm a proxy server and my client is *your ip address*

### Anonymous Proxy
Unlike transparent proxy, an anonymous proxy identifies themselves as proxy servers but they hide your IP address to destination servers.

Anonymous Proxy talking to server: Hey! I'm a proxy server and my client is anonymous.

Anonymous and transparent proxies are opposites but are both proxies.


### Forward Proxy
Forward proxy simply means that we are in a client's perspective.
The forward proxy is in fact a forward facing proxy for the client to send requests to the server.

|*Client* --> *Forward Proxy*| <--> *INTERNET*

### Reverse Proxy
A reverse proxy acts at the Web Servers perspective.

|*Web Server* --> *Reverse Proxy*| <--> *CLIENTS/INTERNET*

It thus allows:

Load balancing, caching static content, compression on server side, thereby lightening up server load.