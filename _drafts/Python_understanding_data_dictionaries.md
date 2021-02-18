---
published: false
---
## Data Dictionary

We touch the concept of associative arrays today.

This is another name for data dictionary.

## Definition
A data dictionary is pretty much like a table in which the first column is the key (we can think of it as the primary key in DBs)

## Why ?
We use data dictionaries to store data where each piece of data share some kind of relation to each other.

## How ?
we have to have a dictionary name.

Let's say in this case we have a students dictionary.

```
students = {
'cvelvindron': 'Codarren Velvindron',
'jsnow': 'Jon Snow',
'rvazilito': 'Razor Vazilito',
'harvshrew': 'Harv Shrew',
}
print (students)
```

**Output**
![create dictionary python](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/create_dict.png)

**Thoughts**
We can see the concept of key-value pair.

cvelvindron is my key (and as such, it is unique.

**To see values of a key**
```
#print (dictionaryname['key'])
print(students['cvelvindron'])
```
The equivalent in SQL would be:
```
select * from students where id='cvelvindron';
```

**Length of dictionary**
```
#len(dictionaryname)
len(students)
==> 4
```

**Check if exists**
```
print ('smell' in students)
print ('cvelvindron' in students)
False
True
```
