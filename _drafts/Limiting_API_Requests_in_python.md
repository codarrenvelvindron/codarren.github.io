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
#Date:14/03/2021

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
