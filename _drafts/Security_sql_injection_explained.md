---
published: false
---
## SQLi
![sql injection featured](https://www.welivesecurity.com/wp-content/uploads/2017/08/black_hat-e1502433391631.jpg)
SQL injection is something we hear about in the news quite often.

## Injection attacks
According to [OWASP top 10](https://owasp.org/www-project-top-ten/) injection attacks are the most prevalent.

And for that same reason, you should be aware of it.

## What ?

Let's start with the name: **SQLi** or **SQL I**njection.

SQL(Structured Query Language) --> The language of databases (DB)

Injection --> We 'inject' malicious code that is interpreted by the Database.

## Why ?

SQLi happens due to improper sanitization of user input.

Say we have a textbox that accepts userID as input.

I happen to know that on this particular website, my user ID is 578920.

What if there was a way to get all user IDs and all data associated with all those user IDs.


SQLi allows an attacker to do just that.

Getting information he is not supposed to have access to.

## How ?
Normally, a rookie way of knowing if an application is vulnerable to SQLi would be to use the single quote character
```
'
```
If that input is not sanitized, the single quote would be rightly interpreted by the application as SQL data.

And in SQL, single quote MUST end with another single quote.

Else, an error would be thrown at you:
```
ERROR: You have an error in your SQL syntax. Please check the manual...
```

## Bingo !
If you see a message like this.

It means that you are interfacing directly with the Database, behind the web application.

Hope SQLi is clearer to you now :)

## Credits


[sql injection featured](https://www.welivesecurity.com/wp-content/uploads/2017/08/black_hat-e1502433391631.jpg)

[wikipedia definition](https://en.wikipedia.org/wiki/SQL_injection)


## \ Codarren /