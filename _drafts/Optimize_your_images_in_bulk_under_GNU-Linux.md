---
published: false
---
## Website slow performance?

The most volumetric item on a website is an image.

## Impact

Image optimization can have a huge impact on your website!

The performance could increase from 20% to up to 95% !!!

## Easy way

As my site is a git repository, I simply clone the repo, compress the image and push it back to the outer world.

## Under GNU/Linux
You need access to your images.

Then copy them to a certain folder.

Now we can start the optimization.

## Optimize JPEG
We use jpegoptim to compress the jpeg.

Mind you, jpegoptim like its name indicates, compresses only jpeg.

It will output an error and skip the file if it's not a .jpeg.

**Installation**
```
sudo apt install jpegoptim
```

**Compressing JPEG**
```bash
#go to the folder
cd images
#run jpegoptim to compress
jpegoptim *.jpeg
```

## Optimize PNG
We use optipng for that.

Installation and execution is the same as for jpegoptim
```
sudo apt install optipng
cd images
optipng *.png
```

## Have fun !

## \ Codarren /

## Credits
[howto by tecmint](https://www.tecmint.com/optimize-and-compress-jpeg-or-png-batch-images-linux-commandline/)