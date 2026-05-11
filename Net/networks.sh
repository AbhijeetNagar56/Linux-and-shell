# physical layer
ethtool eth0
dmesg | grep eth0

# data link layer
ip link show 
arp -n

# network layer
ip addr show
ip route show
ping 8.8.8.8
traceroute google.com

# transport layer
ss -tuln
netstat -tuln
nc -l 8080

# presentation layer
openssl s_client -connect google.com:443
gpg --encrypt file.txt
iconv -f utf8 -t ascii file.txt > file_ascii.txt

# application layer
curl http://www.example.com
wget http://www.example.com
telnet google.com 80
dig google.com
nslookup google.com