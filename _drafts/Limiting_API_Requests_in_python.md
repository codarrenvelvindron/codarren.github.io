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
