#!/bin/bash
DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install -y git virtualenv build-essential python-sphinx python-dev pkgconf libfreetype6-dev libpq-dev libffi-dev devscripts python-setuptools python-all debhelper python3-all libmysqlclient-dev quilt python3-dev dh-virtualenv python-pip vim reprepro

#cd /root/packages/ubuntu16
#git clone https://github.com/NetKnights-GmbH/ubuntu.git
#cd ubuntu
#VERSION=3.5.2 BRANCH=DEVEL make clean privacyidea server
