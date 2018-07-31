

# WIRED
# https://wiki.openag.media.mit.edu/users/rbaynes/notes/bbb/debian?s[]=beaglebone&s[]=ip
sudo connmanctl
services
agent on
config ethernet_38d2697b8fda_cable --autoconnect yes
config ethernet_38d2697b8fda_cable  --ipv4 manual 172.17.X.X 255.255.0.0 172.17.0.1  --nameservers 172.17.0.1 18.71.0.151 18.70.0.160 18.72.0.3

# WIRELESS
/var/lib/connman/wifi_<HASH>_managed_psk/

[wifi_<HASH>_managed_psk] 
Name=<SSID>                       ←Name of the network 
SSID=544f52414445585f4252         ←Name of the network in hexadecimal format    
Favorite=true
IPv4.method=manual                ←Method to be used (in this case manual IP)
IPv4.netmask_prefixlen=24
IPv4.local_address=192.168.0.133  ←Desired IP address
IPv4.gateway=192.168.0.1
Passphrase=<PASS>                 ←Wifi network password
AutoConnect=true

connmanctl enable wifi
connmanctl connect wifi_<HASH>_managed_psk
