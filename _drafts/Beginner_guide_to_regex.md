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
## Match only 2-digit numbers
We know that 2-digit numbers would start with 10
and will end with 99.

The range 10 - 99

We split the range to 10 - 90 and 90 - 99.

So for the first digit we have:
```
[1-9]
```
And for the second digit, we have.
```
[0-9]
```

Combining the two we have the full range:
```
[1-9][0-9]
# if we try this we will get 100-900, as we are not specifying start and # end of text
```