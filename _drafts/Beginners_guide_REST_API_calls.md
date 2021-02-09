---
published: false
---
## API

**A**pplication **P**rogramming **I**nterface

## Defined simply
There are different APIs that are available.

But what we're interested in today are Web APIs.

These involve defined request messages that they will accept, and they will respond with a structured message, usually in the form of XML or JSON.

The aim of doing this is to facilitate data exchange between different web sites.

## Enough Definition
OK let's start with our case scenario.

Someone asked me today about web APIs and the inability to use it.

## Requests are there but...
To my knowledge, API requests are supposed to be simple.

But why are people struggling?

## The API is explicit
![currency limit](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/cex_currency_limits.png)

## Trying it on a terminal
![term_curr](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/currency_limit_error_1010.png)

## Copy-paste not working
What can we do now ?

## Investigation
Well, let's make our GET request more verbose.

```
codax@gaming:~$ GET -s https://cex.io/api/currency_limits
403 Forbidden
error code: 1010
```
Adding the -s returns the response status code.

We're getting a 403 Forbidden !

## 403 Forbidden it's a permission issue !
Hold on tiger.

Let's investigate a little bit more.
```
codax@gaming:~$ GET -e https://cex.io/api/currency_limits
403 Forbidden
Cache-Control: private, max-age=0, no-store, no-cache, must-revalidate, post-check=0, pre-check=0
Connection: close
Date: Tue, 09 Feb 2021 16:55:53 GMT
Server: cloudflare
Content-Length: 16
Content-Type: text/plain; charset=UTF-8
Expires: Thu, 01 Jan 1970 00:00:01 GMT
CF-RAY: 61ef1ee17d6da4d4-MRU
Cf-Request-Id: 082951a0ef0000a4d4cebd7000000001
Client-Date: Tue, 09 Feb 2021 16:55:53 GMT
Client-Peer: 104.20.147.108:443
Client-Response-Num: 1
Client-SSL-Cert-Issuer: /C=US/O=DigiCert Inc/OU=www.digicert.com/CN=GeoTrust RSA CA 2018
Client-SSL-Cert-Subject: /C=GB/L=LONDON/O=CEX.IO LTD/CN=cex.io
Client-SSL-Cipher: TLS_AES_256_GCM_SHA384
Client-SSL-Socket-Class: IO::Socket::SSL
Expect-CT: max-age=604800, report-uri="https://report-uri.cloudflare.com/cdn-cgi/beacon/expect-ct"
Set-Cookie: __cfduid=d40e230e3909b01eb3ac7bd7478bf5a581612889753; expires=Thu, 11-Mar-21 16:55:53 GMT; path=/; domain=.cex.io; HttpOnly; SameSite=Lax; Secure
X-Frame-Options: SAMEORIGIN

error code: 1010
```
-e gives us the whole response headers.

Now clearly, we can see that we are served by cloudflare.

Somehow, cloudflare does not allow us to perform this request (for some reason).

## Investigation 2 - Bypassing
When we thing about it a GET request is simply an http request.

So, let's do the request with our web browser and see what response it returns.

![bingo](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/get_browser_curr_limit.png)

## Credits
[wikipedia page](https://en.wikipedia.org/wiki/API)

[cex.io api](https://cex.io/rest-api#public-api-calls)