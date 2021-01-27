---
published: false
---
## Securitay

A nice skill to have is masking or hiding information.

You must know how the bad guys are doing it to be able to go after them.

## ls -lrth

```
codax@gaming:~/docs/filets_test$ ls -lrth
total 4.0K
-rw-rw-r-- 1 codax codax 523 zan  1 17:20 activity_01012021.txt
```

An ls on the file gives me the last modified date which is 01-01-2021

## stat
```
codax@gaming:~/docs/filets_test$ stat activity_01012021.txt 
  File: activity_01012021.txt
  Size: 523       	Blocks: 8          IO Block: 4096   regular file
Device: fd00h/64768d	Inode: 9701454     Links: 1
Access: (0664/-rw-rw-r--)  Uid: ( 1000/   codax)   Gid: ( 1000/   codax)
Access: 2021-01-02 22:01:53.875851299 +0400
Modify: 2021-01-01 17:20:35.627027561 +0400
Change: 2021-01-27 22:13:48.110334113 +0400
 Birth: -
```
The stat command gives me more information.

Of interest is the Access, Modify, and Change time.

## Access

Access is when the file has been read for the last time.

```
codax@gaming:~/docs/filets_test$ cat activity_01012021.txt > /dev/null
codax@gaming:~/docs/filets_test$ stat activity_01012021.txt 
  File: activity_01012021.txt
  Size: 523       	Blocks: 8          IO Block: 4096   regular file
Device: fd00h/64768d	Inode: 9701454     Links: 1
Access: (0664/-rw-rw-r--)  Uid: ( 1000/   codax)   Gid: ( 1000/   codax)
Access: 2021-01-27 22:17:13.406678752 +0400
Modify: 2021-01-01 17:20:35.627027561 +0400
Change: 2021-01-27 22:13:48.110334113 +0400
 Birth: -
```
By doing a cat on the file.

I am reading it and the Access time immediately changes.

## Modify

Modify is when the file has been written to last.

```
codax@gaming:~/docs/filets_test$ echo "end of file" >> activity_01012021.txt
codax@gaming:~/docs/filets_test$ stat activity_01012021.txt 
  File: activity_01012021.txt
  Size: 535       	Blocks: 8          IO Block: 4096   regular file
Device: fd00h/64768d	Inode: 9701454     Links: 1
Access: (0664/-rw-rw-r--)  Uid: ( 1000/   codax)   Gid: ( 1000/   codax)
Access: 2021-01-27 22:17:13.406678752 +0400
Modify: 2021-01-27 22:20:00.050111368 +0400
Change: 2021-01-27 22:20:00.050111368 +0400
 Birth: -
```
What I did here was append a line (with text: end of file) to the file.

Once this is done, the Modify time changes to current.

## Change
Change will record any modification done to the file.

```
codax@gaming:~/docs/filets_test$ chmod +x activity_01012021.txt 
codax@gaming:~/docs/filets_test$ stat activity_01012021.txt 
  File: activity_01012021.txt
  Size: 535       	Blocks: 8          IO Block: 4096   regular file
Device: fd00h/64768d	Inode: 9701454     Links: 1
Access: (0775/-rwxrwxr-x)  Uid: ( 1000/   codax)   Gid: ( 1000/   codax)
Access: 2021-01-27 22:17:13.406678752 +0400
Modify: 2021-01-27 22:20:00.050111368 +0400
Change: 2021-01-27 22:24:15.972858955 +0400
 Birth: -

```
If we are to displace it, change its permission, anything.

This field would get invariably populated with the current time

## Touching modify and access
We can modify both the Modify time(or mtime) and access Time (atime)

```
codax@gaming:~/docs/filets_test$ touch -d "2020-01-01 08:30:01" activity_01012021.txt 
codax@gaming:~/docs/filets_test$ stat activity_01012021.txt 
  File: activity_01012021.txt
  Size: 535       	Blocks: 8          IO Block: 4096   regular file
Device: fd00h/64768d	Inode: 9701454     Links: 1
Access: (0775/-rwxrwxr-x)  Uid: ( 1000/   codax)   Gid: ( 1000/   codax)
Access: 2020-01-01 08:30:01.000000000 +0400
Modify: 2020-01-01 08:30:01.000000000 +0400
Change: 2021-01-27 22:28:54.374224115 +0400
 Birth: -
```
We see here that both were set to a time in the past.

But the ctime is still set to current time.

That is normal as ctime will just record our action(s) time.

## How do we change ctime ?
The trick/reasoning is to go back in time.

Change the time and then come back.

We can change that time using below commnad:
```
codax@gaming:~/docs/filets_test$ sudo bash -c 'NOW=$(date +@%s); date -s "$2"; touch "$1"; date -s "$NOW"' -- \
>                 "activity_01012021.txt" "2020-01-01 08:30:01"
mer  1 zan 08:30:01 +04 2020
mer 27 zan 22:39:00 +04 2021

```

## Magic file
```
codax@gaming:~/docs/filets_test$ stat activity_01012021.txt 
  File: activity_01012021.txt
  Size: 535       	Blocks: 8          IO Block: 4096   regular file
Device: fd00h/64768d	Inode: 9701454     Links: 1
Access: (0775/-rwxrwxr-x)  Uid: ( 1000/   codax)   Gid: ( 1000/   codax)
Access: 2020-01-01 08:30:01.000000000 +0400
Modify: 2020-01-01 08:30:01.000000000 +0400
Change: 2020-01-01 08:30:01.000000000 +0400
 Birth: -
```
The file's metadata has been changed. 

It went back in time.

## Sources
[ctime change](https://unix.stackexchange.com/questions/36021/how-can-i-change-change-date-of-file)

## \Codarren/