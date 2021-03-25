---
layout: post
title: 'Day 84: Ultimate guide python data dictionary list JSON through example'
published: true
---
## JSON can be entangled into some nested gooodness
![python data dictionary list json](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/llustration-of-an-entangled-polymer-solution-Typical-configuration-of-a-tracer-filament.png)

Mmmmm...

And this is the beauty of it.

Python allows you to take any data and represent it in JSON.

But the counterpart is that it might not be straightforward to understand.


## Let's take a JSON and examine it
### Raw JSON
```json
{"e":"currency_limits","ok":"ok","data":{"pairs":[{"symbol1":"BTC","symbol2":"USD","pricePrecision":1,"minLotSize":0.0004,"minLotSizeS2":10,"maxLotSize":null,"minPrice":"3500","maxPrice":"350000"},
```

### Beautified JSON
It's the same .json but using jq to represent it.
```json
{
  "e": "currency_limits",
  "ok": "ok",
  "data": {
    "pairs": [
      {
        "symbol1": "BTC",
        "symbol2": "USD",
        "pricePrecision": 1,
        "minLotSize": 0.0004,
        "minLotSizeS2": 10,
        "maxLotSize": null,
        "minPrice": "3500",
        "maxPrice": "350000"
      },
```

**Notes**
- This JSON file starts with being a dictionary.

- It has 3 key value pairs

## Convert json file to dictionary
```python
import json

#we init an empty dictionary
crypto_dictionary = {}

#we read the local .json file
filename = 'currency_limits_25032021.json'

#we create a function to convert json to dictionary
def __convert_to_dict(filename,dictionary): #convert object to dictionary
    """ from a .json filename, we return a dictionary """
    try:
        with open(filename) as json_file:
            data = json.load(json_file)
        dictionary.update(data)
    except JSONDecodeError:
        print ('JSON decode failed')

#We run our json file through the converter
__convert_to_dict(filename,crypto_dictionary)

#Our global crypto_dictionary is now updated.
```

***Sample of dictionary output***
```python
{'e': 'currency_limits', 'ok': 'ok', 'data': {'pairs': [{'symbol1': 'BTC', 'symbol2': 'USD', 'pricePrecision': 1, 'minLotSize': 0.0004, 'minLotSizeS2': 10, 'maxLotSize': None, 'minPrice': '3500', 'maxPrice': '350000'}, {'symbol1': 'ETH', 'symbol2': 'USD', 'pricePrecision': 2, 'minLotSize': 0.012, 'minLotSizeS2': 10, 'maxLotSize': None, 'minPrice': '26.41', 'maxPrice': '10000'}, {'symbol1': 'BCH', 'symbol2': 'USD', 'pricePrecision': 2, 'minLotSize': 0.0
```
- We see that is it not exactly the same as our json file

- That is because it's now a data dictionary

- It contains single quotes instead of double quotes

## Data dictionary = key-value pair
We use that property to get the things we need.
```python
# Here we need the third key, i.e. data
# We just reference it from our global dictionary
data_dict = crypto_dictionary['data']
print (data_dict)
```

***Sample Output of data_dict***
```python
{'pairs': [{'symbol1': 'BTC', 'symbol2': 'USD', 'pricePrecision': 1, 'minLotSize': 0.0004, 'minLotSizeS2': 10, 'maxLotSize': None, 'minPrice': '3500', 'maxPrice': '350000'}, {'symbol1': 'ETH', 'symbol2': 'USD', 'pricePrecision': 2, 'minLotSize': 0.012, 'minLotSizeS2': 10, 'maxLotSize': None, 'minPrice': '26.41', 'maxPrice': '10000'}, {'symbol1': 'BCH', 'symbol2': 'USD', 'pricePrecision': 2, 'minLotSize': 0.02, 'minLotSizeS2': 10, 'maxLotSize': None, 'minPrice': '43.40', 'maxPrice': '8192'}, {'symbol1': 'DASH', 'symbol2': 'USD', 'pricePrecision': 3, 'minLotSize': 0
```

## 'pairs' is another data dictionary
How do i know ? It starts with curly braces.

From 'pairs' I require the value(s).

So we reference it further.

```python
pairs = data_dict['pairs']
print (pairs)
```

***Sample output of values of pairs list***
```python
[{'symbol1': 'BTC', 'symbol2': 'USD', 'pricePrecision': 1, 'minLotSize': 0.0004, 'minLotSizeS2': 10, 'maxLotSize': None, 'minPrice': '3500', 'maxPrice': '350000'}, {'symbol1': 'ETH', 'symbol2': 'USD', 'pricePrecision': 2, 'minLotSize': 0.012, 'minLotSizeS2': 10, 'maxLotSize': None, 'minPrice': '26.41', 'maxPrice': '10000'}, {'symbol1': 'BCH', 'symbol2': 'USD', 'pricePrecision': 2, 'minLotSize': 0.02, 'minLotSizeS2': 10, 'maxLotSize': None, 'minPrice': '43.40', 'maxPrice': '8192'}, {'symbol1': 'DASH', 'symbol2': 'USD', 'pricePrecision': 3, 'minLotSize': 0.065, 'minLotSizeS2': 10, 'maxLotSize': None, 'minPrice': '12.98', 'maxPrice': '4096'}, {'symbol1': 'LTC', 'symbol2': 'USD', 'pricePrecision': 3, 'minLotSize': 0.08, 'minLotSizeS2': 10, 'maxLotSize': None, 'minPrice': '7.73', 'maxPrice': '2048'}, {'symbol1': 'XRP', 'symbol2': 'USD', 'pricePrecision': 5, 'minLotSize': 11, 'minLotSizeS2': 10, 'maxLotSize': None, 'minPrice': '0.0347', 'maxPrice': '10'}, {'symbol1': 'XLM', 'symbol2': 'USD', 'pricePrecision': 5, 'minLotSize': 32, 'minLotSizeS2': 10, 'maxLotSize': None, 'minPrice': '0.002', 'maxPrice': '10'},
```
- The values of pairs is a list

- Why ? if you look upwards, you will see pairs starts with a square bracket`

- If you don't believe me try:
```python
print (type(pairs))
#it will return <class 'list'>
```

## Pairs values: list --> referenced by index
- A list as opposed to data dictionaries does not contain key-value pairs

- It is made up of indexes

- So we read it as an index

```python
size = len(pairs)
print(size)
#size is 190

#we now loop through it
#Remember, indexes always start with zero, so we go from 0 to 190
for i in range(0, size):
    print (pairs[i])
```

***Sample output of values contents***
```python
{'symbol1': 'BTC', 'symbol2': 'USD', 'pricePrecision': 1, 'minLotSize': 0.0004, 'minLotSizeS2': 10, 'maxLotSize': None, 'minPrice': '3500', 'maxPrice': '350000'}
{'symbol1': 'ETH', 'symbol2': 'USD', 'pricePrecision': 2, 'minLotSize': 0.012, 'minLotSizeS2': 10, 'maxLotSize': None, 'minPrice': '26.41', 'maxPrice': '10000'}
{'symbol1': 'BCH', 'symbol2': 'USD', 'pricePrecision': 2, 'minLotSize': 0.02, 'minLotSizeS2': 10, 'maxLotSize': None, 'minPrice': '43.40', 'maxPrice': '8192'}
{'symbol1': 'DASH', 'symbol2': 'USD', 'pricePrecision': 3, 'minLotSize': 0.065, 'minLotSizeS2': 10, 'maxLotSize': None, 'minPrice': '12.98', 'maxPrice': '4096'}
```
- Now that's more like it!

- We now have a clean dictionary

## Read from dat dictionary !
- Oh yeah, job just got easier now.

- Now, we just need to read some cryptos from that dictionary

```python
#Say we are looking for BTT in particular
#we now loop through it
for i in range(0, size):
    #print (pairs[i])
    crypto = pairs[i]['symbol1']
    market = pairs[i]['symbol2']
    maxprice = pairs[i]['maxPrice']
    if ('BTT' in crypto):
        print (crypto,market,maxprice)
```

***Sample Output***
```
BTT USD 50
BTT EUR 50
BTT BTC 0.0001
```

## Full code

<script src="https://gist.github.com/codarrenvelvindron/82533ac33721260182749f25ba92f126.js"></script>


## \ Codarren /

## Credits
[Featured image](https://www.researchgate.net/figure/llustration-of-an-entangled-polymer-solution-Typical-configuration-of-a-tracer-filament_fig1_322937710)

[python data structures](https://docs.python.org/3/tutorial/datastructures.html)

