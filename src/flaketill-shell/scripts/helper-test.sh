#!/usr/bin/env bash
# -*- coding: UTF-8 -*- 
# Copyright (C) 2016 Armando Ibarra
#  v0.0.1 alpha - 2016
# 
#----------------------------------------------------------------------
# 
# Test a bash or shell common helpers

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
# 2) The Goal for this shell script is test import lib from flaketill-says
#----------------------------------------------------------------------

#############################################################################
#																			#
# Licensed under the GNU GPL v3 - http://www.gnu.org/licenses/gpl-3.0.txt	#
# - or any later version.													#
#																			#					
# 																			#
# A bash script installing/building all needed dependencies to 				#
# build wps languages for just some Linux distributions.					#
#																			#
# @author: Ing. Armando Ibarra												#
#																			#
# This program is free software: you can REDistribute it and/or modify		#
# it under the terms of the GNU General Public License as published bye		#
# the Free Software Foundation, either version 3 of the License, org		#
# (at your option) any later version.										#
#																			#
# This program is distributed in the hope that it will be useful,			#
# but WITHOUT ANY WARRANTY; without even the implied warranty of 			#
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See then 			#
# GNU General Public License for more details.								#
#																			#
# You should have received a copy of the GNU General Public License 		# 
# along with this program.  If not, see <http://www.gnu.org/licenses/>.		#
#############################################################################

#----------------------------------------------------------------------
# NOTES:    
#----------------------------------------------------------------------

#./configure --prefix=/usr --sysconfdir=/etc --localstatedir=/var \
#&& make && make install

#BASH_COMMON_HELPERS_LIB
#export FLAKETILLSAYS_HELPERS_LIB="/local/lib/flaketill-says/flaketillsays-helpers.sh"

export FLAKETILLSAYS_HELPERS_LIB="$HOME/Developer/flaketill_armandoibarra1/flaketill-says/src/local/bin/flaketillsays-helpers.sh"

# BEGIN: Read functions from ""a library emulation"" 
if [[ -z "${FLAKETILLSAYS_HELPERS_LIB}" ]]; then
  printf "Required environment variable is not set: FLAKETILLSAYS_HELPERS_LIB"
  exit 1
fi

if [[ ! -f "${FLAKETILLSAYS_HELPERS_LIB}" ]]; then
  printf "Required file does not exist: ${FLAKETILLSAYS_HELPERS_LIB}"
  exit 2
fi

#Its like as 
#	source flaketillsays-helpers.sh
# . /usr/local/bin/flaketill-says/flaketillsays-helpers.sh
#source "${FLAKETILLSAYS_HELPERS_LIB}" -i
#https://raw.githubusercontent.com/flaketill/gnu_linux/master/bash_scripts/packages/kingsoft_office/wps_es.sh
source "${FLAKETILLSAYS_HELPERS_LIB}" --import_lib

#Call function from flaketillsays-helpers.sh
list_file || exit 3

#Testing Headers and  Logging
e_header "Testing Headers and  Logging"
e_arrow "Todo list"
e_success "- [x] Testing"
e_error "- [ ] Build a repository with gae"
e_warning "- [ ] Remainder"
e_underline "NOTES"
e_bold "README"
e_note "Good bye!"

printf "\e[1;4m%s\e[0m\n" "Completed Successfully"

#Import flaketillsays-helpers.sh with option -t (Testing -)
source "${FLAKETILLSAYS_HELPERS_LIB}" -t
#list_file || exit 3

#show_msn_w "Test helper bash lib" || exit 3

# END