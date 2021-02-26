---
layout: post
title: 'Day 57: Python string format library'
published: true
---
## .format
![python format](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/python_format.png)

Yes, we're talking about that one.

## In the world of strings
Strings are everywhere in python.

And we're not talking about that other piece of clothing.

## The old way of doing things
Remember the days of the %d for 'decimals' and %s for 'strings' ?

Well, if you didn't know, those days are gone.

## The new way
The new way is way more intuitive and we use a pair of curly braces to represent an 'object'

### 1. It starts with a single quote
```python
'{}'.format('mysingleobject')
```
**Output**
```
'mysingleobject'
```

We basically say, there is a string, **that string** needs to be **formatted**, and here's the **data coming**.

### 2. Double object
```python
'{}{}'.format('double','object')
```
**Output**
```
'doubleobject'
```

### 3. Let's space things up
```python
'{}{}'.format('double ','object')
```
**Output**
```
'double object'
```

### 4. There is a better way to space
```python
'{} {}'.format('double','object')
```
**Output**
```
'double object'
```

### 5. Don't like spaces ?
```python
'{}_{}'.format('under','score')
```
**Output**
```
'under_score'
```

### 6. Did you say positional ?
```python
'{1}_{0}'.format('under','score')
```
**Output**
```
'score_under'
```

### 7. Can we get a var in the mix ?
```python
>>> var1 = "over"
>>> var2 = "under"
>>> '{}_{}'.format(var1,var2)
'over_under'
>>> '{1}_{0}'.format(var1,var2)
'under_over'
```

### 8. Did you say rainbow ?
```python
>>> '{} {} {}'.format(var1,var2,'the rainbow')
'over under the rainbow'
```

### 9. No, I meant rain.
```python
>>> '{} {} {:.8}'.format(var1,var2,'the rainbow')
'over under the rain'
```

### 10. Let's stay under.
```python
>>> '{:.0} {} {:.8}'.format(var1,var2,'the rainbow')
' under the rain'
```
### 11. Are you lagging? or multiplying ?
```python
>>> '{0} {0} {1} {1} {2} {2}'.format(var1,var2,'the rainbow')
'over over under under the rainbow the rainbow'
```

## \ Codarren /

## Credits
[python string formatting](https://docs.python.org/3/library/string.html#string-formatting)