#!/usr/bin/env sh
# -*- coding: UTF-8 -*- 
# Copyright (C) 2016 Armando Ibarra
#  v0.1 alpha - 2016
# 

#----------------------------------------------------------------------
# Bootstrapping
#
# Author: Ing. Armando Ibarra <armandoibarra1@gmail.com>
# Email: armandoibarra1@gmail.com
# Date: 05/05/2016 
# Purpose:
#	 bootstrap script for 
#    Performs the compiling the project set up install
#
#----------------------------------------------------------------------
# NOTES:    
#----------------------------------------------------------------------
# $ /bin/sh ./autogen.sh --help
#----------------------------------------------------------------------

###############################################################################

# Licensed under the GNU GPL v3 - http://www.gnu.org/licenses/gpl-3.0.txt
# - or any later version.

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


aclocal \
&& automake --gnu --add-missing \
&& autoconf

#autoreconf -i && ./configure && make && make install
exit 0