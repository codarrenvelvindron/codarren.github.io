---
published: false
---

## The publisher bot is taking shape

A few days ago, I blogged about that publisher bot [idea](https://blog.codarren.com/Day3-Making_your_own_publisher_bot/).
Guess what ? It's ready

## What can the Publisher bot do?
 - Sync local clone to remote git repo (the blog)
 
 - Create temp directories and zero temp files
 
 - Checks if we have already published an article for today
 
 - Looks for unpublished drafts
 
 - Identifies a draft to publish at random
 
 - Adds some formatting to the draft
 
 - Publishes the draft and syncs to remote repo (blog)
 
## What the Publisher can't do?
 - Publish to Linkedin and Twitter (Work in progress)
 
## How to use it ?
- If you already have a blog that uses jekyll-now it works out of the box

- Copy the script after downloading to a directory (say /tmp)
```
cp -p ~/Downloads/publisher_bot_v7.sh /tmp/
```
- Clone remote repository (your jekyll blog) in the same folder (/tmp/)
```
cd /tmp/
git clone [git@github.com:codarrenvelvindron/codarrenvelvindron.github.io.git]
```
