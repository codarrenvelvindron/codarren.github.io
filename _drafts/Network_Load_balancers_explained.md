---
published: false
---
## LB

In jargon, you'll often hear this.

The application is behind an LB, this simply is a **L**oad **B**alancer.

## Definition ?
Load balancers, have a very specific function.

Let's break it down.

**L**oad - The load can be thought of as a **workload**

**B**alancer - Something that balances; that makes sure that everything remains in balance.

## What ?
A load balancer can be hardware or software.

It is a network device/software that makes sure that client requests are fairly distributed across services.

## How ?
If we take a website that has a very large daily traffic.

E.g. Twitter. There are millions or even billions of people connecting on twitter everyday.

Now, maybe twitter has only one server. But this is highly unlikely.

Twitter has multiple servers.

This goes like this

```
[INCOMING CLIENT REQUESTS] ----> [Load Balancer] --> Twitter server 1
												 --> Twitter server 2
                                                 --> Twitter server 3
                                                 --> Twitter server 4
                                                 --> Twitter server 5
                                                 --> Twitter server 6

```
So the distribution of requests is done by the LB.

## More info

The distribution of those requests are done according to a number of conditions.

And it is based on the load balancing algorithm.

**Round Robin** --> Round robin has a list of servers and requests are forwarded to each in turn.

Request 1 --> server 1

Request 2 --> server 2

etc...

**Least Connection** --> Takes into account the current load on each server. It will send requests to the server with the least amount of active connections.

Server 1 (5000 connections)
Server 2 (8000 connections)

It will automatically select Server 1 and the next requests will be serviced by Server 1.

There are many other algorithms, but these 2 are the most widely used.

## Why
All web servers have a maximum number of connections that they can accept.

This is inherently due to the resources available to those servers that are not infinite.

Load balancers provide the best user experience by allowing servers to share the total load of client requests incoming.

There is also some overhead that the load balancer can take head on, like SSL offloading: The load balancer takes on the SSL encryption/decryption part away from the main application servers, thereby reducing the compute intensive load on these servers.

## Credits
[Featured image LB](https://avinetworks.com/wp-content/uploads/2018/03/Load-Balancer-Icon.png)
## \ Codarren /