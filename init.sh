#!/bin/bash
sudo yum update -y
sudo yum install -y httpd

# Python
sudo yum install -y centos-release-scl
sudo yum install -y rh-python36
# ref: https://linuxize.com/post/how-to-install-python-3-on-centos-7/#installing-python-3-on-centos-7
grep 'scl enable rh-python36 bash' ~/.bash_profile || echo 'scl enable rh-python36 bash' >> ~/.bash_profile
