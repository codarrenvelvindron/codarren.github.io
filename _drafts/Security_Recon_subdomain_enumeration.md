---
published: false
---
## Subdomain Enumeration

In pentesting/whitehat hacking, subdomain enumeration is part of reconaissance where we attempt to find subdomains from a main target.

## Finding Subdomains
Subdomain enumeration are usually based on two main techniques.

1. Finding subdomains by scraping search engines

OR

2. Finding subdomains by trial and error using wordlists of common names.

## Scraping search engines
Basically the main domain is searched in searched engines and we see if that particular domain has some usable subdomains.

[Sublist3r](https://github.com/aboul3la/Sublist3r) is one of my favourite tools for subdomain enumeration.

## Installing Sublist3r

```
#Clone repository
git clone https://github.com/aboul3la/Sublist3r

#Go to cloned directory
cd Sublist3r/

#Install all prerequisites from requirements file, I'm using python3
sudo pip3 install -r requirements.txt

#Check if installation working
python3 sublist3r.py -h
```

## Launching Sublist3r
```
#I'm outputting the results to my .txt file
python3 sublist3r.py -d codarren.com -o codarren.com_OUT_DOMAIN.txt
```
![sublist3r python](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/sublist3r.png)

## Why use a subdomain enumeration tool ?
The basis of its usage lies in the logic that besides the main domain, which is normally well protected.

There may be subdomains which are not 'as' protected as the main high traffic site.

This might be a target for unethical hackers.
And that's why we check these potential targets in pentesting.


## \ Codarren /
