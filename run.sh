#!/bin/sh
sudo dnsmasq -d -C ./dnsmasq.conf -l ./dnsmasq.leases &
sudo hostapd ./hostapd.conf
