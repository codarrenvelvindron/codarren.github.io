---
layout: post
title: 'Day 79: Create configs in python'
published: true
---
## Python got confs
![python configparser](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/python-logo.png)

And this is how you make your own.

## Why ?

This is the big question.

Well, for starters, this allows you to read static values from a single file.

And this is the config file.

## Let's do this !
### Creating a conf
```cfg
#We just create a conf with sections and key value pairs
[program1]
launch_frequency = 0.5

[program2]
update_frequency = 1
```

### Reading values
The values are read as you would in a dictionary.

We use the configparser module.
```python
import configparser

sample_config='config.cfg'
config = configparser.ConfigParser(allow_no_value=True)
config.read(sample_config)

print (config['program1']['launch_frequency'])
print (config['program2']['update_frequency'])
```
Note that we are also making use of the allow_no_value = True parameter.

This means that if you have a hanging parameter in your config file with no value.

#### Output
```
0.5
1
```
Here you see that it just prints the values that we asked it to print from the config file.

## \ Codarren /

## Credits
[configparser library python](https://docs.python.org/3/library/configparser.html)
