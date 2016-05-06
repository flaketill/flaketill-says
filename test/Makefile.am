# Run the tests with the shell detected at configure time.
LOG_COMPILER = $(SHELL)

# Run the testsuite with the installed aclocal and automake.
installcheck-local:
	am_running_installcheck=yes $(MAKE) $(AM_MAKEFLAGS) check