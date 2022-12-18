#!/bin/bash
# ssh server https://websiteforstudents.com/how-to-install-and-use-ssh-on-ubuntu-20-04-18-04/
sudo apt install openssh-server
# setup key login https://www.howtoforge.com/how-to-configure-ssh-keys-authentication-with-putty-and-linux-server-in-5-quick-steps
# key only login https://vmcentral.zendesk.com/hc/en-us/articles/205576449-How-to-Configure-SSH-to-Accept-Only-Key-Based-Authentication
# kvm bridged nework
# https://www.answertopia.com/ubuntu/creating-an-ubuntu-kvm-networked-bridge-interface/
#
sudo nmcli con add ifname br0 type bridge con-name br0
sudo nmcli con add type bridge-slave ifname enp1s0 master br0
# DO NOT DO REMOTE!!!
sudo nmcli con down "Wired connection 1"
sudo nmcli con up br0
# echo '<network><name>br0</name><forward mode="bridge"/><bridge name="br0" /></network>' > bridge.xml
sudo virsh net-define ./bridge.xml
sudo virsh net-start br0
sudo virsh net-autostart br0
# RDP https://websiteforstudents.com/how-to-connect-via-remote-desktop-rdp-to-ubuntu-20-04-18-04/
sudo apt update
sudo apt install xrdp
sudo systemctl enable xrdp
# setup nas share https://askubuntu.com/questions/157128/proper-fstab-entry-to-mount-a-samba-share-on-boot


