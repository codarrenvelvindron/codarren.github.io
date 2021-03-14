---
published: false
---
## API requests are costly

![python merge two dictionaries](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/python-logo.png)

If you don't respect limits, your account might be blocked temporarily or even banned.

## Basics of API rate limiting
- Decide on an update interval
- Create/Use your API request
- Get timestamp for last API launch
- Get timestamp for current API launch
- Calculate the time difference between API launches
- Compare time difference deviation from the update interval
- Launch API request (or not)

## I'll make it simple using an example
### Calculate time difference
The code for the actual time difference calculator is shown below

```python
#!/usr/sbin/python3
#API limiter
#A demonstration of how you can limit api requests based on a a count in minutes
#By Codarren Velvindron
#License: MIT
#Date:14/03/2021

from datetime import datetime

def calculate_time_diff(old,new,interval): #Calculates time deviation from interval
    """ if we deviate from 100% too much, we don't launch API requests """
    dt_first = datetime.strptime(old, '%Y-%m-%d %H:%M:%S.%f')
    dt_second = datetime.strptime(new, '%Y-%m-%d %H:%M:%S.%f')
    delta = (dt_second - dt_first)
    secs = delta.total_seconds()
    interval_secs = (interval * 60)
    percentage = ((secs/interval_secs) *100)
    approx_percentage = '{:.0f}'.format(percentage)
    approx_percentage = int(approx_percentage)
    result = 0
    if (approx_percentage >= 100): #if we have a match on the interval specified or above, return 1
        result = 1
    elif (approx_percentage <= 99): #percentage can be modified to accept delays
        result = 0
    else:                           #if we got any other response, it's considered as an exception
        result = 500 
    return result
```

***Notes***
- Inputs: takes as inputs the old timestamp, the new timestamp and the API launch frequency
- Outputs: Gives 1 for a success, 0 if the result deviates from the launch frequency, and 500 for any other exception

### Testing code
```python

#we set the API launch interval frequency
interval_to_check = 5 #in minutes

# Below are testing values to check
# 1 minute earlier
time1 = "2021-03-14 07:25:02.105544"
time2 = "2021-03-14 07:29:02.105544"

# 15 seconds earlier
#time1 = "2021-03-14 09:25:02.105544"
#time2 = "2021-03-14 09:29:47.105544"

# 4 seconds earlier
#time1 = "2021-03-14 09:25:02.105544"
#time2 = "2021-03-14 09:29:58.105544"

# 2 seconds earlier
#time1 = "2021-03-14 09:25:02.105544"
#time2 = "2021-03-14 09:30:00.105544"

# 1 second earlier
#time1 = "2021-03-14 09:25:02.105544"
#time2 = "2021-03-14 09:30:01.105544"

#Real application api values for 5 minute intervals
#time1 = "2021-03-14 09:15:02.385396"
#time2 = "2021-03-14 09:20:01.886873"

#time1 = "2021-03-14 09:20:01.886873"
#time2 = "2021-03-14 09:25:02.251402"

#time1 = "2021-03-14 09:25:02.251402"
#time2 = "2021-03-14 09:30:02.493466"

#time1 = "2021-03-14 09:30:02.493466"
#time2 = "2021-03-14 09:35:01.607366"

#check the interval
check_time = calculate_time_diff(time1,time2,interval_to_check)

def launch_api_request(): #this is your API request
    print('api_request_launched!')

if (check_time == 1):
    print ("\nLast request launch matches interval_to_check")
    launch_api_request()
elif (check_time == 0):
    print ("\nLast request launch exceeds interval_to_check")
    print ("Do Nothing")
else:
    print("\nAn exception was caught")
    print ("We don't know what is happening")
```

## Testing using real/fake values
By uncommenting part of the code, we launch the requests

**Our update frequency here is 5 minutes**

### 1 minute earlier (4 minutes)
```
time1 = "2021-03-14 07:25:02.105544"
time2 = "2021-03-14 07:29:02.105544"
```
***Result***
```
Interval to check set to:5 minutes
Convert these minutes to seconds:300 seconds
Seconds. Elapsed: 240.0
Real. Percentage 80.0
Approx. Percentage 80

Last request launch exceeds interval_to_check
Do Nothing
```

### 15 seconds earlier (4minutes 45seconds)
```
time1 = "2021-03-14 09:25:02.105544"
time2 = "2021-03-14 09:29:47.105544"

```

***Result***
```
Interval to check set to:5 minutes
Convert these minutes to seconds:300 seconds
Seconds. Elapsed: 285.0
Real. Percentage 95.0
Approx. Percentage 95

Last request launch exceeds interval_to_check
Do Nothing

```

### 4 seconds earlier (4minutes 56seconds)
```
Interval to check set to:5 minutes
Convert these minutes to seconds:300 seconds
Seconds. Elapsed: 298.0
Real. Percentage 99.33333333333333
Approx. Percentage 99

```

***Result***
```
Interval to check set to:5 minutes
Convert these minutes to seconds:300 seconds
Seconds. Elapsed: 285.0
Real. Percentage 95.0
Approx. Percentage 95

Last request launch exceeds interval_to_check
Do Nothing

```


### -1 to +1 second range (~5 minutes)
```
Interval to check set to:5 minutes
Convert these minutes to seconds:300 seconds
Seconds. Elapsed: 300.364529
Real. Percentage 100.12150966666667
Approx. Percentage 100

Last request launch matches interval_to_check
api_request_launched!
```

## Making it more strict
Here we are accepting 4minutes 59 seconds as an acceptable risk.

It is possible to modify the request limiter to be more strict.

We need to change from int to float.

Instead of using approximate percentage to 0 decimal places, we'll be using the approx percentage approximated to 2 dp.

**From this**

```
    if (approx_percentage >= 100): #if we have a match on the interval specified or above, return 1
        result = 1
    elif (approx_percentage <= 99): #percentage can be modified to accept delays
        result = 0
```

**To this**

```
    if (approx_percentage >= 100.00):
        result = 1
    elif (approx_percentage < 100.00)
        result = 0
```

***Results***
```
Interval to check set to:5 minutes
Convert these minutes to seconds:300 seconds
Seconds. Elapsed: 299.0
Real. Percentage 99.66666666666667
Approx. Percentage 99.67

Last request launch exceeds interval_to_check
Do Nothing
```

***Notes***

- Here we have decreased the tolerance to accept only 100.00 or more.

- Starting 1 second earlier is no longer accepted
