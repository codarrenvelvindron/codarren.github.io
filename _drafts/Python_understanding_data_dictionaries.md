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

**Get data from dict**
```
#Syntax: dictionaryname.get(key)
#exist
print (students.get('cvelvindron'))
#not exist
print (students.get('manone'))
```
![get data from dictionary](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/get_data_from.png)

**Get data from dict with custom error**
```
#Syntax: dictionaryname.get(key, custommessage)
#exist
print (students.get('cvelvindron', 'Unknown?'))
#not exist
print (students.get('manone', 'Unknown?'))
```
Here, we added 'Unknown?' instead of the default 'None'.

![custom message data dictionary](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/custom_message_data_dict.png)

**Changing the value of a key**
```
#Syntax: dictionaryname[key] = newvalue
students[cvelvindron] = 'Codarren Valaydon Velvindron'
print (students.get('cvelvindron', 'Unknown?'))
```