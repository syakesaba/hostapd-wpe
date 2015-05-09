How to use
======

__Debian , Ubuntu__
```sh
apt-get install openssl
apt-get install libssl-dev; #(>=1.0)
apt-get install libnl-dev;
git clone git@github.com:syakesaba/hostapd-wpe.git
cd hostapd-wpe/patched_src/hostapd-2.4-wpe/hostapd/;
make all;
cp hostapd-wpe ../../../;
cd ../../../;
cd certs/;
./bootstrap;
cd ..;
cp ./confs/hostapd-wpe.conf .;
# change 'wlan1' to your NIC.
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
2. execute 'make destroycerts' in ./certs

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
