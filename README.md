How to use
======

__Debian , Ubuntu__
```sh
apt-get update;
apt-get install -y openssl libssl-dev libnl-3-dev libnl-genl-3-dev build-essential git wget libnfnetlink-dev libsqlite3-dev;
git clone https://github.com/syakesaba/hostapd-wpe.git;
cd hostapd-wpe;
wget https://w1.fi/releases/hostapd-2.6.tar.gz;
tar xzvf hostapd-2.6.tar.gz;
patch -p0 < hostapd-wpe-2.6-user.patch;
cd hostapd-2.6/hostapd;
make all;
cp hostapd-wpe ../../;
cd ../../certs;
./bootstrap;
cd ..;
cp ./confs/hostapd-wpe.conf .;
# assuming your wireless interface is 'wlan1'.
./hostapd-wpe hostapd-wpe.conf;
# enjoy!
# tail -f ./hostapd-wpe.log
```

Enjoy Dummy SSL Certificate
======
__Generate__
  
1. Edit .cnf files in ./certs  
2. execute ./bootstrap in ./certs  
3. specify certificates created in hostapd's config file  
  
__Delete__
  
1. execute 'make destroycerts' in ./certs

Hostapd-wpe as RougeAP Spoofing 
======
The syntax of a hostapd-wpe's configuration file is same as usual hostapd's one.  
Let hostapd-wpe to use same ESSIDs Authentications and Encryptions of AP to spoof.  
Edit and create your hostapd-wpe.conf .

Notes
=====
- don't delete eap_user "t", it's special user to keep bypassing TLS phase 1 anytime. 
- this wll offer ALL EAP Types to user "t" but if you don't want to restrict what EAP types to offer users.

Videos
=====
[![Alt text for your video](http://img.youtube.com/vi/k-NtjV40zUM/0.jpg)](http://www.youtube.com/watch?v=k-NtjV40zUM)
