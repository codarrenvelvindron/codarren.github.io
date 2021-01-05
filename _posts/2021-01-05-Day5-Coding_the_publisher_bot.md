---
layout: post
title: 'Day 5: Coding the publisher bot'
published: true
---

## The publisher bot is taking shape

A few days ago, I blogged about that publisher bot [idea](https://blog.codarren.com/Day3-Making_your_own_publisher_bot/).
Guess what ? It's ready
![robot editor](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/robot-eic-rm-vrge.webp "robot editor")


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


- Modify those lines as per your requirements in the script
```
#User modifiable
github_blog_reponame=codarrenvelvindron.github.io #your blog repo name = locally cloned
start_date='2020-12-31' #this is the date you started blogging, it serves as a Day counter
```

- Clone remote repository (your jekyll blog) in the same folder (/tmp/) as the script
```
cd /tmp/
git clone [git@github.com:codarrenvelvindron/codarrenvelvindron.github.io.git]
```

- Create your new drafts on your remote repository
```
#Naming convention should follow this:
#Words in title separated by underscores
#e.g. Making_your_own_publisher_bot.md
#edit the file with something like prose.io (this is what i use)
```

- After draft is done, run the script
```
chmod +x publisher_bot_v7.sh
./publisher_bot_v7.sh
```

## Code
<script src="https://gist.github.com/codarrenvelvindron/7074b20f4913a088a6a47db3a29d651e.js"></script>

## Credits
 - [Robot image](https://www.theverge.com/2011/10/6/2473569/eeple-media-group-robot-editors)
