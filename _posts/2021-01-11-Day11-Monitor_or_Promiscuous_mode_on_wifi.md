---
layout: post
title: 'Day 11: Monitor or Promiscuous mode on wifi'
published: true
---
## Your wifi adapter might already be supporting it !
![BlackHat](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/black-hat-seo-760x400.png)
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

### What parameter to check?
The thing to check is the:

Supported interface modes >> "monitor"


Once you see monitor there, your card supports monitor/promiscuous mode

## Kali Linux

Kali ships with a lot of tools out of the box.
One of the reference tools is airmon-ng

### Checking current status
```
#If no monitor mode is visible, it means it's not activated
└─$ sudo airmon-ng           

PHY     Interface       Driver          Chipset

phy0    wlan0           iwlwifi         Intel Corporation Wireless 8260 (rev 3a)
phy1    wlan1           mt7601u         Ralink Technology, Corp. MT7601U
```
### Activating monitor mode
```
└─$ sudo airmon-ng start wlan1

Found 2 processes that could cause trouble.
Kill them using 'airmon-ng check kill' before putting
the card in monitor mode, they will interfere by changing channels
and sometimes putting the interface back in managed mode

    PID Name
   4044 NetworkManager
   4057 wpa_supplicant

PHY     Interface       Driver          Chipset

phy0    wlan0           iwlwifi         Intel Corporation Wireless 8260 (rev 3a)
phy1    wlan1           mt7601u         Ralink Technology, Corp. MT7601U
                (mac80211 monitor mode already enabled for [phy1]wlan1 on [phy1]wlan1)
```
### Killing processes to go to monitor mode
Basically, you can't be connected to a network and having monitor mode running.

We'll automatically kill network manager to dissasociate with the existing wireless network.

N.B: There are cleaner ways to do that, but that's an example
```
└─$ sudo airmon-ng check kill                                                                                                                                     1 ⨯

Killing these processes:

    PID Name
   4057 wpa_supplicant

```

### Monitor mode after killing

```
└─$ sudo airmon-ng start wlan1


PHY     Interface       Driver          Chipset

phy0    wlan0           iwlwifi         Intel Corporation Wireless 8260 (rev 3a)
phy1    wlan1           mt7601u         Ralink Technology, Corp. MT7601U
                (mac80211 monitor mode already enabled for [phy1]wlan1 on [phy1]wlan1)
```

### It's already enabled, that's good news !
We confirm that we are in monitor mode using iwconfig
```
└─$ sudo iwconfig             
lo        no wireless extensions.

eth0      no wireless extensions.

wlan0     IEEE 802.11  ESSID:off/any  
          Mode:Managed  Access Point: Not-Associated   Tx-Power=22 dBm   
          Retry short limit:7   RTS thr:off   Fragment thr:off
          Encryption key:off
          Power Management:on
          
wlan1     IEEE 802.11  Mode:Monitor  Frequency:2.457 GHz  Tx-Power=20 dBm   
          Retry short limit:7   RTS thr:off   Fragment thr:off
          Power Management:on

```

### Capturing on wireshark
Capture --> START
![Capture wireshark](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/monitor_mode_wlan1.png)

### Wireshark is a mess ?
This is because we are monitoring all available channels.

### Let's lock on a target
We can use [wifi analyzer](https://play.google.com/store/apps/details?id=com.farproc.wifi.analyzer&hl=en&gl=US) to check on which channel our target is.

In this case dd-wrt_vap is on channel 2.

![wifi analyzer](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/Screenshot_20210111-202921_Wifi%20Analyzer.jpg)

### Restricting your monitoring
We stop our monitoring
```
└─$ sudo airmon-ng stop wlan1 

PHY     Interface       Driver          Chipset

phy0    wlan0           iwlwifi         Intel Corporation Wireless 8260 (rev 3a)
phy1    wlan1           mt7601u         Ralink Technology, Corp. MT7601U
                (monitor mode disabled)

```

We restrict it to channel 2 only
```
└─$ sudo airmon-ng --help    

usage: airmon-ng <start|stop|check> <interface> [channel or frequency]

                                                                                                           
└─$ sudo airmon-ng start wlan1 2


PHY     Interface       Driver          Chipset

phy0    wlan0           iwlwifi         Intel Corporation Wireless 8260 (rev 3a)
phy1    wlan1           mt7601u         Ralink Technology, Corp. MT7601U
                (mac80211 monitor mode already enabled for [phy1]wlan1 on [phy1]wlan1)

```

### Check Wireshark Again
![wireshark channel 2](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/monitor_mode_channel_2.png)

Wireshark now only listens on channel 2.

And we have our target in sight.

## Switch back to normal mode
```
└─$ sudo airmon-ng stop wlan1   

PHY     Interface       Driver          Chipset

phy0    wlan0           iwlwifi         Intel Corporation Wireless 8260 (rev 3a)
phy1    wlan1           mt7601u         Ralink Technology, Corp. MT7601U
                (monitor mode disabled)

└─$ sudo ifconfig wlan1 up   
                                                                                                           
└─$ service NetworkManager restart

```
## Credits
[Black Hat featured image](https://cdn.searchenginejournal.com/wp-content/uploads/2017/10/black-hat-seo-760x400.png)

## Have fun !

\Codarren/
