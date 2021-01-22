---
published: false
---
## Postgresql basics

Today, we're checking out databases.

And specifically postgresql.

Let's just dive into it !

## Checking configuration settings
There are many configuration settings you would normally want to check on postgres.

Arguably the most important one is: Autovacuum.

## Autovacuum
Autovacuum, as its name indicates is an automatic vacuuming of dirt.

In the case of postgres, we are cleaning up what we refer to as dead tuples.


Think of it as records that are no longer in use.

Without autovacuum, your table would be filled up with bloat.

## Is autovacuum running?
We can check very fast if AV (AutoVacuum) is running by using:

```
show autovacuum;
```

**Result**:
```
autovacuum
on
```

## Alternative for showing settings
Another command using a more strict syntax involving the pg_settings table would be as follows:
```
SELECT * FROM pg_settings WHERE name='autovacuum';
```

**Result**:
```
name	setting	unit	category	short_desc	extra_desc	context	vartype	source	min_val	max_val	enumvals	boot_val	reset_val	sourcefile	sourceline	pending_restart
autovacuum	on		Autovacuum	Starts the autovacuum subprocess.		sighup	bool	default				on	on			f
```

## Does changing a setting require a restart or a reload ?
This is the most important question for an admin changing a database setting.

To answer this question, we will work a little on our previous query

```
select name, setting, context from pg_settings where name='autovacuum';
```

**Result:**
![result_av_context](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/result_av_context.png)

## Context
The context field above gives us the answer. 

**Sighup** : Changes can be made to postgresql.conf without restarting the server.

We can change the setting and apply it using
```
select pg_reload_conf();
```