#!/usr/bin/env bash
# -*- coding: UTF-8 -*- 
# Copyright (C) 2016 Armando Ibarra
#  v0.0.1 alpha - 2016
# 
#----------------------------------------------------------------------
# 
# Bash or Shell Common Helpers
# The library currently provides the following helper functions

# Author: Ing. Armando Ibarra - armandoibarra1@gmail.com
# Email: armandoibarra1@gmail.com
# Date: 12/05/2016 
# Purpose:
#         Use general function on others shell scripts
#
#----------------------------------------------------------------------
# NOTES:    
#----------------------------------------------------------------------
# 1) Test on arch linux x64 
# 2) For now this is just a test
# A Bash shell-scripting libraries
#----------------------------------------------------------------------

###############################################################################

# Licensed under the GNU GPL v3 - http://www.gnu.org/licenses/gpl-3.0.txt
# - or any later version.

# WPS install languages
# A bash script installing/building all needed dependencies to 
# build wps languages for just some Linux distributions.

# @author: Ing. Armando Ibarra

# This program is free software: you can REDistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

###############################################################################

#===============================================================================
#
#          FILE:  setup.sh.sh
#
#         USAGE:  ./setup.sh.sh
#
#   DESCRIPTION: environments/vagrant/linux/archx64ing virtual machine for vagrant
#
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Ing. Armando Ibarra - armandoibarra1@gmail.com
#       COMPANY:  Artpc
#       VERSION:  0.0.1
#       CREATED:  05/12/2016 05:21:01
#      REVISION:  ---
#===============================================================================

#############################################################
############## Vars				         ####################
#############################################################

printf "Please wait setup ubuntu-trusty64 virtual machine..."

# Git
printf "Installing Git"
apt-get install git -y > /dev/null

# Nginx
printf "Installing Nginx"
apt-get install nginx -y > /dev/null

# PHP
printf "Updating PHP repository"
apt-get install python-software-properties build-essential -y > /dev/null
add-apt-repository ppa:ondrej/php5 -y > /dev/null
apt-get update > /dev/null

printf "Installing PHP"
apt-get install php5-common php5-dev php5-cli php5-fpm -y > /dev/null

printf "Installing PHP extensions"
apt-get install curl php5-curl php5-gd php5-mcrypt php5-mysql -y > /dev/null

# MySQL 
printf "Preparing MySQL"
apt-get install debconf-utils -y > /dev/null
debconf-set-selections <<< "mysql-server mysql-server/root_password password 1234"
debconf-set-selections <<< "mysql-server mysql-server/root_password_again password 1234"

printf "Installing MySQL"
apt-get install mysql-server -y > /dev/null

# Nginx Configuration
printf "Configuring Nginx"
cp /var/www/environments/vagrant/linux/archx64/config/nginx_vhost /etc/nginx/sites-available/nginx_vhost > /dev/null
ln -s /etc/nginx/sites-available/nginx_vhost /etc/nginx/sites-enabled/

rm -rf /etc/nginx/sites-available/default

# Restart Nginx for the config to take effect
service nginx restart > /dev/null

printf "Finished environments/vagrant/linux/ubuntu-trusty64"