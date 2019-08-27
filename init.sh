#!/bin/bash
sudo yum update -y
sudo yum install -y httpd
sudo yum install -y mod_wsgi

# Locale
grep 'LC_ALL="ja_JP.utf8"' /home/vagrant/.bash_profile || echo 'LC_ALL="ja_JP.utf8"' >> /home/vagrant/.bash_profile
export LC_ALL="ja_JP.utf8"

# Python
yum install -y epel-release
yum-config-manager --disable epel
yum install -y --enablerepo="epel" python36

mkdir -pv /home/vagrant/.venv
python36 -mvenv /home/vagrant/.venv

grep 'source /home/vagrant/.venv/bin/activate' ~/.bash_profile || echo 'source /home/vagrant/.venv/bin/activate' >> /home/vagrant/.bash_profile
source /home/vagrant/.venv/bin/activate

# flask
pip install --upgrade pip
pip3 install flask

sudo service httpd enable
sudo service httpd start
