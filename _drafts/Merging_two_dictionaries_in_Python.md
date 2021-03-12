---
published: false
---
## Dictionaries again!

Yes, and in Python it's possible to merge them.

## Why ?

Normally, you would merge a dictionary with another for minimalism.

Instead of using multiple dictionaries, you can use a single one for all your data.

## How ?
The important thing to ease the process is to use the same key.

Dictionaries are made of key-value pairs.

So if both dictionary have the same key, the merging process can be done easily using a loop.

## Let's do this!

```
#Create two empty dictionaries:
hero_data = {}
hero_ability = {}

#Populate
hero_data["flash"] = {'real_name' : 'Barry Allen'}
hero_ability["flash"] = {'primary' : 'speed', 'secondary' : 'time travel'}

#Merge them
for hero in hero_data:
    hero_data[hero].update(hero_ability[hero])
    print (hero_data[hero])
```