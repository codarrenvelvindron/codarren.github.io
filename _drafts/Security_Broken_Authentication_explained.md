---
published: false
---
## OWASP number 2
![owasp](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/wasp-on-flower-480x320.jpg)

This is a widespread vulnerability as per OWASP top 10.

## What ?
Broken --> Like glass, it's broken and but unlike glass, it can be fixed.

Authentication --> The mechanisms that allow you to make yourself known to the server.

## Why ?

Authentication becomes broken when it allows unauthorized access to certain resources.

Say, we have a login page for your social media account.

Let's take facebook.


Now, when you enter your username and password, if and only if it's correct, you will get logged in.

In a broken authentication scenario, you will be able to try millions of usernames and password combinations, until you find the right one.

Of course, it won't be you doing the actual login. 

A home-made bot would do it for you.

## How ?
Protecting yourself from broken authentication is a matter of commonsense.

There are numerous mechanisms that many sites are already using.

1. Limited number of login attempts (3 maximum)

2. No default account credentials (admin - admin is not a good default account to keep).

3. Multi-factor authentication has become one of the best means to prevent attacks.

4. Passwords for users should have a certain length and complexity to be accepted.

5. Session management is crucial, and it is important that the session IDs be expired after logout or long idleness.

## Credits
[Wasp featured image](https://www.bluecrossanimalhospital.ca/pet-hazards/beeswasps-stings-and-your-pet/)

## \Codarren/