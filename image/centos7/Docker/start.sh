#!/bin/bash
cd /root/packages/centos7
git clone https://github.com/NetKnights-GmbH/centos7.git
cd centos7
make clean buildrpm buildradius buildselinux  
