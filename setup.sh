#!/bin/sh

sudo apt update
sudo apt install -y net-tools iperf3

echo 'net.core.wmem_max=4194304
net.core.rmem_max=12582912
net.ipv4.tcp_rmem = 4096 87380 4194304
net.ipv4.tcp_wmem = 4096 87380 4194304' | sudo tee /etc/sysctl.conf

sudo sysctl -p

rm -f start_iperf_server.sh
curl https://raw.githubusercontent.com/sanghyun-park/set-iperf3-default-server/main/start_iperf_server.sh > start_iperf_server.sh
chmod +x start_iperf_server.sh
