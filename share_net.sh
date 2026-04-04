#!/bin/bash

# Usage: ./myscript.sh <LAPTOP_IP>
# Example: ./myscript.sh 203.0.113.45

LAPTOP_IP=$1

# Enable IP forwarding
sudo sysctl -w net.ipv4.ip_forward=1

# Flush old rules
sudo iptables --flush
sudo iptables --table nat --flush
sudo iptables --delete-chain
sudo iptables --table nat --delete-chain

# SNAT: rewrite Jetson traffic to laptop’s IP
sudo iptables -t nat -A POSTROUTING -s 192.168.55.1 -j SNAT --to-source $LAPTOP_IP

# Allow forwarding for Jetson’s IP
sudo iptables -A FORWARD -s 192.168.55.1 -j ACCEPT
sudo iptables -A FORWARD -d 192.168.55.1 -m state --state RELATED,ESTABLISHED -j ACCEPT

