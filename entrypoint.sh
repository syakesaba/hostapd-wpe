#!/bin/bash
# encoding: utf-8

cd /hostapd-wpe/certs
./bootstrap
cd /hostapd-wpe
cp ./confs/hostapd-wpe.conf ./hostapd-wpe.conf

echo "Usage: hostapd-wpe hostapd-wpe.conf"

bash
