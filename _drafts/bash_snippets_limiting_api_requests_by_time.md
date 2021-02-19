---
published: false
---
## Snippets
![limit api requests bash](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/limit_api_req_curl.png)

The pieces of code that you can integrate to your own.

## Last modified
It's all about history now.

When you think of messages you sent to someone or posts that you wrote.

It's usually about "x seconds ago".

This is the concept we're touching today using the date command.

## Purpose
On all public APIs, the number of requests you can make is limited.

This is done to prevent abusive/idiotic use of APIs.


Let's say we are limited to one API request per 5 minutes (exagerrated)

Then, we would set the threshold to 300 (seconds).

And we'll be able to make a request every 300 seconds only.

If we were to exceed this threshold, the API would just return us with an error message.

## Code
<script src="https://gist.github.com/codarrenvelvindron/869f841a5326f92dbbe32987bbff4c2d.js"></script>

## Results - threshold exceeded
```
#Checking file at location /home/codax/Projects/bash/api/myfile.txt
--> /home/codax/Projects/bash/api/myfile.txt was modified 170 secs ago
--> File exceeded threshold-100, Launch the request!
curl: (6) Could not resolve host: your.api.url
```

## Results - below threshold
```
#Checking file at location /home/codax/Projects/bash/api/myfile.txt
--> /home/codax/Projects/bash/api/myfile.txt was modified 292 secs ago
--> File didnt exceed threshold-999, exiting
```

## \ Codarren /

## Credits
[stackoverflow question](https://stackoverflow.com/questions/1819187/test-a-file-date-with-bash)