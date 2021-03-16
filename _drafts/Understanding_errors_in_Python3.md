---
published: false
---
## Errors

I wrote about [python error handling](https://blog.codarren.com/Day73-Dealing_with_python_common_errors/) a few days ago.

## And a Python beginner came to me

Explained his dilemma.

That person didn't understand the errors at all and didn't know how to interprete them.

And this is kind of a big deal.

## Interpreting errors
So today, we'll talk about understanding errors to start with.

And then the critical thinking behind correcting them.

## I'll make it easy!
### We got a piece of code

```
raceback (most recent call last):
  File "/analyst_client.py", line 19, in <module>
    ca.main()
  File "/alkoanalyst.py", line 476, in main
    self.__check_archived_orders()
  File "/alkoanalyst.py", line 349, in __check_archived_orders
    content = self.__api.archived_orders(pair_slash)
  File "/alkoanalyst.py", line 89, in archived_orders
    return self.api_call('archived_orders', {}, 1, couple)
  File "/newapi.py", line 59, in api_call
    answer = self.__post(url, param)  # Post Request
  File "/newapi.py", line 46, in __post
    page = urllib.request.urlopen(req).read()
  File "/usr/lib/python3.9/urllib/request.py", line 214, in urlopen
    return opener.open(url, data, timeout)
  File "/usr/lib/python3.9/urllib/request.py", line 523, in open
    response = meth(req, response)
  File "/usr/lib/python3.9/urllib/request.py", line 632, in http_response
    response = self.parent.error(
  File "/usr/lib/python3.9/urllib/request.py", line 561, in error
    return self._call_chain(*args)
  File "/usr/lib/python3.9/urllib/request.py", line 494, in _call_chain
    result = func(*args)
  File "/usr/lib/python3.9/urllib/request.py", line 641, in http_error_default
    raise HTTPError(req.full_url, code, msg, hdrs, fp)
urllib.error.HTTPError: HTTP Error 502: Bad Gateway
```