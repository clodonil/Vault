#!/bin/bash

yum install -y unzip 
curl -O https://releases.hashicorp.com/vault/1.1.2/vault_1.1.2_linux_amd64.zip 
unzip vault_1.1.2_linux_amd64.zip
cp vault /usr/bin/
cp /vagrant/vault/vault.cnf /etc/default/
cp /vagrant/vault/vault.service /etc/systemd/system/vault.service

systemctl daemon-reload
systemctl enable vault.service
systemctl restart vault.service


export VAULT_ADDR='http://192.168.77.200:8200'

