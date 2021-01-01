---
layout: post
title: 'Day 1: Creating your free blog under 5 minutes'
published: true
---

## Yes, I am back to blogging.
After a few years off the map. I came to the realization that many people need help. If you can be of any use to the universe, why not!

## Why I stopped blogging ?
Let's start with the obvious.
My aim has always been to share what I know. But... time is limited. Using wordpress, is almost a sysadmin full time job. I'd have to install updates to wordpress and make sure that any plugin is up-to-date.

Wordpress and most CMS I have tried are a pain in the ass to say the least.

## Why I resumed blogging ?
Once I had a conversation with my buddy Kishan Takoordyal and I explained my predicament. I want to blog, everyday.
He pointed out that there are already solutions available to my problem.

On that day, I felt quite relieved. I thought i'd have to code some markdown to html interpreter (laughs).

## Jekyll now is your quick and elegant solution
If you want to create your personal brand with your own domain name.
And freely hosted on github servers.
You'll have to pay for the domain name though (or if you don't mind using something like: codarrenvelvindron.github.io). 
The repository can be found here:
[Jekyll Now repository](https://github.com/barryclark/jekyll-now) on GitHub.

## Setting it up
I'll show you how to:
1. Setup your own blog hosted on Github pages
2. Customize your blog
3. Get your own domain name/use your existing
4. Link your custom domain to your github.io
5. Publish your first blog post
 
## 1. Setup your own blog hosted on Github pages
 Login to your github account.
 If you don't have one, create one now! :)
 
 - Head over to [Github](https://github.com)
 - Sign up or login
 - Fork the [Barry Clark Jekyll-now project](https://github.com/barryclark/jekyll-now)
 to your own repository.
 - Rename your project by going to your own fork,
 doing **Settings** > **Repository Name** > **Rename**
 - The name should be like such: githubusername.github.io.
 - In my case, it is codarrenvelvindron.github.io
 ![rename repo](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/renam_repo.png "github rename repo")
 - Heading over to username.github.io, your page should be already visible ! or at least the forked page of the original author.
 
## 2. Customize your blog
The purpose here is to give it an identity.
 - Go back to your fork
 - Edit the file: _config.yml
![config_yml](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/config_yml.png)
 - Most important is to change the : name, description and avatar to your own.
 - Commit the changes and refresh the page.
 - Now, your blog is starting to take shape.
 
## 3. Get your own domain name/use your existing
 This step is optional, you may like the github.io domain (it's free!)
 Else, if you're like me:
  - Grab your own domain name for around $10 at [Godaddy](https://godaddy.com)

![domain_namegodaddy](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/godaddy_new_domain.png)
 - If you already own a domain name, proceed to next step.
 
## 4. Link your custom domain to your github.io
 - We start with github first
 - Go to your fork, in my case: https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/
 - Hop to: **Settings** > **Github Pages** > **Custom Domain**
 - Change to your custom domain and click on **save**
![custom domain github](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/custom_domain_github.png)
 - Next, we customize the domain on our dns provider.
 - Add a new DNS record,having, name:**blog** of type:**CNAME** and pointing to **username.github.io** (should match your username).
 ![cname creation](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/cname_creation.png)
 - Save your newly created CNAME (it's basically an alias to the github.io domain)

## 5. Publish your first blog post
 - Create a new markdown file under: **_posts** folder.
![blogpost jekyll-now](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/_posts.png)
 - using markdown - it's super easy - [Markdown Reference](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)

```
Basically it's one # for a title
# Day 1: Creating your free blog under 5 minutes

Two hashes for each subheader
## 4. Link your custom domain to your github.io
```

 
And Voilà ! We are done !
 