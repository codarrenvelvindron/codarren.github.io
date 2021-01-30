---
published: false
---
## Shell scripting

I'd like to see more people doing shell scripting.

## Shell v/s Powershell
Unlike Powershell, GNU/Linux shell scripting is easily remembered.


I remember the first time I was checking out Powershell.

God forgive, the commands were so long and so senseless.


GNU/Linux shell scripting is very different from Powershell.

The syntax themselves are very simple.

And most importantly, we are reusing 'normal' system commands.

## Variables
Variables are simple to create.

1. Single quotes(') for strings that would normally not change and needs no interpretation.
    ```
    #Directory variable
    docs_directory='/usr/local/lib/docs'
	```
2. Double quotes would be used for strings that require interpretation and change dynamically.
	```
    document_file="$docs_directory/mydocument.txt"
    ```
Because we are using the previously set variable, we need to interprete(expand) document_file variable

![bash variables linux](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/result_b1.png)