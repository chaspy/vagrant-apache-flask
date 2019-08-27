#!/bin/bash
sudo yum update -y
sudo yum install -y httpd

# Locale
grep 'LC_ALL="ja_JP.utf8"' ~/.bash_profile || echo 'LC_ALL="ja_JP.utf8"' >> ~/.bash_profile
export LC_ALL="ja_JP.utf8"

# Python
sudo yum install -y centos-release-scl
sudo yum install -y rh-python36
# ref: https://linuxize.com/post/how-to-install-python-3-on-centos-7/#installing-python-3-on-centos-7
grep 'scl enable rh-python36 bash' ~/.bash_profile || echo 'scl enable rh-python36 bash' >> ~/.bash_profile
scl enable rh-python36 bash

# flask
pip install --upgrade pip
pip3 install flask
