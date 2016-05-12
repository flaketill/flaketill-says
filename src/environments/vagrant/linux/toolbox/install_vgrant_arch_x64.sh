# For development, Vagrant is the best way to provide a development environment. 
# On Arch Linux some preconditions are needed to be satisfied. 

#Vagrant environment on arch linux 

#autor and project data
AUTHOR='Ing. Armando Ibarra <armandoibarra1@gmail.com>'
COPYRIGHT='Copyright (c) 2016, armandoibarra1@gmail.com'
LICENSE='GNU GPL Version 3'

WEB_SITE="https://github.com/flaketill/flaketill-says"
VERSION_SCRIPT="0.0.1 alpha"

#
#Set colors bash script
#
GREEN="\033[1;32m"
RESET="\033[0m"
WHITE="\033[1;37m"
BLUE="\033[1;34m"
RED="\033[1;31m" 
YELLOW="\033[1;33m"
PURPLE="\033[1;33m"

RED_BG="\e[41m"
BOLD="\e[1m"
#UNDERLINE="\e[4m"
UNDERLINE="\e[1;4m%s\e[0m\n"

THIS_SCRIPT_PATH=`readlink -f $0`
THIS_SCRIPT_DIR=`dirname ${THIS_SCRIPT_PATH}`

DATE="$(date +"%Y.%m.%d")"

#README -> https://nodejs.org/en/download/package-manager/
#https://wiki.archlinux.org/index.php/Node.js_
#
#
#
#
#
#
#
#
#PACKAGES="axel nodejs npm rsync vagrant"
#nfs-utils 
PACKAGES="ruby virtualbox openssh net-tools axel nodejs npm rsync vagrant"
DEPS_OK="NO"
ROOT_INSTALL=""
DISTRO=$(lsb_release -c -s)
alias installpkg= "sudo packer -S --noedit --noconfirm"

#############################################################
############## Headers and  Logging      ####################
#############################################################

e_header() 
{ 
	printf "\n${BOLD}${PURPLE}==========  %s  ==========${RESET}\n" "$@" 
}

e_arrow() 
{ 
	printf "➜ $@\n"
}

e_success() 
{ 
	printf "${GREEN}✔ %s${RESET}\n" "$@"
}

e_error() 
{ 
	printf "${RED}✖ %s${RESET}\n" "$@"
}

e_warning() 
{ 
	printf "${YELLOW}➜ %s${RESET}\n" "$@"
}

e_underline() 
{ 
	printf "${UNDERLINE}${BOLD}%s${RESET}\n" "$@"
}

e_bold() 
{ 
	printf "${BOLD}%s${RESET}\n" "$@"
}

e_note() 
{ 
	printf "${UNDERLINE}${BOLD}${BLUE}Note:${RESET}  ${BLUE}%s${RESET}\n" "$@"
}

msg_blue() 
{ 
	printf "${BLUE}%s${RESET}\n" "$@"
}

msg_yellow() 
{ 
	printf "${YELLOW}%s${RESET}\n" "$@"
}

msg_white()
{
	printf "${WHITE}%s${RESET}\n" "$@"
}


#sed -i -e 's/python\b/python2/g' Makefile
#curl -sL https:// | sudo -E bash -
#yum install gcc-c++ make

printf "=======================================================================\n"
e_header "By flaketill"

printf 'EEEEEEEEE  EEEE    EEEEE  EEEEEEEE  EEEEEEEEE    EEE    EEEEEEEE    EEEEEEEE\n'
printf 'EEE        E   E   E   E  E   E  E     EE        EEE    E           E        \n'
printf 'EEEEEEEE   EEEE    EEEEE  E   E  E     EE        EEE    E           EEEEEEEE \n'
printf 'EEE        E   E   E      E   E  E     EE        EEE    E                  E \n'
printf 'EEEEEEEE   E    E  E      E   E  E     EE        EEE    EEEEEEEE    EEEEEEEE \n'                   

printf " \n"
printf " For build enviroment on arch linux with Vagrant you should make a few things  \n"
printf " \n"
msg_yellow "  1. README more on Vagrant"
printf " \n"
msg_blue "Download virtualbox from http://www.virtualbox.org/wiki/Downloads"
printf "${YELLOW}Download vagrant from http://downloads.vagrantup.com${RESET} \n"
printf "Launch a terminal window, check that it installed: \n"
e_success "[$USER@$HOSTNAME build]$ which vagrant"
msg_blue "Add a vagrant box "
e_success "[$USER@$HOSTNAME build]$ vagrant box add archlinux-x86_64 ADDRESS"
e_success "[$USER@$HOSTNAME build]$ vagrant box add precise64 http://files.vagrantup.com/precise64.box"
msg_blue "# Starting a New Project"
printf "Make a directory for the project and change to it, replacing <path_to> with the path \n"
printf "to the project and <project_name> with the name of the project. \n"
e_success "[$USER@$HOSTNAME build]$ mkdir <path_to>/<project_name> && cd $_ "
printf "For example, to create a project called 'website' in your home directory:"
e_success "[$USER@$HOSTNAME build]$ mkdir ~/website && cd $_ "
printf "When you're all done, within this directory will be a directory named vagrant/ which"
printf "will match up with /home/vagrant/ in the virtual envirionment. Virtualbox keeps the two"
printf "directories in sync so changes to one will be made in the other."
msg_blue "Copy in the Vagrantfile."
e_success "[$USER@$HOSTNAME build]$ curl https://raw.githubusercontent.com/flaketill/flaketill-says/master/src/Vagrantfile > Vagrantfile"
msg_blue "Copy in the provisioning files. \n"
e_success "[$USER@$HOSTNAME build]$ curl https://raw.githubusercontent.com/flaketill/flaketill-says/master/src/environments/vagrant/linux/archx64/setup.sh > setup.sh"
msg_blue "Startup Vagrant and provision the Virtual Machine: "
e_success "[$USER@$HOSTNAME build]$ vagrant up"
msg_blue "SSH in to the virtualbox:"
e_success "[$USER@$HOSTNAME build]$ vagrant ssh"
printf " \n"
printf "${GREEN}✔ END"
printf "======================================================================= \n"
printf "${RESET}\n"

printf "Please wait ..."
sleep 2
printf "..................."

if ! command -v sudo >/dev/null; then
	exec sudo -v
	ROOT_INSTALL="sudo"
else
	exec su -c 'pacman -Sy'
	ROOT_INSTALL=exec su -c '$1'
fi

PACKAGE_MANAGER="pacman -S --noconfirm "

install_with_package_manager()
{

	su -c "$PACKAGE_MANAGER $1" &>/dev/null
	#su -c "$PACKAGE_MANAGER $1"

	if test $? -eq 0; then
    	e_success "Package $1 installed"
    	return 0  #if installed retiurn 0     	
    else
    	#for example if package not exist on pacman or packer liek Package `ax' does not exist.
    	e_warning "$LINENO: Error when try install with $PACKAGE_MANAGER  the package $1 "
    	return 1 #if not install
  	fi

}

install_dependences()
{

	e_warning "Please input password: "

	for dep in $PACKAGES #$DEPENDENCIES
        do
             if ! which $dep &>/dev/null;  then                        
                        msg_white "============================================================";
                        msg_white "***** Try to install $dep, please wait ..";
                        msg_white "============================================================";

                        #clear 
                        install_with_package_manager $dep

                        if test $? -eq 0; then
    						msg_white "Success installed dependence: $1"				
    						return 0 #package installed without error
    					else
							msg_white "$LINENO --  ERROR no installd dependence: $1"
    						return 1
  						fi

             fi

        done

}


e_error "The operative system missing dependencies for the following libraries ... "

read -p "Do you wish to install dependences? [Yes (y) / No (n)]" choice
	case "$choice" in 
	  y|Y ) 
			
			install_dependences

			if test $? -eq 0; then
            	#package installed without error
            	msg_white "#############Dependences it's OK #############"	
            	DEPS_OK="YES"			            	
    		else
    			msg_white "$LINENO -- ERROR $RED I can't continue without dependences: $PACKAGES $RESET"    			
    		fi

			;;
	  n|N ) exit 0
		
		;;
	  * ) e_warning "invalid or you dont' have a tty or you are test the script on your source code editor"
	esac

#
# Configure Ruby Gems
#
if [ "$DEPS_OK" == "NO" ]; then
	e_error "The operative system missing dependencies for the following libraries ... "
else
	e_header '== Setup Vagrant =='
fi

e_header '== Configuring Ruby Gems =='

gem update
gem install compass

#
# == Configuring NodeJS ==
#
e_header "Configuring NodeJS"

$ROOT_INSTALL npm update -g
$ROOT_INSTALL npm install -g bower grunt-cli gulp

exit 0
$ROOT_INSTALL pacman -Sy $PACKAGES


#/etc/modules-load.d/virtualbox.conf
#-----------------------------------

$ROOT_INSTALL modprobe vboxdrv
$ROOT_INSTALL modprobe vboxnetadp
$ROOT_INSTALL modprobe vboxnetflt
$ROOT_INSTALL modprobe vboxpci

printf "\e[1;4m%s\e[0m\n" "All DB bkp Completed Successfully"


exit 0