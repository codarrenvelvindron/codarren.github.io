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
## Checking the size of the json file