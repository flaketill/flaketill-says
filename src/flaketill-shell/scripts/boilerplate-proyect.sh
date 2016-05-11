#!/usr/bin/env sh
# -*- coding: UTF-8 -*- 
# Copyright (C) 2016 Armando Ibarra
#  v0.0.1 alpha - 2016
# 

#----------------------------------------------------------------------
# Build base project form boilerplate-proyect
#
# Author: Ing. Armando Ibarra - armandoibarra1@gmail.com
# Email: armandoibarra1@gmail.com
# Date: 10/05/2016 
# Purpose:
#    Performs creation of proyect like as git
#
#----------------------------------------------------------------------
# NOTES:    
#----------------------------------------------------------------------
# Test on Arch Linux x64
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
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

###############################################################################

#variables

#autor and project data
AUTHOR='Ing. Armando Ibarra <armandoibarra1@gmail.com>'
COPYRIGHT='Copyright (c) 2014, armandoibarra1@gmail.com'
LICENSE='GNU GPL Version 3'

PROYECT_NAME="flaketill-says"

WEB_SITE="https://github.com/flaketill/$PROYECT_NAME"
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
TMP_CONF=$HOME"/.flaketill-says"

DEPENDENCIES_ARCH="none"
DEPENDENCIES="sudo curl axel wget ssh xclip x11-ssh-askpass"
INSTALL_DEB="none"
DEPS_ALT="YES"

#DISTROS_SUPPORT="Arch Ubuntu Debian"
#DISTROS_SUPPORT="Arch"
DISTRO="none"
PACKAGE_MANAGER="none"

BITS="none"

#Deps

if [ ! -d ~/.config/$PROYECT_NAME ]; then
	mkdir ~/.config/$PROYECT_NAME
fi

if [ -f ~/.config/$PROYECT_NAME/$PROYECT_NAMErc ]; then
	source ~/.config/$PROYECT_NAME/$PROYECT_NAMErc
else

	DATEFMT=%Y%m%d-%H%M
	BACKUP_DIR="/tmp"
	EDITOR=nano
fi

printf "boilerplate-proyect"