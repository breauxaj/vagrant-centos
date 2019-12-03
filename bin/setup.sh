#!/bin/sh
################################################################################
# Add EPEL repository
################################################################################
curl -sOL https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm
yum -y -q install epel-release-latest-8.noarch.rpm > /dev/null 2>&1
################################################################################
# Cleanup
################################################################################
yum history sync > /dev/null 2>&1
yum clean all
rm -rf /var/cache/*
cat /dev/null > ~/.bash_history && history -c && exit
