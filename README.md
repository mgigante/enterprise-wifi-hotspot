# Hotspot with WPA2 Enterprise PEAP

This is a sample configuration for an hotspot hosted on a pc using `hostapd` and `dnsmasq`.
The authentication used is username/password based with EAP-PEAP using MSCHAPV2 for phase 2 challenge sub-authentication.

## Steps

* Generate the CA and AccessPoint certificates:
`./do-certs.sh`
* Configure the wifi network interface with the IP address and subnet (cheange the interface name with your local interface):
`sudo ifconfig wlan0 192.168.150.1/24`
* Run the `dnsmasq` DHCP server and `hostapd` AccessPoint daemon:
`./run.sh`
