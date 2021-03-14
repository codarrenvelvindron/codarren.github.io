---
published: false
---
## API requests are costly

If you don't respect limits, your accont might be banned.

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
    if (approx_percentage == 100): #if we have a match on the interval specified, return 1
        result = 1
    elif (approx_percentage <= 99) or (approx_percentage >=100): #percentage can be modified to accept delays
        result = 0
    else:                           #if we got any other response, it's considered as an exception
        result = 500 
    return result
```

***Notes***
- Inputs: takes as inputs the old timestamp, the new timestamp and the API launch frequency
- Outputs: Gives 1 for a success, 0 if the result deviates from the launch frequency, and 500 for any other exception

### Testing the code
```

#we set the API launch interval frequency
interval_to_check = 5 #in minutes

# Below are testing values to check
# 1 minute later
#time1 = "2021-03-14 07:25:02.105544"
#time2 = "2021-03-14 07:31:02.105544"

# 15 seconds later
#time1 = "2021-03-14 09:25:02.105544"
#time2 = "2021-03-14 09:30:17.105544"

# 4 seconds later
#time1 = "2021-03-14 09:25:02.105544"
#time2 = "2021-03-14 09:30:06.105544"

# 2 seconds later
#time1 = "2021-03-14 09:25:02.105544"
#time2 = "2021-03-14 09:30:04.105544"

# 1 second later
#time1 = "2021-03-14 09:25:02.105544"
#time2 = "2021-03-14 09:30:03.105544"

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