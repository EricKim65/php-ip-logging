#!/bin/bash

mv /root/.bash_profile /root/.bash_profile--
cp ./.bash_profile /root/.bash_profile
cp ./.dbrhost_include /root/.dbrhost_include

mv /etc/sysconfig/iptables /etc/sysconfig/iptables--
cp ./iptables /etc/sysconfig/iptables
service iptables restart

mv /etc/ssh/sshd_config /etc/ssh/sshd_config--
cp ./sshd_config /etc/ssh/sshd_config
service sshd restart

cp -R ./mybin /usr/local/

visudo
vi /root/.dbrhost_include

iptables -L
