#!/bin/bash
sudo cp /etc/fstab /etc/fstab.bak
sudo sysctl vm.swappiness=10
sudo echo "vm.swappiness=10" > /etc/sysctl.conf
sudo sysctl vm.vfs_cache_pressure=50
sudo echo "vm.vfs_cache_pressure=50" > /etc/sysctl.conf
