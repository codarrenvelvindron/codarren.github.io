---
published: false
---
## 404 not found
![404.png](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/404.png)


We see them all the time, on our browsers.

Did you know that this 404 error is part of an actual standard?

My mission today is to shed some light on http status codes!

## Success - 200
When you go to a website and it loads correctly.

Chances are you got a response code of:
**200 --> OK**

Why you don't see them is another story?

When everything is working perfectly fine, you just don't need to worry.

This is why when you go to any website and it loads properly, you won't see the 200.

But in the background, you are getting this response code of 200.

Your browser is simply not showing it to you.

## Redirect - 30x
All 30x messages are redirection messages.

Redirection simply means that the resource that you requested is not found on this particular page.

And it has been configured that when you request for that very resource, you will get redirected to another url.

**301 --> Moved Permanently**
This means that the URL of the resource has been changed permanently.

**302 --> Found**
URL of the resource changed temporarily as opposed to a 301.

## Client Error - 40x

This is the class of the most common and the least understood.

When you get any error of this class, it's usually by YOUR mistake as a client/user/browser.

See, assuming that the web application you're trying to access is well configured, you should not be getting any 40x errors.

**400 --> Bad Request**
Server cannot understand request --> invalid syntax

**401 --> Unauthorized**
Client has no permission to access some resource.

**403 --> Forbidden**
You are trying to access something you have no right to.

As opposed to 401, in this case you are already known to the server.

**404 --> Not Found**
The server cannot find the resource you are looking for.

Normally, there is an issue with your URL.

Either the page does not exist on the server or you mistyped.

![404_google.png](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/404_google.png)

In the image above, I typed in an url that doesn't exists for google and it responds with a 404.

## Server Error - 50x
I want to stress that all status codes of this class are **server** errors.

For a message like this, there is no doubt that your server is the root cause of the problem.

**500 --> Internal Server Error**
Server is in an exceptional state.

This means, it doesn't know how to handle your request.

As per it's normal functioning, it cannot respond to your request except with a 500.

**502 --> Bad Gateway**
The server was doing the role of the gateway/proxy but didn't receive a response from the main server.

**503 --> Service Unavailable**
Server not ready to respond to the request.

Server may be in maintenance or currently overloaded or under DDoS attack?

## Credits/References
[RFC 2616 Section10](https://tools.ietf.org/html/rfc2616#section-10)
[RFC 7231](https://tools.ietf.org/html/rfc7231#section-6.5.1)
[Wikipedia status codes](https://en.wikipedia.org/wiki/List_of_HTTP_status_codes)

## \Codarren/