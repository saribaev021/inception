#!/bin/sh
chown -R ndreadno:ndreadno /var/www/*
chmod 777 /var/www/*
vsftpd /etc/vsftpd/vsftpd.conf