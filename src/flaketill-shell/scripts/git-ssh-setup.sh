#!/usr/bin/env sh
# -*- coding: UTF-8 -*- 
# Copyright (C) 2016 Armando Ibarra
#  v0.0.1 alpha - 2016
# 

#----------------------------------------------------------------------
# Github multiple accounts with ssh config and severals keys
#
# Author: Ing. Armando Ibarra - armandoibarra1@gmail.com
# Email: armandoibarra1@gmail.com
# Date: 10/05/2016 
# Purpose:
#    Performs creation of Multiple SSH Keys for severals accounts
#    like as github , bitbucket, aur ,etc
#    on linux OS, invokes some system commands like
#    sudo, pacman, apt-get install, etc
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

#Ckeck deps
check_dependences()
{

	for dep in $DEPENDENCIES
        do
             if ! which $dep &>/dev/null;  then
                        DEPS_ALT="NO"
                        printf "============================================================";
                        printf "***** This script requires $dep to run but it is not installed";
                        printf "============================================================";
                        
                        #printf "Try to install dependences";
             fi

        done

}


#first check depen
check_os
#then ckeck dependences for this distro
check_dependences

if [ "$DEPS_ALT" == "NO" ]; then

	echo -e "$RED The operative system missing dependencies for the following libraries ... $RESET"

	read -p "Do you wish to install dependences? [Yes (y) / No (n)]" choice
	case "$choice" in 
	  	y|Y ) echo "yes"


            install_dependences

            if test $? -eq 0; then
            	#package installed without error
            	show_msn_w "$GREEN #############Dependences it's OK ############# $RESET"				            	
    		else
    			show_msn_w "$LINENO -- ERROR $RED I can't continue without dependences: $DEPENDENCIES $RESET"    			
    		fi

		;;

	  	n|N ) exit 0
		
		;;
	  	* ) echo "$RED invalid or you dont' have a tty or you are test the script on your source code editor $RESET";
	esac
fi


#Checking for existing SSH keys
ls -al ~/.ssh

cd ~/.ssh/

#If not existe make folder

if 
	mkdir github
fi

if cd ~/.ssh/github/; then


#Juste tempo
#ssh-agent bash -c 'ssh-add ~/.ssh/id_rsa.github.flaketill-says; git clone git@github.com:flaketill/flaketill-says.git'

#Ask for name repo or acount on github
KEY_GIT_NAME=

ssh-keygen -t rsa -b 4096 -f ~/.ssh/github/id_rsa.github.flaketill-says

#check if exist .pub and private key with name 

if -f KEY_GIT_NAME

	if -f KEY_GIT_NAME.pub
		#Test and Ensure ssh-agent is enabled
		if eval "$(ssh-agent -s)"
			#ckeck num lines befor add 
			#ps -u $(whoami) | grep ssh-agent &> /dev/null || eval $(ssh-agent)
			ssh-add

			#ckeck num lines befor add 
			ssh-add ~/.ssh/github/id_rsa.github.flaketill-says


			#ckeck num lines befor Afeter


			if 

				ssh-add -l | wc -l

				#compare if have 1 more 
				if 
					#Ok
				else
					#Error

				fi
			fi

			#Show message : Plase for ading a new SSH key to your GitHub account go to:
			#https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/

			#Ask 
			MSN="Do you want copy the SSH key to your clipboard? [Yes (y) / No (n)]"

			read -p "$MSN" choice
				case "$choice" in 
					y|Y )

					;;
					n|N ) exit 0
										
					;;
					* ) 
						#report_bug
				esac

			if
				#Check if are installed xclip

				if which xclip &>/dev/null; then

					if [[ -z $file ]]; then
			        	xclip -in -selection clipboard
			        	xclip -sel clip < ~/.ssh/github/id_rsa.github.flaketill-says.pub

			        	#Open webbrowser on https://github.com/$GITHUB_USER/$REPO_NAME/settings/keys

			        	#test your connection,
			        	ssh -T git@github.com

			        	#Hi flaketill/flaketill-says! You've successfully authenticated, but GitHub does not provide shell access
			        	#for more https://help.github.com/articles/changing-a-remote-s-url/

						#~/.ssh/config

						# account for the foo repo
						Host github.com-flaketill-says
						    HostName github.com
						    User flaketill
						    IdentitiesOnly yes
						    IdentityFile ~/.ssh/github/id_rsa.github.flaketill-says        	

			      	else
			        	xclip -in -selection clipboard $file
			      	fi
			    fi
				
			fi

		fi

	else 
		exit 1
	fi

else
	exit 1
fi

#Adding your SSH key to the ssh-agent


fi

su -c "$PACKAGE_MANAGER $1 &> /dev/null"

	if [ ! $? -eq 0 ]; then

		show_msn_w "$1 installed"
		return 1
	else
		show_msn_w "$1 $RED no installed $RESET"
		return 0

	fi

#exit 0
exit $?