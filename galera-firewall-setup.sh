#!/bin/bash


CLUSTER_NET="192.168.174.0/24" # Needs to change

echo "[+] Allowing OpenSSH first"
sudo ufw allow OpenSSH

echo "[+] Allowing Mariadb"
sudo ufw allow from $CLUSTER_NET to any port 3306 proto tcp
echo "[+] Allowing udp and tcp for replication"
sudo ufw allow from $CLUSTER_NET to any port 4567 proto tcp
sudo ufw allow from $CLUSTER_NET to any port 4567 proto udp
echo "[+] Allowing SST "
sudo ufw allow from $CLUSTER_NET to any port 4444 proto tcp

echo "[+] Allowing IST"
sudo ufw allow from $CLUSTER_NET to any port 4568 proto tcp

echo "[+] default policy"
sudo ufw default deny incoming
sudo ufw default allow outgoing

echo "[+] Enabling UFW"
sudo ufw --force enable
sudo ufw status verbose