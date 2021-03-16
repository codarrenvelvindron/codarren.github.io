---
published: false
---
## Errors
![understand errors python](https://raw.githubusercontent.com/codarrenvelvindron/codarrenvelvindron.github.io/master/images/python-logo.png)

I wrote about [python error handling](https://blog.codarren.com/Day73-Dealing_with_python_common_errors/) a few days ago.

## And a Python beginner came to me

Explained his dilemma.

That person didn't understand the errors at all and didn't know how to interprete them.

And this is kind of a big deal.

## Interpreting errors
So today, we'll talk about understanding errors to start with.

And then the critical thinking behind correcting them.

## I'll make it easy!
### We got an error message thrown by python

```
Traceback (most recent call last):
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

#### 1. Actual error = bottom
```
  File "/usr/lib/python3.9/urllib/request.py", line 641, in http_error_default
    raise HTTPError(req.full_url, code, msg, hdrs, fp)
urllib.error.HTTPError: HTTP Error 502: Bad Gateway
```
- 1st line: we can see that the error lies in the request.py, which is the python urllib module

- 2nd line: That module is raising an HTTPError, with the parameters i fed into it.

These are my actual parameter names.

- 3rd line: And the actual error is an HTTP Error 502 : Bad gateway

***Notes***

- Since the actual issue is an HTTP error and the error code is a 502.

- I can already say that 100% this is a server error [See why?](https://blog.codarren.com/Day26-http_response_status_codes_explained/)

- So I already know that, I'm not dealing with server problems properly.

- As if there is a problem with the server, my program shouldn't crash like that.


#### 2. Let's keep reading from this bottom error to top.
We'll split the rest of the error to make it easier to understand

##### Upper block --> Furthest module from the error
- This is the last module that was executed

- And we should not worry about this

- This part is just directing us to where the issue is.

- It's the higher up module in my program.

```
Traceback (most recent call last):
  File "/analyst_client.py", line 19, in <module>
    ca.main()
```

##### Upper Intermediate block --> Leads us to the error

 - This is one of the classes that I made
 
 - It contains the api_call that was made using the class in the error block below
 ```
 File "/alkoanalyst.py", line 476, in main
    self.__check_archived_orders()
  File "/alkoanalyst.py", line 349, in __check_archived_orders
    content = self.__api.archived_orders(pair_slash)
  File "/alkoanalyst.py", line 89, in archived_orders
    return self.api_call('archived_orders', {}, 1, couple)
  ```
  
  ##### Intermediate block --> The actual code we have to modify <--
  - This is a module for making API calls
  
  - Since it's closer to the actual python module error at the bottom.
  
  - It contains the code that I will have to modify !
  ```
  File "/newapi.py", line 59, in api_call
    answer = self.__post(url, param)  # Post Request
  File "/newapi.py", line 46, in __post
  ```
  
  ##### Lower Intermediate block --> python library that raised the error

 - In this block we're still saying that the reported error concerns
 
 - The urllib library, request module so it's linked to the error
 ```
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
  ```
  ##### Lower Block --> Actual error !
```
  #--> ACTUAL ERROR <--
  File "/usr/lib/python3.9/urllib/request.py", line 641, in http_error_default
    raise HTTPError(req.full_url, code, msg, hdrs, fp)
urllib.error.HTTPError: HTTP Error 502: Bad Gateway
```

## Conclusion
- The upper part leads us to the error

- The Intermediate part is the code we need to modify

- The lower part is the actual error that was raisde by the module.

This is a simplified methodology to understand errors.

But in all this the most important part is to understand the error.

## \ Codarren /