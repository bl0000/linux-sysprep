#!/bin/bash

# Need to script updating /etc/hosts, /etc/hostname and /etc/network/interfaces.

# Regenerate machine ID
sudo rm /etc/machine-id
dbus-uuidgen --ensure
sudo systemd-machine-id-setup

# Regenerate SSH keys
sudo rm /etc/ssh/ssh_host_*
sudo ssh-keygen -A

# Reboot
sudo reboot 0
