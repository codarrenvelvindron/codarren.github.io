---
published: false
---
## It can be hard

To dig for gold with a fork.

## The right tools
I have to admit.

I read json the hard way.

When i say the hard way, I meant the super hard way.

By reading a file line by line and looping through.

## Hard when you don't know the easy way
Kind of funny but there wasn't a straightforward guide to showing me the way to do it.

Partly because of the particular problem I was facing.

## Normal json file
```json
{
"pizzas" : [
	{
      "name": "Kebab King",
      "size": ["small", "medium", "large"],
      "price": ["200", "350", "550"]
    },
	{
      "name": "Vegetarian Paradise",
      "size": ["small", "medium", "large"],
      "price": ["150", "250", "490"]
    }
  ]
} 
```
I call this a normal .json file because it features a main key called "pizzas"


## Jq beautify
Here we use jq to beautify the json file and make it more readable

Command: jq '.' pizzas.json
```json
{
  "pizzas": [
    {
      "name": "Kebab King",
      "size": [
        "small",
        "medium",
        "large"
      ],
      "price": [
        "200",
        "350",
        "550"
      ]
    },
    {
      "name": "Vegetarian Paradise",
      "size": [
        "small",
        "medium",
        "large"
      ],
      "price": [
        "150",
        "250",
        "490"
      ]
    }
  ]
}

```
## json module to the rescue
There is a native python module called json.

We'll first import it and load our .json file.
```
import json

with open("pizzas.json") as file:
    data = json.load(file)
```

## Python dict conversion
The above command: json.load converts our .json file to a python dict.

## Let's have fun now!
### Length of json file

```
import json

with open("pizzas.json") as file:
    data = json.load(file)
    print (len(data))
    #Result: 1
```
The length gives us a result of 1 as it is taking from the root node (or root key)

To get the number of nodes associated with 'pizza'

We change our command to include pizzas

```
    print (len(data["pizzas"]))
    #Result: 2

```

## Showing values of keys
Python dicts use something called key-value pairs.

Now, we want to get the first element of the dictionary.

Remember that arrays, lists and dictionaries always start with first element **0**!

```
    print (data["pizzas"][0])

#Result: {'name': 'Kebab King', 'size': ['small', 'medium', 'large'], 'price': ['200', '350', '550']}

```

## Going deeper
Now, I want some more precise information.

I have to navigate through the keys.

Say I want the price of a Kebab King size small

```
    print (data["pizzas"][0]["price"][0])
```
It's very easy to navigate through.

## See you tomorrow!

## \ Codarren /

## Credits
[python docs json](https://docs.python.org/3/library/json.html)

[example docs](https://www.freecodecamp.org/news/python-read-json-file-how-to-load-json-from-a-file-and-parse-dumps/)

[Featured image - json power rangers](http://rangercentral.com/database/1993_mightymorphin/images/mmpr-rg-jason.jpg)