#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

AC_PREREQ([2.69])
AC_INIT([flaketill-says], [0.0.1], [https://github.com/flaketill/flaketill-says/issues])
AM_INIT_AUTOMAKE([1.12 foreign no-define])
AC_CONFIG_FILES([Makefile])

AM_MAINTAINER_MODE([enable])

# Variables
ARCH=$(uname -s)
AC_SUBST(ARCH)

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

    Architecture           : ${ARCH}

    flaketill-says version : ${PACKAGE_VERSION}
"