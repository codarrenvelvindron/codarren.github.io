---
published: false
---
## Snippets
![limit api requests bash](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/limit_api_req_curl.png)

The pieces of code that you can integrate to your own.

## Last done
It's all about history now.

When you think of messages you sent to someone or posts that you wrote.

It's usually about "x seconds ago".

This is the concept we're touching today using the date command.

## Purpose
A file could be the output of an API request.

When API requests are limited, you might want to limit them based on the last time the API request was run.

Before you launch another API request, it's important to check when the last api request was made.

We could say one API request is to be made every 5 minutes.

Then you would set the threshold to 300 (seconds).

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