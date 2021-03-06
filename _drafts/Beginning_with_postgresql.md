---
published: false
---
## Postgresql basics
![pglogo](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/1024px-Postgresql_elephant.svg.png)

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

We can change the setting and apply it using the below:
```
ALTER system SET autovacuum = 'off';
select pg_reload_conf();
```

**postmaster** : Changes requires server restart.

In this case, any change will require DB server restart.
```
#Right after making your change
#and exiting the interactive pg session (Ctrl + d)
#we restart the server
pg_ctl stop && pg_ctl start

#OR

pg_ctl restart
```

## Testing ground
You may test your commands on online fiddlers like.

[dbfiddle.uk](https://dbfiddle.uk)

[sqlfiddle.com](http://sqlfiddle.com/)

They will probably prevent you from changing system settings though.

But have fun anyway !

## Credits:
[pglogo from wikipedia](https://upload.wikimedia.org/wikipedia/commons/thumb/2/29/Postgresql_elephant.svg/220px-Postgresql_elephant.svg.png)

[pgsql documentation](https://www.postgresql.org/docs/9.5/app-pg-ctl.html)

## \Codarren/