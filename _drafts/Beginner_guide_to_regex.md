---
published: false
---
## Long awaited

This has been asked for by many of my mentees.

Regex can become overwhelming at times.

Particularly, when you have no clue what you are doing.

## What is regex?
[Wikipedia excerpt](https://en.wikipedia.org/wiki/Regular_expression) ~ A **Reg**ular **ex**pression is a sequence of characters that define a search pattern.

## The secret
The secret technique to understand regex is simply by practicing.

This is a universal technique for all things in general.

The more you practice, the better you understand.

## Generating numbers
We'll start by generating non-random numbers between 1 to 1000.
```
seq 1 1000 > nonrandom_line_file.txt
```
Here we are using seq that generates numbers within a range.

## Matching everything
This is the trick, if you are able to match everything.

You'll be able to progress to filtering what you require.

```
cat nonrandom_line_file.txt | egrep '[1-9]'
997
998
999
1000
#We check if we match all the 1000 numbers
#By doing a word count on the number of lines
cat nonrandom_line_file.txt | egrep '[1-9]' | wc -l
1000
```
