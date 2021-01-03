---
published: false
---

## Here's an idea: A publisher bot
I have been thinking about this since yesterday.

## One blog post a day, keeps the neurones at play
My initial goal for this year was to publish one blog post a day.

But, I believe I can do more.

Basically, the idea would be to write as much as I can per day.

And there would be a publisher bot that would post it everyday.

## What do you need?
1. Main updated repository
2. Server to host the bot
3. Getting fancy

## 1. Main updated repository
This would be where we would write the blog posts.

As we would write new posts, they would be stored in the updated repository

Simply, it would be just markdown files ready to be published

## 2. Server to host the bot
Doesn't necessarily have to be a paid server.

We could self host this if willing to keep that PC powered on.

 - This server would keep checking our main repository for new posts.
 
 - An RNG (Random Number Generator) for cycling through the different blog posts.

 - After determining the date and checking if a blog post was already published on that date(today).

 - If not found, the bot the bot would add the necessary formatting to publish the post.

 - Formatting done, the file would then be committed.

 - Automatic sync happens.
 
 - Blog is updated with the newly publication !

## 3. Getting fancy
After the post is published, we can do what we want.

1. Get the url of the blog post
2. Publish it to social media ?

I'm guessing a curl will do using the access token and profile ID of the social media.

## Challenge accepted
More than one blog post per day ? Yes, we can.

