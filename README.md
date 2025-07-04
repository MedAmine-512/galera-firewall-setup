# Galera Cluster UFW Firewall Setup

This script configures the necessary firewall rules for a secure MariaDB Galera cluster node.

## What it does

- Allows SSH access
- Allows MySQL client access from trusted subnet
- Opens ports required for Galera replication, SST, and IST
- Denies all other incoming traffic by default

## Run it

You will have to change the subnet

```bash
CLUSTER_NET="192.168.174.0/24"
```

Then use these to commads to make it executable and run it

```bash
chmod +x galera-firewall-setup.sh
./galera-firewall-setup.sh
```
