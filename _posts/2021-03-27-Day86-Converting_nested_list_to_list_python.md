---
layout: post
title: 'Day 86: Converting nested list to list python'
published: true
---
## Was stuck
![nested list to list python](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/python-logo.png)

This took me a little less than an hour to resolve.

I got to share this.

## The problem
1. I requested a json file from API.

2. The file was successfully downloaded.

3. Converted the .json to a regular dictionary in Python.

4. Tried to use the data which was in the form of a nested list.

5. It didn't work.

## How the file looked like?

```json
{"time":20210326,"data1m":"[[1616726520,0.5097,0.5098,0.5097,0.5098,393.331656],[1616739660,0.5156,0.5156,0.5156,0.5156,351.000000],[1616742120,0.5256,0.5256,0.5256,0.5256,266.704718],[1616745000,0.5276,0.5276,0.5276,0.5276,393.331656],[1616756280,0.529,0.529,0.529,0.529,100.000000],[1616758380,0.5285,0.5285,0.5285,0.5285,270.204337],[1616758920,0.5144,0.5144,0.5144,0.5144,29.116497],[1616777880,0.5478,0.5478,0.5478,0.5478,100.000000],[1616777940,0.55,0.55,0.55,0.55,25.000000],[1616778780,0.5569,0.5569,0.5569,0.5569,318.234026],[1616786160,0.5466,0.5466,0.5466,0.5466,36.498353],[1616790420,0.5341,0.5341,0.5341,0.5341,39.365079],[1616791380,0.5314,0.5314,0.5314,0.5314,100.000000],[1616797620,0.5372,0.5372,0.5372,0.5372,25.873897],[1616802900,0.5475,0.5475,0.5475,0.5475,211.141552]]","data1h":"[[1616371200,0.5948,0.5948,0.5889,0.5889,877.322676],[1616374800,0.577,0.577,0.57,0.5709,1438.578472],[1616378400,0.5746,0.5746,0.5746,0.5746,1000],[1616382000,0.5746,0.5746,0.5746,0.5746,1501.849955],[1616392800,0.58,0.58,0.58,0.58,344.613665],[1616396400,0.61,0.62,0.61,0.6128,2571.593217],[1616425200,0.5965,0.5965,0.59,0.59,194.748609],[1616428800,0.5894,0.5894,0.5876,0.589,958.658743],[1616432400,0.5942,0.5942,0.5942,0.5942,314.557388],[1616436000,0.6005,0.605,0.6005,0.605,1122.115702],[1616439600,0.583,0.583,0.5467,0.57,4691.163153],[1616443200,0.5377,0.5568,0.5377,0.5568,97.723713],[1616446800,0.5533,0.5533,0.5533,0.5533,18.019157],[1616464800,0.5619,0.5619,0.5619,0.5619,125],[1616468400,0.5626,0.5626,0.5626,0.5626,70.920725]]"}
```
Looks normal right?

## I then tried to convert this into a dictionary
The lenght of this dictionary was 4.

This corresponded to the 4 keys that were in the dictionary.

## I then checked the size of the list
The size was 5600+ in size.

## This was weird
This list contained hundreds of data, not multiple thousands.

I then did a length check of the dictionary.

## It returned that the type of the list was 'str'
This was by far the biggest clue here.

There was a problem.

## I tried to take a sample of that data.

Just a section and try to parse it and it was properly detected as list.

## I tried converting the string to list
It was a list now but still contained 5600+ elements.

## I tried separating elements of the list with a space and comma
So, it would be exactly like what was correctly recognized as list.

This didn't work, I was shocked.

## Solution
The solution was just to convert the list (which was in string format) to a list using the json library.

```
import json
json.loads(mylist)
```
That solution was ridiculously simple and somehow took me an hour to find out...

And you are welcome !

## \ Codarren /