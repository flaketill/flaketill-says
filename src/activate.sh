#!/usr/bin/env bash
# -*- coding: UTF-8 -*- 
# -*- encoding: utf-8 -*-
# Copyright (C) 2016 Armando Ibarra
#  v0.1 alpha - 2016
# 
#----------------------------------------------------------------------
# Template file sh or bash 
#
# Author: Ing. Armando Ibarra - armandoibarra1@gmail.com
# Email: armandoibarra1@gmail.com
# Date: 06/05/2016 
# PurpOS_APP_BINe:
#         Test automake on linux
#
#----------------------------------------------------------------------
# NOTES:    
#----------------------------------------------------------------------
#----------------------------------------------------------------------

###############################################################################

# Licensed under the GNU GPL v3 - http://www.gnu.org/licenses/gpl-3.0.txt
# - or any later version.

# WPS install languages
# A bash script installing/building all needed dependencies to 
# build wps languages for just some Linux distributions.

# @author: Ing. Armando Ibarra

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOS_APP_BINE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

###############################################################################

#variables

#autor and project data
AUTHOR='Ing. Armando Ibarra <armandoibarra1@gmail.com>'
COPYRIGHT='Copyright (c) 2016, armandoibarra1@gmail.com'
LICENSE='GNU GPL Version 3'

WEB_SITE="https://github.com/flaketill/flaketill-says"
VERSION_SCRIPT="0.0.1 alpha"

#colors bash script
GREEN="\033[1;32m"
RESET="\033[0m"
WHITE="\033[1;37m"
BLUE="\033[1;34m"
RED="\033[1;31m" 
YELLOW="\033[1;33m"

THIS_SCRIPT_PATH=`readlink -f $0`
THIS_SCRIPT_DIR=`dirname ${THIS_SCRIPT_PATH}`

DATE=$(date +"%Y.%m.%d")
#HERE = OS_APP_BIN.path.abspath(OS_APP_BIN.path.dirname(__file__))
# Ensure we start in project root
CURRENT_DIR=$(dirname "${BASH_SOURCE[0]}")
DIR=$(pwd)
#Test docker
#Befor 
#$ sudo systemctl start docker
#$ sudo systemctl enable docker

#Or 
#$ sudo su -
#$ sudo usermod -aG docker <username> or sudo usermod -aG docker $USER
#$ 
#$ 
#$ 

if [ "$(uname)" == "Darwin" ]; then
  OS_APP_BIN_APP="${DIR}/build/flaketill-says.app/Contents/MacOS_APP_BIN/flaketill-says"
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
  OS_APP_BIN="${DIR}/build/flaketill-says"
elif [ "$(expr substr $(uname -s) 1 9)" == "CYGWIN_NT" ]; then
  OS_APP_BIN="${DIR}/build/flaketill-says.exe"
else
  printf "Cannot detect a supported OS_APP_BIN."
  exit 1
fi

#If you don't have installed docker: Installing Docker with sh
#curl -sSL https://test.docker.com/ | sh
#docker run hello-world

#https://hub.docker.com/r/base/archlinux/
#sudo docker pull pritunl/archlinux:latest
#sudo docker run --rm -t -i pritunl/archlinux:latest /bin/bash
printf "$DATE\n"

printf "The PATH's bin for you os: $OS_APP_BIN"