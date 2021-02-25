---
layout: post
title: 'Day 56: DIY application log facility in Python'
published: true
---
## I made my own app logger in Python
![app logger](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/applogger_python.png)

And you can too ! Or you can just use what I already built :)

Here's how.

## Why ?
Python does have a logging for error messages.

But in my case, I needed to log everything, not just errors.

## Looked everywhere.
But couldn't find anything that matched my usecase.

So, I built my own logging facility.

## Building it
First, you need to know what you want.

Basically, it's a logging facility.

1. Not create clutter, store all the logs in a proper folder.

2. The name of the log should be chosen by me.

3. Logs should have a date so that for each date, there is a specific log.

4. Each action should have a unique timestamp.

## Class creation
```python
import os
from datetime import datetime

class Logger:
    __logname = ''
    __folderpath = ''
    __logpath = ''
    __gen_date_v = ''
    __timestamp = ''
```
Everything I needed is kept as a global variable.

Imports:

os --> For file saving and creating directory

datetime --> For generating current dates and formatting variables


## Class init method
```python
    def __init__(self, logname):
        """ Init for class """
        self.__logname = logname
```
Here, I am taking logname as an argument (user provided).

## __make_folder function

```python
    def __make_folder(self):
        cwd = os.getcwd()
        dirname = self.__logname + "_logs"
        self.__folderpath = os.path.join(cwd, dirname)
        try:
            os.makedirs (self.__folderpath,exist_ok = True)
        except OSError:
            pass
```
We get the current working directory and store it to cwd var.

We concatenate the user-provided name with '_logs' for the folder

We join everything together in the full folder path.

Notice the exist_ok parameter, which we prevent any complain if the directory already exists.

## __gen_date function

```python
    def __gen_date(self):
        """ To generate date for logfile """
        now = datetime.now()
        format = "%d%m%Y"
        self.__gen_date_v = now.strftime(format)
```
This justs gives us the current date, stored in the global variable.

## __gen_log function

```python
    def __gen_log(self):
        """ Create log with with date and extension """
        self.__gen_date()
        logdate = self.__gen_date_v
        logext = ".log"
        current_logname = str(self.__logname) + "_" + str(logdate) + logext
        self.__logpath = os.path.join(self.__folderpath, current_logname)
        if not os.path.exists(self.__logpath):
            f = open (self.__logpath, "w")
            f.close()
```
This function is where we generate the log file.

We first call gen_date, to refresh current date (in case the program was running on the 24/02 at 23:59 and we suddenly are in the future! (25/02 at 00:00)

We add the extension (.log). 

You can change that to anything you want: (.csv, .txt)

If the file exists, we continue without doing anything.

## __gen_timestamp function

```python
    def __gen_timestamp(self):
        self.__timestamp = datetime.now()
```
We simply generate a timestamp for our log.

## write function
```python
    def write(self, action='action', data='data'):
        self.__make_folder()
        self.__gen_log()
        self.__gen_timestamp()

        timestamp = str(self.__timestamp)
        data = str(data)
        action = str(action)
        separator = " "
        textual = timestamp + separator + action + separator + data
        f = open (self.__logpath, "a")
        f.write(f'{textual}\n')
        f.close
```
Our final function (method), where we create a folder, create a log file and generate a timestamp for each log entry.

Here, I am using a space as a separator, but you may use a semicolumn, in case of a .csv.

## Usage
Everything is well detailed on the [repo that i just created](https://github.com/codarrenvelvindron/AppLogger-python).

And don't forget to star the repo if it was useful to you :) !

## \ Codarren /
