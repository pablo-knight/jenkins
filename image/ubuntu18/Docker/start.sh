#!/bin/bash
git clone https://github.com/NetKnights-GmbH/ubuntu.git
cd ubuntu
VERSION=3.5.1 BRANCH=DEVEL make clean privacyidea server
