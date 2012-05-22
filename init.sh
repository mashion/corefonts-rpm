#!/bin/sh

yum install wget -y
wget http://dl.fedoraproject.org/pub/epel/5/x86_64/epel-release-5-4.noarch.rpm
rpm -Uvh epel-release-5-4.noarch.rpm
rm -f epel-release-5-4.noarch.rpm

yum install rpmdevtools -y
rpmdev-setuptree

yum groupinstall 'Development Tools' -y

yum install cabextract -y

wget http://corefonts.sourceforge.net/msttcorefonts-2.0-1.spec -P "$HOME/rpmbuild/SPECS"
