---
published: false
---
## John the Ripper

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
codax@gaming:~/docs/johnt/JohnTheRipper/run$ time ./john --wordlist=Wordlist.txt pdfhash.txt 
Using default input encoding: UTF-8
Loaded 1 password hash (PDF [MD5 SHA2 RC4/AES 32/64])
Cost 1 (revision) is 3 for all loaded hashes
Will run 4 OpenMP threads
Press 'q' or Ctrl-C to abort, almost any other key for status
```