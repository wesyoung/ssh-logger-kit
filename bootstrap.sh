#!/bin/bash

set -e

CSIRTG_TOKEN=$CSIRTG_TOKEN
CSIRTG_USER=$CSIRTG_USER
CSIRTG_FEED=$CSIRTG_FEED

echo 'updating apt-get tree and installing python-pip'
sudo apt-get update && sudo apt-get install -y python2.7 python-pip python-dev git libffi-dev \
software-properties-common aptitude htop

echo 'Upgrading pip...'
sudo -H pip install --upgrade pip

echo 'installing ansible...'
sudo -H pip install 'setuptools>=18.5' 'ansible==2.1' versioneer markupsafe

echo 'running ansible...'
ansible-playbook -i "localhost," -c local localhost.yml -vv
