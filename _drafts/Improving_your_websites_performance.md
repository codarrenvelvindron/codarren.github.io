---
published: false
---
## How is your website doing?
![Perf website](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/perf_website.png)

Pretty good :)

## How's yours doing ?

The featured image says it all, performance 100%, structure 97%, etc...

## There's nothing to do then ?

That's not so simple.

Let me explain.

## gtmetrix.com

This [tool](https://gtmetrix.com/) was introduced to me by my CTO, Vanessa Chellen, at the time I was working for them. (Thanks Vanessa!)

And it served me well.

## If we're an A grade, are we considered OK?

Not to me.

The website does load fast.

Agree, but...when we look closer.

## Unthrottled connection

![unthrottled highlighted](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/unthrottled_highlighted.png)

By default, gtmetrix tests your website using an unthrottled connection.

An unthrottled connection is an unlimited connection.

An unlimited connection has no bandwidth limitation.

It could be testing your page using a gigabit connection.

## Why is it not a good test ?

Simply, not everyone has an home gigabit connection.

And particularly in Mauritius.

The fastest home connection is a 100Mb.

## My idea of testing
For me, to get a good idea of how well the website is doing.

We should test it using the slowest connection available in Mauritius.

I know a lot of times, on mobile we do switch to 3G at least on emtel.

## New result
![3G perf](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/3G_perf.png)


- As we switched to 3G and did a retest
- My performance dropped to a C

## Room for improvement
In the report, which is quite detailed, we get the top issues.

![3G details](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/issues.png)

This part is quite insightful as it provides suggestions for improvement.

## Medium impact
![med impact](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/impact_med.png)

The suggestions for the 2 issues are:
1. Change my css code to load in [async](https://gtmetrix.com/blog/how-to-eliminate-render-blocking-resources/) mode, this means, it will not load the css first.

It will load the .css asynchronously with the rest of the page.

I did it and it did have a positive impact on my load time.

```
#Before:
<link rel="stylesheet" type="text/css" href="/style.css" />
#After:
<link rel="stylesheet" type="text/css" href="/style.css" async />
```

2. Increase my [cache TTL](https://gtmetrix.com/serve-static-assets-with-an-efficient-cache-policy.html).

This will speed up load times on repeat visits on my page.

It will store my images in the user's browser cache for a longer time.

On cloudflare, you do it by gong to PageURL > Caching > Browser Cache TTL

I set it to 1 day instead of the default 30 minutes!

![bc CF](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/cf_browser_cache.png)
