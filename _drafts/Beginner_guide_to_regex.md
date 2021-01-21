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

Start of text is denoted by
```
^
```

Adding it in the mix:
```
^[1-9][0-9]
```
Here, what we are saying is that:
1st digit starts with 1 to 9.
And 2nd digit is 0 to 9.

This time, we're matching even more numbers.
```
998
999
1000
codax@gaming:~/Projects/tests/grep$ cat nonrandom_line_file.txt | egrep '^[1-9][0-9]' | wc -l
991

```

Adding an "end of text"
```
End of text denoted by:
```
$
```

Combining everything:
```
^[1-9][0-9]$


Adding in grep

```
# grep -e or egrep can be used, they are the same
95
96
97
98
99
codax@gaming:~/Projects/tests/grep$ cat nonrandom_line_file.txt | egrep '^[1-9][0-9]$'
```

## Match only 3-digit numbers
