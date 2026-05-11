echo "Hello "$USER
echo "Today is "$(date)
echo "Your current working directory is "$(pwd)
echo "Your home directory is "$HOME
echo "Your shell is "$SHELL
echo "Your username is "$USER
echo "Your current logged in users are "$(who)
echo "Your system uptime is "$(uptime)
echo "Your system load average is "$(uptime | awk -F 'load average: ' '{print $2}')
echo "Your system memory usage is "$(free -h)
echo "Your system disk usage is "$(df -h)
echo "Your system CPU usage is "$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
echo "Your system processes are "$(ps -e)
echo "Your system network interfaces are "$(ip link show)
echo "Your system IP addresses are "$(ip addr show)
echo "Your system routing table is "$(ip route show)
echo "Your system DNS configuration is "$(cat /etc/resolv.conf)
echo "Your system firewall rules are "$(sudo iptables -L)
echo "Your system open ports are "$(ss -tuln)
echo "Your system running services are "$(systemctl list-units --type=service --state=running)