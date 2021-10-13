#!/bin/sh

sudo apt install -y net-tools iperf3

echo 'net.core.wmem_max=4194304
net.core.rmem_max=12582912
net.ipv4.tcp_rmem = 4096 87380 4194304
net.ipv4.tcp_wmem = 4096 87380 4194304' | sudo tee /etc/sysctl.conf

sudo sysctl -p
