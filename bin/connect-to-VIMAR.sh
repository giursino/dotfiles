#!/bin/sh
set -e

if pgrep snx; then
  echo "Disconnecting from previous session..."
  snx -d
  sleep 1
fi

echo "Connecting to VIMAR VPN (please insert VIMAR password)..."
snx -s vpn.vimar.net -u ursinog

echo ""
echo ""
echo ""
echo "*** NOW PLEASE INSERT YOUR SUDO PASSWORD ***"
sudo -v
echo "SUDO: OK!"
echo ""
echo "Removing 192.168.1.x route from VIMAR VPN..."
sudo ip route del 192.168.1.1
sudo ip route del 192.168.1.7
sudo ip route del 192.168.1.8
sudo ip route del 192.168.1.10/31
sudo ip route del 192.168.1.16

echo "Removing 192.168.1.x route from VIMAR VPN..."
sudo ip route del 192.168.1.1
sudo ip route del 192.168.1.7
sudo ip route del 192.168.1.8
sudo ip route del 192.168.1.10/31
sudo ip route del 192.168.1.16

echo "Connecting to development machine..."
ssh -Y ursinog@vimar.net@172.20.32.15

echo "done..."
