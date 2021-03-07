---
layout: post
title: 'Day 66: Filtering currencies using regex in Python'
published: true
---
## Currencies can be hell
![python re regex currencies](https://raw.githubusercontent.com/codarrenvelvindron/codarrenvelvindron.github.io/master/images/python-logo.png)

If they don't have any particular standard that they follow.

I'll explain using the data below.

## Sample .json file
```json
"TON": {
    "available": "1.518069",
    "orders": "0.000000"
  },
  "FUN": {
    "available": "1275.716916",
    "orders": "0.000000"
  },
  "BCH": {
    "available": "0.00000000",
    "orders": "0.00000000"
  },
  "DASH": {
    "available": "0.00000000",
    "orders": "0.00000000"
  },
  "LTC": {
    "available": "0.00000000",
    "orders": "0.00000000"
  },
  "BAT": {
    "available": "0.000000",
    "orders": "0.000000"
  },
  "EUR": {
    "available": "0.00",
    "orders": "0.00"
  },
  "GBP": {
    "available": "0.00",
    "orders": "0.00"
  },
  "RUB": {
    "available": "0.00",
    "orders": "0.00"
  },
  "GUSD": {
    "available": "0.00",
    "orders": "0.00"
  },
  "USDT": {
    "available": "0.000000",
    "orders": "0.000000"
  },
  "USDC": {
    "available": "0.000000",
    "orders": "0.000000"
  },
  "LINK": {
    "available": "0.000000",
    "orders": "0.000000"
  },
  "ZRX": {
    "available": "0.000000",
    "orders": "0.000000"
```

## Input data
A little explanation of our input data.

Here we have all kinds of fiat (USD, EUR) and cryptocurrencies(BTC, BAT, LINK).

**fiat** currencies end with 2 decimal places (2 digits after the decimal)

**crypto** currencies end with (6-8) decimal places.

## The problem
The issue here is to differentiate between the empty currencies, and the non-empty ones.

## The approach
This is my technique when using regex to uniquely identify string matches.

1. Match the whole group

2. Match the subset from the whole group

## Sample data
```txt
0.00000001
0.00499000
189.92
1232.018676
404.0000000
0.000000
0.000000
3387.400276
81865.175231
0.000000
0.076754
0.000000
0.000000
0.00105197
0.000000
0.000000
803.622185
8.542889
0.007914
3211.366028
47516.283380
3.21088594
0.000000
0.000000
60.000000
1.518069
1275.716916
0.00000000
0.00000000
0.00000000
0.000000
0.00
0.00
0.00
0.00
0.10
0.000000
0.000000
0.000000
0.000000
0.000000
0.000000
0.000000
0.000000
0.000000
0.000000
0.000000
0.000000
0.000000
0.000000
0.000000
0.000000
0.000000
0.000000
0.000000
0.000000
0.000000
0.000000
0.000000
0.000000
0.000000
0.000000
0.000000
0.000000
0.000000
0.000000
0.000000
0.000000
0.000000
0.000000
0.00000000
0.000000
0.000000
0.000000
```

## Match all fiat currencies (larger group)
I know that all fiat currencies have a format of:

***Any number of digits, a dot, followed by 2 digits***

```python
import re
fiat_filter = re.compile(r'^\d{1,}\.\d{2}$')

#I first start by importing the regex module (re)
#The r marks the start of raw string
#The '' pair is the start and end of our regex
# ^ --> denotes the start of something
# \d --> any digit
# {1,} --> repeats 1 or more times
# \. --> a dot (needs to be escaped)
# \d --> any digit
# {2} --> repeats exactly 2 times
# $ --> denotes the end of something
```
**In plain english** 

--> Match a raw string, starting with any digit(that repeats any number of times), followed by a dot, and any digit(that repeats exactly 2 times), we end with these two digits.

**Remarks**

^\d{1,} --> If i didn't say that digits one or more times is the start of string, it would match anything even if it happens to be at the end of the text.

\d{2}$ --> Since my currencies all end with 2 digits, this is perfect as I am saying here that after these 2 digits, there isn't anything else to match.


## Match all cryptocurrencies (larger group)
I know that all cryptocurrencies have a format of:

***Any number of digits, a dot, followed by 6-8 digits(in my knowledge***

```python
import re
crypto_filter = re.compile(r'^\d{1,}\.\d{3,}$')

#I first start by importing the regex module (re)
#The r marks the start of raw string
#The '' pair is the start and end of our regex
# ^ --> denotes the start of something
# \d --> any digit
# {1,} --> repeats 1 or more times
# \. --> a dot (needs to be escaped)
# \d --> any digit
# {3,} --> repeats exactly 2 times
# $ --> denotes the end of something
```

**Remarks**

Compared to the match for fiat currencies, here I change only one thing.

The number of digits after the dot, I match 3 or more.

Because, I know that all fiat currencies have only 2 digits possible after the dot.

## Match the non-zero fiat currencies.
I know that the zero currencies always have this form (0.00).

So, instead of matching all non-zero currencies, I match the zero currencies, then I exclude them.

```python
#match ALL fiats
zero_fiat_filter = re.compile(r'^0{1}\.0{2}$')
avail = 563.23
if (fiat_filter.match(avail)):
    #print ('{} {}'.format(crypt_f,"is a fiat"))
    pass
    if (zero_fiat_filter.match(avail)):
        #print ('{} {}'.format(crypt_f,"is a zero fiat"))
        pass
    else:
        print ('{} {}'.format(crypt_f, "is a non-zero fiat"))
```

**Remarks**

- Here, I match the whole group of fiats.

- I match the subgroup of zero fiats and pass the if. 
(so i'm explicitly telling python to do nothing about it)

- I then add an else that will receive all the non-zero fiats, the actual relevant data that I require


## Match the non-zero cryptocurrencies
I know that the zero currencies have the form of 0.00xxxxxx.

That is, 0.(a lot of zeroes).

So, again, I match all non-zero currencies, out of which i match the zero currencies and then exclude those.

```python
zero_crypto_filter = re.compile(r'^0{1}\.0{3,}$')
#match ALL cryptos
if (crypto_filter.match(avail)):
    #print ('{} {}'.format(crypt_f,"is a cryptocurrency"))
    pass
    if (zero_crypto_filter.match(avail)):
        #print ('{} {}'.format(crypt_f,"is a zero crypto"))
        pass
   else:
        print ('{} {}'.format(crypt_f,'is a non-zero crypto'))
```

**Remarks**
- Here I match the whole group of cryptocurrencies.

- I match the subgroup of zero cryptocurrencies and pass it.

- I then add the else that will get me all the non-zero cryptocurrencies, the data I am looking for.

## The End
Have a great Sunday ! And get regex'ing!

## \ Codarren /
