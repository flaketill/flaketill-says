#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

AC_PREREQ([2.69])
AC_INIT([flaketill-says], [0.0.1], [https://github.com/flaketill/flaketill-says/issues],[flaketill-says])
AM_INIT_AUTOMAKE([1.12 foreign no-define])

#AC_CONFIG_FILES([Makefile][flaketill-says.pc.in])
##############################################################################
#AC_CONFIG_FILES([Makefile])

AM_MAINTAINER_MODE([enable])
AC_PREFIX_DEFAULT([/usr])

AM_CONDITIONAL(MAKEDOCS, test "$DOCS" == "yes" )

# Makefiles
AC_CONFIG_FILES([Makefile
				 src/Makefile
				 tests/Makefile])


# Documentation files
[[ "$DOCS" == "yes" ]] && \
AC_CONFIG_FILES([	src/doc])

# man pages
AC_CONFIG_FILES([src/share/flaketill-says.1])

# Scripts common or general use on severals bash or shell script (Try to emulate module or lib)
AC_CONFIG_FILES([src/local/bin/flaketillsays-helpers.sh])

# Variables
#ARCH=$(uname -s)
AC_SUBST(ARCH)

# Variables
#FULL-PACKAGE-NAME=flaketill-says
#PACKAGE_NAME=$(eval printf ${FULL-PACKAGE-NAME} )
#PACKAGE=flaketill-says
#VERSION=0.0.1
#BUG-REPORT-ADDRESS=https://github.com/flaketill/flaketill-says/issues

AC_DEFINE(PACKAGE_NAME, "AC_PACKAGE_NAME", [flaketill-says])
AC_DEFINE(VERSION, "AC_PACKAGE_VERSION", [0.0.1])
#AC_DEFINE(GETTEXT_PACKAGE, "AC_PACKAGE_NAME", [foo])

# Dependencies
PKG_PROG_PKG_CONFIG
PKG_INSTALLDIR

##############################################################################

#AC_PROG_INTLTOOL([0.20])

# Checks for programs.

#
# Check for programs we need
##############################################################################
AC_PROG_LN_S
AC_CHECK_PROG([DOXYGEN], [doxygen], [doxygen])

# Checks for libraries.

# Checks for header files.

# Checks for typedefs, structures, and compiler characteristics.

# Checks for library functions.

AC_OUTPUT

printf "
${PACKAGE_NAME}:

  Build information:
    source code location   : ${srcdir}
    prefix                 : ${prefix}
    sysconfdir             : $(eval printf ${sysconfdir})
       conf file           : $(eval printf ${sysconfdir})/flaketill-says.conf
    localstatedir          : $(eval printf ${localstatedir})
       database dir        : $(eval printf ${localstatedir})/lib/flaketill-says/
       cache dir           : $(eval printf ${localstatedir})/cache/flaketill-says/pkg/
    flaketill-says version : ${PACKAGE_VERSION}
"

# prints warning if dependencies was not found
if [[ "X$DOXYGEN" == "X" ]] ; then
	printf
	printf
	printf -e "\tWARNING: doxygen was not found in your path."
	printf -e "\t         html documentation will not be generated."
	printf
	printf
fi