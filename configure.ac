#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

AC_PREREQ([2.69])
AC_INIT([flaketill-says], [0.0.1], [https://github.com/flaketill/flaketill-says/issues],[flaketill-says])
AM_INIT_AUTOMAKE([1.12 foreign no-define])

#AC_CONFIG_FILES([Makefile][flaketill-says.pc.in])
AC_CONFIG_FILES([Makefile])

AM_MAINTAINER_MODE([enable])

# Variables
#ARCH=$(uname -s)
AC_SUBST(ARCH)

# Variables
#FULL-PACKAGE-NAME=flaketill-says
#PACKAGE_NAME=$(eval echo ${FULL-PACKAGE-NAME} )
#PACKAGE=flaketill-says
#VERSION=0.0.1
#BUG-REPORT-ADDRESS=https://github.com/flaketill/flaketill-says/issues

AC_DEFINE(PACKAGE_NAME, "AC_PACKAGE_NAME", [flaketill-says])
AC_DEFINE(VERSION, "AC_PACKAGE_VERSION", [0.0.1])
#AC_DEFINE(GETTEXT_PACKAGE, "AC_PACKAGE_NAME", [foo])

# Dependencies
PKG_PROG_PKG_CONFIG
PKG_INSTALLDIR


#AC_PROG_INTLTOOL([0.20])

# Checks for programs.

# Checks for libraries.

# Checks for header files.

# Checks for typedefs, structures, and compiler characteristics.

# Checks for library functions.

AC_OUTPUT

echo "
${PACKAGE_NAME}:

  Build information:
    source code location   : ${srcdir}
    prefix                 : ${prefix}
    sysconfdir             : $(eval echo ${sysconfdir})
       conf file           : $(eval echo ${sysconfdir})/flaketill-says.conf
    localstatedir          : $(eval echo ${localstatedir})
       database dir        : $(eval echo ${localstatedir})/lib/flaketill-says/
       cache dir           : $(eval echo ${localstatedir})/cache/flaketill-says/pkg/
    flaketill-says version : ${PACKAGE_VERSION}
"