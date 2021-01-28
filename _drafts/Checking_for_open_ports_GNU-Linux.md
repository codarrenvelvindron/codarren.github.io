---
published: false
---
## A port

Think of a port as a running application.

## Why would you check for a port up on a host ?
1. To know if the application is up and running

2. To know if the connection is open between local and remote host.

## How do you check for open ports ?
Normally as input you would need:
host and port

Output you would get:
Connection successful

## Checking with nc
nc or netcat is one of the most handy apps for checking for an open port.

```
codax@gaming:~$ nc -zvw2 blog.codarren.com 443
Connection to blog.codarren.com 443 port [tcp/https] succeeded!
```
Here we are specifying the wait time as 2 seconds (should be enough!).

And as my site is running on port 443, connection succeeds.

## What if nc is N/A?
Often, nc is not bundled by default with an OS.

Also, you might not be able to install apps on the target OS.

## Telnet
A viable alternative might be telnet

```
codax@gaming:~$ echo -e '\x1dclose\x0d' | timeout --signal=9 2 telnet blog.codarren.com 443
Trying 172.67.183.71...
Connected to blog.codarren.com.
Escape character is '^]'.

telnet> close
Connection closed.
```
Above, we are using a one liner that closes after being connected to the server.

It might also terminate the connection if it's exceeding the timeout that we specified (2) like below when we are testing against port 22.

```
codax@gaming:~$ echo -e '\x1dclose\x0d' | timeout --signal=9 2 telnet blog.codarren.com 22
Trying 104.21.40.91...
Killed
```

## Automating port checking
A simple way using a bash script to automate port checking would be to use exit codes.

```
codax@gaming:~$ echo -e '\x1dclose\x0d' | timeout --signal=9 2 telnet blog.codarren.com 22
Trying 104.21.40.91...
Killed
codax@gaming:~$ echo $?
137
codax@gaming:~$ echo -e '\x1dclose\x0d' | timeout --signal=9 2 telnet blog.codarren.com 443
Trying 104.21.40.91...
Connected to blog.codarren.com.
Escape character is '^]'.

telnet> close
Connection closed.
codax@gaming:~$ echo $?
0
```
A connection success gives an exit code of 0.

And a connection timeout gives an exit code of 137

We could do it as simply as the bash script below:

we name our script testport.sh

vim testport.sh
```
#!/bin/bash
echo -e '\x1dclose\x0d' | timeout --signal=9 2 telnet $1 $2

if [[ $? -eq 0 ]];then
  echo "Host $1 on port $2 --> connection success!"
elif [[ $? -eq 137 ]];then
  echo "Host $1 on port $2 --> connection attempt timeout!"
else
  echo "Host $1 on port $2 --> exception found!"
fi
```
## Make it executable
```
chmod +x testport.sh
```

## Run your test
```
./testport.sh blog.codarren.com 443
```