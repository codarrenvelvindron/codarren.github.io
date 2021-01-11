## Your wifi adapter might already be supporting it !
Yes and i'm going to show you a few ways to check.

## Make sure you have the right drivers
The installation of drivers and support for your chip is outside the scope of this post.

If your wifi adapter is working, we'll assume that the correct drivers are installed.

## What is monitor/promiscuous mode ?
This allows your wifi adapter to monitor all traffic on all wireless channels.

You could also restrict it to a single wireless channel. (Keep reading)

And this could be the basis of an attack. e.g. on weaker protocols such as WEP


## Ubuntu Linux
Under Ubuntu linux, we can use the following commands
```
iw list
```

The output will be a long list:
```
#If your screen is small, you might pipe it to less
iw list | less

#Output
Wiphy phy0
	max # scan SSIDs: 20
	max scan IEs length: 422 bytes
	max # sched scan SSIDs: 20
	max # match sets: 11
	max # scan plans: 2
	max scan plan interval: 65535
	max scan plan iterations: 254
	Retry short limit: 7
	Retry long limit: 4
	Coverage class: 0 (up to 0m)
	Device supports RSN-IBSS.
	Device supports AP-side u-APSD.
	Device supports T-DLS.
	Supported Ciphers:
		* WEP40 (00-0f-ac:1)
		* WEP104 (00-0f-ac:5)
		* TKIP (00-0f-ac:2)
		* CCMP-128 (00-0f-ac:4)
		* GCMP-128 (00-0f-ac:8)
		* GCMP-256 (00-0f-ac:9)
		* CMAC (00-0f-ac:6)
		* GMAC-128 (00-0f-ac:11)
		* GMAC-256 (00-0f-ac:12)
	Available Antennas: TX 0 RX 0
	Supported interface modes:
		 * IBSS
		 * managed
		 * AP
		 * AP/VLAN
		 * monitor
		 * P2P-client
		 * P2P-GO
		 * P2P-device
```

