---
layout: post
title: 'Day 7: Shodan an IoT search engine
published: true
---
## IoT, or insecuriTy
![iot](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/insecure.jpeg)
_The Internet of Things, or IoT, refers to the billions of physical devices around the world that are now connected to the internet, all collecting and sharing data._

## A little history
Since manufacturers of appliances and technology are in competition.

They have to invest in software development to remain competitive.

This means that a company making a refrigerator for example, may be able to do more than just cooling down/preserving your food.

## My silly example
Suppose, Samzung, is a refrigerator manufacturer.

They create a smart fridge that does more than what it's supposed to do.

This Samzung Smarttec, can also make your coffee.

Now, you find this feature useful and are using it everyday.

What happens if, the software that is allowing the fridge to make your coffee can be tampered with ?

## Malicious Neighbour
Your neighbour knows you bought the new Samzung, and is at a close enough distance to be able to connect to the Fridge.

No authentication, he is able to make a cup of coffee, without your consent.

Scary right ?

## Who is the culprit ?
In my opinion, the manufacturers are the culprits.

Their code is flawed. Anyone can access your refrigerator.

## Shodan is a powerful search engine
And shodan was build specifically for these type of open devices.

## Using shodan.io
 - Head over to the main website using your web browser:

[Click here](https://shodan.io) --> No this is not a click bait 

 - Once on the website, we need to register an account.
 - Once logged in, type this line in the search bar:
```
Server: UBNT Streaming Server v1.2
```
![shodan ubnt](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/shodan_search.png)

## Oops
In the results below, you will see unsecured IP cameras.

These are using a large networking gear manufacturer called UBNT.

And you are even able to see a screenshot of the picture that the IP camera is leaking.

It is being leaked to you and the whole world !


![shodan results](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/ubnt_railway.png)

## Remediation
 - Change all default passwords
 
 - Check if your device is vulnerable
 
Just doing a quick google search on your device and any OS running on top of it.

Typing in your public IP on a browser might work too.

## Credits
[iot definition](https://www.zdnet.com/article/what-is-the-internet-of-things-everything-you-need-to-know-about-the-iot-right-now/#:~:text=The%20Internet%20of%20Things%2C%20or,all%20collecting%20and%20sharing%20data.)

[featured image- internet of insecure things](https://hackernoon.com/internet-of-things-insecurity-is-our-fault-827a9261973d)
