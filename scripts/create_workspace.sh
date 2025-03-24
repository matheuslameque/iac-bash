#!/bin/bash
# Script: create_workspace.sh
# Author: Matheus Lameque
# Data: 2025-03-20
# Description: This script automates the creation of a simple workspace, with the creation of directories, groups, and users, also setting their permissions 

echo 'Initializing script...'
echo 'Creating directories...'
echo '--------------------------------------'

mkdir /publico 
mkdir /adm
mkdir /ven
mkdir /sec

echo '--------------------------------------'

echo 'Directories created successfully'

echo 'Proceding to the groups creation...'

echo '--------------------------------------'

echo 'Creating groups...'

sudo groupadd GRP_ADM
sudo groupadd GRP_VEN
sudo groupadd GRP_SEC

sudo chown root:GRP_ADM /adm
sudo chown root:GRP_VEN /ven
sudo chown root:GRP_SEC /sec

echo 'Groups created successfully'

echo 'Proceding to the users creation...'

echo '--------------------------------------'

echo 'Creating users...'

useradd -m -s /bin/bash -p $(openssl passwd -1 senhateste) -G GRP_ADM carlos
useradd -m -s /bin/bash -p $(openssl passwd -1 senhateste) -G GRP_ADM maria
useradd -m -s /bin/bash -p $(openssl passwd -1 senhateste) -G GRP_ADM joao
useradd -m -s /bin/bash -p $(openssl passwd -1 senhateste) -G GRP_VEN debora
useradd -m -s /bin/bash -p $(openssl passwd -1 senhateste) -G GRP_VEN sebastiana
useradd -m -s /bin/bash -p $(openssl passwd -1 senhateste) -G GRP_VEN roberto
useradd -m -s /bin/bash -p $(openssl passwd -1 senhateste) -G GRP_SEC josefina
useradd -m -s /bin/bash -p $(openssl passwd -1 senhateste) -G GRP_SEC amanda
useradd -m -s /bin/bash -p $(openssl passwd -1 senhateste) -G GRP_SEC rogerio

echo 'Users created successfully'

echo '--------------------------------------'

echo 'Setting up permissions...'

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo 'Permissions configured sucessfully'

echo '--------------------------------------'

echo 'Finishing execution...'
