flaketill-says notes on hacking the source

## Supporting Different Languages

- Localization (i18n)

## Directory structure for applications

The Filesystem Hierarchy Standard specifies where to put files.

/usr/local/bin: executables intended to be executed by users (interactively or from scripts)

/usr/local/lib: libraries available to many programs, not just yours

/usr/local/lib/YOUR-PROGRAM-NAME: any other architecture-dependent files

/usr/local/share/doc: documentation (except in man and info format)

/usr/local/share/info: documentation in info format

/usr/local/share/man/man*: man pages

/usr/local/share/YOUR-PROGRAM-NAME: any other architecture-independent 
files


application.ini

##Update pip 

```console
$ sudo pip2 install --upgrade pip
```

To generating a tox.ini file automatically, to work with python2 use export

```console
$ export envpython="python2"
$ tox-quickstart
```


```console
$ su -c "pip2 install -r requirements.txt"
```

To upgrade pip with easy_install

```console
$ sudo easy_install -U setuptools
```


Happy packaging!