#!/bin/bash

groupadd uadmin
useradd -g uadmin -G admin -s /bin/bash -d /home/uadmin uadmin
mkdir -p /home/uadmin
cp -r /root/.ssh /home/uadmin/.ssh
chown -R uadmin:uadmin /home/uadmin
echo "uadmin	ALL=(ALL:ALL) NOPASSWD:ALL" >> /etc/sudoers
