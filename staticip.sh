
# https://wiki.openag.media.mit.edu/users/rbaynes/notes/bbb/debian?s[]=beaglebone&s[]=ip

# TL; DR
sudo connmanctl
services
agent on
config ethernet_38d2697b8fda_cable --autoconnect yes
config ethernet_38d2697b8fda_cable  --ipv4 manual 172.17.0.21 255.255.0.0 172.17.0.1  --nameservers 172.17.0.1 18.71.0.151 18.70.0.160 18.72.0.3


# Slighly more info
sudo connmanctl
> services
	*AR Wired                ethernet_e8eb11255fc3_cable
> agent on
> config ethernet_e8eb11255fc3_cable --autoconnect yes
# config <service> --ipv4 manual <ip_addr> <netmask> <gateway> --nameservers <dns_server>
> config ethernet_e8eb11255fc3_cable  --ipv4 manual 172.17.2.31 255.255.0.0 172.17.0.1  --nameservers 172.17.0.1 18.71.0.151 18.70.0.160 18.72.0.3
> quit
