---
layout: post
title: 'Day 35: Cracking passwords with john the ripper'
published: true
---
## John the Ripper
![jtr](https://raw.githubusercontent.com/codarrenvelvindron/codarrenvelvindron.github.io/master/images/jtr.webp)

John is a utility developed by [openwall](https://www.openwall.com/john/) as a password security auditing and password recovery tool.


## Installing John the ripper jumbo on Ubuntu
[A good tutorial here](https://linuxreference.wordpress.com/2019/06/07/howto-install-john-the-ripper-in-ubuntu-18-04/)

Jumbo includes pdf extensions.

## Using a test document
1. Open libre office

2. Create new document

3. Add some very secret content

4. Save with password

![pdf new pass](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/pdf_save_password.png)

## I forgot my pass !
I remember it was 3 letters and 3 numbers.

Let's use John the ripper and 'fortunately' recover my very important content.

## Generate a wordlist
We use crunch to get ourselves a wordlist.

```
sudo apt install crunch
crunch 6 6 ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890 > /tmp/Wordlist.txt
```
Btw a wordlist of 6 characters weighs 14GB.

## We create a hash of our pdf file

Can be done online now, using [this site](https://www.onlinehashcrack.com/tools-pdf-hash-extractor.php)

We save the hash.
```
cat pdfhash.txt
/home/codax/Downloads/secret_doc.pdf:$pdf$2*3*128*-4*1*16*232714f2abf1328a437a85dca0ebb19c*32*c61ccea8415634b2c03992c52295516128bf4e5e4e758a4164004e56fffa0108*32*199b4e27572e4b45cb0a78e376c1f77454bd27d544a4009f99031b2ff749add
```

## Let's rip it now

```
codax@gaming:~/docs/johnt/JohnTheRipper/run$ time ./john --fork=4 --wordlist=Wordlist.txt pdfhash.txt 
Using default input encoding: UTF-8
Loaded 1 password hash (PDF [MD5 SHA2 RC4/AES 32/64])
Cost 1 (revision) is 3 for all loaded hashes
Node numbers 1-4 of 4 (fork)
Press 'q' or Ctrl-C to abort, almost any other key for statu
```

Above, we're using 4 cpu cores in parallel to speed up the password recovery.

We are trying out all possible 6 character combinations amounting to 2176782336 combis.

## Progress

```
codax@gaming:~/docs/johnt/JohnTheRipper/run$ time ./john --fork=4 --wordlist=Wordlist.txt pdfhash.txt
Using default input encoding: UTF-8
Loaded 1 password hash (PDF [MD5 SHA2 RC4/AES 32/64])
Cost 1 (revision) is 3 for all loaded hashes
Node numbers 1-4 of 4 (fork)
Press 'q' or Ctrl-C to abort, almost any other key for status
3 0g 0:00:00:11 0.12% (ETA: 01:38:34) 0g/s 58855p/s 58855c/s 58855C/s ABTSGK..ABTSGW
2 0g 0:00:00:11 0.12% (ETA: 01:36:28) 0g/s 59668p/s 59668c/s 59668C/s ABUJ3B..ABUJ3N
1 0g 0:00:00:11 0.12% (ETA: 01:37:49) 0g/s 59142p/s 59142c/s 59142C/s ABT283..ABT29E
4 0g 0:00:00:11 0.12% (ETA: 01:36:13) 0g/s 59766p/s 59766c/s 59766C/s ABUNET..ABUNE6
1 0g 0:00:00:14 0.15% (ETA: 01:38:43) 0g/s 58797p/s 58797c/s 58797C/s AB9UXE..AB9UXQ
3 0g 0:00:00:14 0.15% (ETA: 01:38:02) 0g/s 59055p/s 59055c/s 59055C/s AB963S..AB9635
4 0g 0:00:00:14 0.15% (ETA: 01:36:11) 0g/s 59775p/s 59775c/s 59775C/s AB017D..AB017P
2 0g 0:00:00:14 0.15% (ETA: 01:36:26) 0g/s 59681p/s 59681c/s 59681C/s AB0W5J..AB0W5V
3 0g 0:00:01:41 1.09% (ETA: 01:38:24) 0g/s 58914p/s 58914c/s 58914C/s AOGFO1..AOGFPC
2 0g 0:00:01:41 1.09% (ETA: 01:38:19) 0g/s 58952p/s 58952c/s 58952C/s AOGRI8..AOGRJJ
1 0g 0:00:01:41 1.09% (ETA: 01:38:48) 0g/s 58764p/s 58764c/s 58764C/s AOE5U7..AOE5VI
4 0g 0:00:01:41 1.10% (ETA: 01:37:35) 0g/s 59233p/s 59233c/s 59233C/s AOI73T..AOI736
1 0g 0:00:02:37 1.70% (ETA: 01:38:28) 0g/s 58892p/s 58892c/s 58892C/s AWAZLU..AWAZL7
3 0g 0:00:02:37 1.70% (ETA: 01:38:43) 0g/s 58797p/s 58797c/s 58797C/s AV0PPG..AV0PPS
2 0g 0:00:02:37 1.70% (ETA: 01:38:08) 0g/s 59021p/s 59021c/s 59021C/s AWCP84..AWCP9F
4 0g 0:00:02:37 1.70% (ETA: 01:38:05) 0g/s 59041p/s 59041c/s 59041C/s AWCZQT..AWCZQ6
```

We'll let it run for now.

It shall update with the correct password in a matter of hours!

## Done
It took 11 minutes to crack a 6 letter password.

```
CRP290           (/home/codax/Downloads/secret_doc.pdf)     
3 1g 0:00:10:40 DONE (2021-02-04 23:15) 0.001560g/s 56733p/s 56733c/s 56733C/s COV23S..COV235
2 0g 0:00:11:00 DONE (2021-02-04 23:15) 0g/s 57052p/s 57052c/s 57052C/s CRYMJN..CRYMJZ
1 0g 0:00:11:00 DONE (2021-02-04 23:15) 0g/s 56818p/s 56818c/s 56818C/s CRLDUA..CRLDUM
Waiting for 3 children to terminate
4 0g 0:00:11:00 DONE (2021-02-04 23:15) 0g/s 56748p/s 56748c/s 56748C/s CRHGF6..CRHGGH
Use the "--show --format=PDF" options to display all of the cracked passwords reliably
Session completed. 

real	11m0.068s
user	41m4.390s
sys	0m6.800s
```

## Credits
[Featured image johntheripper](https://static.techspot.com/images2/downloads/topdownload/2017/05/jtr.png)

## \ Codarren /
