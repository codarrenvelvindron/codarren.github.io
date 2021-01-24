---
layout: post
title: 'Day 24: File ACL under GNU-Linux'
published: true
---
## Acess Control Lists
![getfacl_featured](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/getfacl_featured.png)

There is a transparent way of managing files and directories under GNU/Linux.

And it's called ACL.

## A little history
There are few projects that you never meant to be managing.

But there you are doing it.

I had inherited from one of those.

Due to the people actually working on it leaving the company.

## The problem ?
You have set permissions to files and directories.

You have added the new user to the valid users of that particular directory.

The owner's/group and users permissions are already set and you know it's the right thing (chmod/chown)

But... When the user connects to the share, he gets an access denied.

Chances are you're blocked by an ACL.

## Resolving it
If you are giving a user access to a whole directory, that should be done recursively.

Else, the user will be able to enter the directory.

But he won't be able to do anything else, like reading and changing files.

## Steps
1. Get the current ACL
```
getfacl Downloads
```
![downloads facl](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/facl_downloads_before.png)


2. Set the new ACL, positioned to the new user
```
setfacl -d -Rm u:bogususer:rwx Downloads/
```

d = d for default --> apply this acl change to the default acl. Useful if you have a default ACL already in place.

R = recursive --> When you're applying a change to a directory, you'd want to apply it to the files inside. This does it.

m = modify --> modifies current acl

u = user --> Specify username, in my case i created a new bogususer

rwx = read/write/execute --> options are r,w,x. You could select rw for read/write, and so on.

3. Check if the new ACL is successfully created
```
getfacl Downloads/
```
![getfacl](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/getfacl_end.png)

4. Success !

## \Codarren/