---
layout: post
title: 'Day 65: Data from unconventional json files in Python'
published: true
---
## Unconventional files

![python json files](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/python-logo.png)

There are .json files that comes in all shapes and sizes.

And the structure differs from the classic scheme.

## Sample .json structure
Let's analyze the schema below.

We can see that we have 3 root keys:
e, ok and data.

**e** --> Did you guess what it means? yes, Endpoint !

**ok** --> The data was returned to us. This is like an acknowledgement.

**data** --> A list of the data we requested.

See, if we wanted to refer to a particular pair, we just can't refer to it by name.

So, we'll have to find another way of referring to the items.
```json
{
  "e": "tickers",
  "ok": "ok",
  "data": [
    {
      "timestamp": "1615031084",
      "pair": "BTC:USD",
      "low": "47000",
      "high": "49514.4",
      "last": "48251",
      "volume": "89.36530799",
      "volume30d": "6651.52124769",
      "priceChange": "861.2",
      "priceChangePercentage": "1.82",
      "bid": 48119.7,
      "ask": 48250.3
    },
    {
      "timestamp": "1615031084",
      "pair": "ETH:USD",
      "low": "1455",
      "high": "1594.99",
      "last": "1559.3",
      "volume": "1937.83401000",
      "volume30d": "87819.24143600",
      "priceChange": "83.97",
      "priceChangePercentage": "5.69",
      "bid": 1557.33,
      "ask": 1563.47
    },
    {
      "timestamp": "1615031084",
      "pair": "BCH:USD",
      "low": "478.57",
      "high": "504.99",
      "last": "491.37",
      "volume": "79.93941602",
      "volume30d": "16639.56261792",
      "priceChange": "3.35",
      "priceChangePercentage": "0.69",
      "bid": 491.37,
      "ask": 496.19
    },
    {
      "timestamp": "1615031084",
      "pair": "DASH:USD",
      "low": "202.681",
      "high": "212.62",
      "last": "205.55",
      "volume": "296.77032892",
      "volume30d": "21556.63940289",
      "priceChange": "-1.205",
      "priceChangePercentage": "-0.58",
      "bid": 205.55,
      "ask": 208.134
    }
  ]
}
```

## The code
```
import json

#Our source filename, this is a downloaded file
filename = 'tickers_form.json'

#We start by opening our local .json
with open (filename) as json_file:
    data = json.load(json_file) #We load it as a python dictionary

#At this moment, it's important to know the size of the data key.
#This will help us know exactly how many items are there.
maxlen = len(data['data'])

#Output the size of the dictionary
print ('{}:{}'.format("Size is",maxlen))

#Here I input the pair that I am interested in.(my search)
looking_for = 'FUN:USD'

#We loop from 0(array start) to maxlen, which is the max size of the dictionary.
for i in range(0,maxlen):

    #Declare variables for all the data I am interested in
    market = data['data'][i]['pair']
    price = data['data'][i]['last']
    low = data['data'][i]['low']
    high = data['data'][i]['high']
    bid = data['data'][i]['bid']
    ask = data['data'][i]['bid']
    
    if (market == looking_for): #If the pair, matches our search, we print the results
        print ('{} {}:{}'.format(market, 'found! at position', i))
        print ('{}:{}'.format('Price',price))
        print ('{} {}'.format('Low', low))
        print ('{} {}'.format('High', high))
        print ('{} {}'.format('Bid', bid))
        print ('{} {}'.format('Ask', ask))
```

**Result**
```
Size is:50
FUN:USD found! at position:47
Price:0.03199
Low 0.02936
High 0.0325
Bid 0.03144
Ask 0.03144


#Searching for BTT:USD

Size is:50
BTT:USD found! at position:10
Price:0.0012489
Low 0.0011805
High 0.00125
Bid 0.0012331
Ask 0.0012331
```

All the explanation is in the comments.

In essence, instead of using keys to reference items, we are using indexes of each item to reference to it.

I hope you enjoyed this little article.

And have fun json'ing under python !!! :)

## \ Codarren /