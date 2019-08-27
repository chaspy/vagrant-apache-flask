#!/bin/bash
sudo yum update -y
sudo yum install -y httpd

# Python
sudo yum install -y centos-release-scl
sudo yum install -y rh-python36
