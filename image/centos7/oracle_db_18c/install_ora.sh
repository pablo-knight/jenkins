#!/bin/bash
#
# install_ora.sh
# Prepares the Linux OS and controls the VM provision process.
# Usage
#
#    install_ora.sh
#

if ! [ $(id -u) = 0 ]; then
   echo "This script must be run as root."
   exit 1
fi

echo "Installing which..."
sudo yum -y -t install which > /dev/null
echo "Installing wget..."
sudo yum -y -t install wget > /dev/null
echo "Installing curl..."
sudo yum -y -t install curl > /dev/null
echo "Installing openssl..."
sudo yum -y -t install openssl > /dev/null

# add default gateway to eth1, remove default gw from eth0 to be reachable from tinc network 
sudo ip route add default via 10.0.4.1 dev eth1
sudo ip route del default via 192.168.121.1 dev eth0
sudo echo "GATEWAY=10.0.4.1" >> /etc/sysconfig/network-scripts/ifcfg-eth1
sudo echo "DNS1=8.8.4.4" >> /etc/sysconfig/network-scripts/ifcfg-eth1
sudo sed -i 's/ONBOOT="yes"/ONBOOT="no"/' /etc/sysconfig/network-scripts/ifcfg-eth0
sudo echo "10.0.4.122  centos7-oracle" > /etc/hosts
sudo echo "127.0.0.1   localhost " >> /etc/hosts
sudo echo "::1         localhost localhost.localdomain localhost6 localhost6.localdomain6" >> /etc/hosts

##
#cd /vagrant/provision/flyway && source ./install-flyway.sh
cd /vagrant/provision/oracleXE && source ./install-oracle-xe.sh

if [ `id -u oracle 2>/dev/null || echo -1` -ge 0 ];
   then
      ORACLE_GROUP=oinstall
      ORACLE_USER=oracle
   else
      ORACLE_GROUP=vagrant
      ORACLE_USER=vagrant
fi
echo $ORACLE_USER


# additional stuff here /db oracle schemas optional / xauth /
#cd /vagrant/provision/db-sample-schemas-18c && su $ORACLE_USER -c 'source ./install-sample-schemas.sh'
sudo touch /root/.Xauthority
sudo touch /home/oracle/.Xauthority
sudo chown oracle:oinstall /home/oracle/.Xauthority

# privacyidea stuff
sudo rm /etc/localtime && sudo ln -s /usr/share/zoneinfo/Europe/Berlin /etc/localtime
sudo rpm --import /vagrant/NetKnights-Release.asc
sudo cp /vagrant/NetKnights-Release.asc /etc/pki/rpm-gpg/
sudo cp /vagrant/privacyidea.repo.centos7.stable /etc/yum.repos.d/privacyidea.repo
#sudo yum -y install privacyidea-2.23.5-1.el7 privacyidea-server-2.23.5-1.el7 privacyidea-selinux
#sudo systemctl restart httpd mariadb

# .bashrc
sudo echo 'alias l="ls -lav"' >> ~/.bashrc
sudo echo 'alias ora="su -l oracle"' >> ~/.bashrc
sudo echo 'export LC_ALL=en_US.utf8' >> ~/.bashrc

# add pub keys to root user and oracle
sudo mkdir -p /root/.ssh &&  touch /root/.ssh/authorized_keys
sudo cp /home/vagrant/.ssh/authorized_keys /root/.ssh/authorized_keys

# oracle ssh
mkdir -p /home/oracle/.ssh
sudo cp /home/vagrant/.ssh/authorized_keys /home/oracle/.ssh/authorized_keys

#
ip a | grep 10.0.4

