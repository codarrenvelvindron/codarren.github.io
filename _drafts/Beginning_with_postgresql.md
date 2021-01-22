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
We can check very fast if 