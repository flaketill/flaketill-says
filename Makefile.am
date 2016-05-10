AUTOMAKE_OPTIONS = foreign

SUBDIRS = src
dist_doc_DATA = README.md


# Escape paths properly on windows
#if NATIVE_WIN32
#AM_CPPFLAGS = \
#	-DPKG_CONFIG_PC_PATH="\"$(subst /,\/,$(pc_path))\"" \
#	-DPKG_CONFIG_SYSTEM_INCLUDE_PATH="\"$(subst /,\/,$(system_include_path))\"" \
#	-DPKG_CONFIG_SYSTEM_LIBRARY_PATH="\"$(subst /,\/,$(system_library_path))\""
#else
#AM_CPPFLAGS = \
#	-DPKG_CONFIG_PC_PATH="\"$(pc_path)\"" \
#	-DPKG_CONFIG_SYSTEM_INCLUDE_PATH="\"$(system_include_path)\"" \
#	-DPKG_CONFIG_SYSTEM_LIBRARY_PATH="\"$(system_library_path)\""
#endif

#Various data files

dist_doc_DATA = README.md
dist_man_MANS = pkg-config.1

EXTRA_DIST =	\
	COPYNG		\
	autogen.sh	\
	bootstrap

#@echo "error: bash is required to include"