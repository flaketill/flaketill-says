										README
==========================


<img src="https://artpcweb.appspot.com/images/favicon.ico" align="right" />
# flaketill-says [![Codecov](https://img.shields.io/codecov/c/github/codecov/example-python.svg?maxAge=2592000?style=plastic)](https://github.com/flaketill/flaketill-says/releases)
> 

<p align="center">
<!--<a name="top" href="https://artpcweb.appspot.com"><img src="https://raw.githubusercontent.com/flaketill/flaketill-says/master/screenshots/logo.png"></a>-->

<a name="top" href="https://artpcweb.appspot.com"><img src="https://artpcweb.appspot.com/images/logo_artpc.png"></a>
</p>

<p align="center">
<b><a href="#overview">Overview</a></b>
|
<b><a href="#features">Features</a></b>
|
<b><a href="#installation">Installation</a></b>
|
<b><a href="#updating">Updating</a></b>
|
<b><a href="#setup">Setup</a></b>
|
<b><a href="#structure">Structure</a></b>
|
<b><a href="#team-members">Credits</a></b>
|
<b><a href="#license">License</a></b>
</p>

[![Build Status](https://api.travis-ci.org/flaketill/flaketill-says.svg?branch=master)](https://travis-ci.org/flaketill/flaketill-says)
[![Coverage Status](https://coveralls.io/repos/github/flaketill/flaketill-says/badge.svg?branch=master)](https://coveralls.io/github/flaketill/flaketill-says?branch=master)
[![travis](https://img.shields.io/travis/b4b4r07/dotfiles.svg?style=flat-square)](https://travis-ci.org/flaketill/flaketill-says)
[![license](http://img.shields.io/badge/license-MIT-blue.svg?style=flat-square)](https://travis-ci.org/flaketill/flaketill-says)
[![platform](https://img.shields.io/badge/platform-OS%20X%20%7C%20Linux-808080.svg?style=flat-square)](https://travis-ci.org/flaketill/flaketill-says)
[![doc](https://img.shields.io/badge/documentation-etc-red.svg?style=flat-square)](https://travis-ci.org/flaketill/flaketill-says)

Package: flaketill-says

License: Licensed under the GNU GPL v3

Description:

An app for your console for manager proyects, in the future i'll build an app like jarvis

This project is development for Ing. Armando Ibarra <armandoibarra1@gmail.com>

For the versions available, see the [tags on this repository](https://github.com/flaketill/flaketill-says/tags). 

- `Website under construction`: https://artpcweb.appspot.com
- `Facebook`: https://www.facebook.com/erpmtics
- `Twitter`: [![Twitter URL](https://img.shields.io/twitter/url/http/shields.io.svg?style=social&maxAge=2592000?style=plastic)](https://twitter.com/erpmtics)


>### *Features*
- **LINUX** support

### *But why you build this package?*
Because i love linux and development!

***DEMO:***

[![](https://raw.githubusercontent.com/flaketill/flaketill-says/master/screenshots/flaketill-says-demo.gif)][flaketill-says]

<a name="#installation"></a>To quickly install:

```console
$ curl -sL https://raw.githubusercontent.com/flaketill/flaketill-says/master/src/flaketill-shell/modules/install-flaketill-says.sh | sh
"
```

On Arch Linux 

```console
$ sudo yaourt -s flaketill-says
"
```

# Table of Contents

- [Installation](#installation)
    - [Database](#database)
- [Setup](#setup)
    - [Settings](#Settings)
* [Team Members](#team-members)

##Technologys

* Bash
* Python >= 2.7
* Javascript 
* Frameworks,component, module or JavaScript library: 
	--- Backbone >= 1.1 
	--- Jquery >=  1.7.1
* wxPython >= 2.8 

### What is this repository for? ###

* Quick summary
* Version

### How do I get set up? ###

* Summary of set up
* Configuration
* Dependencies
* Database configuration
* How to run tests
* Deployment instructions

### Contribution guidelines ###

* Writing tests
* Code review
* Other guidelines

### Who do I talk to? ###

* Repo owner or admin
* Other community or team contact

## Quick start

To quickly build your environment if you use Linux, run the 
file make-linux.sh, for Mac OS X make-macosx.sh and for windows
make-win.bat

#Features

- Support on linux

| Package | Options | Args | Desciption
|-----------|---------------|-----------|
| flaketill-says | ls-opt | | Show option package

#installation

## Using Package Control (Recommended)
 
To install for now just on arch linux aur

1. 
```bash
$ yaourt -S flaketill-says
```
## Manual Install

###database

##setup

###Settings

### Man Page

```bash
$ man flaketill-says
```

### Development on linux ( On my case with Arch Linux)


1. Install the [Python SDK](https://www.python.org/downloads/).
See the README file for directions. You'll need Python 2.7, [pip 1.4 or later](http://www.pip-installer.org/en/latest/installing.html), and [git](https://git-scm.com/downloads) (`git`) installed too.


2. Clone this repo with:

   ```
   git clone git@github.com:flaketill/flaketill-says.git
   ```
3. Install dependencies in the project's directory -

To install dependencies linux

If you have installed sudo:

```bash

$ sudo pacman -S dep1 dep2 dep3

$ sudo apt-get install dep1 dep2 dep3
```

If you don't have installed sudo:

```bash

$ su -c "apt-get install dep1 dep2 dep3"

```

To install python2 deps 

```bash

$ sudo pip2 install -r dev-pip-dependencies.txt
$ sudo pip2 install -r requirements.txt
```

```Python
#!/usr/bin/env python2
# -*- coding: UTF-8 -*- 
# Distribution setup file

import os

```

For build requirements.txt on src

```bash
$ sudo npm install -g grunt-cli
$ sudo npm install grunt --save-dev
$ pipreqs --force .
```

To install dependencies


```bash
$ sudo npm install -g --save-dev
$ sudo npm install -g grunt-cli
$ sudo npm install grunt-exec --save-dev
$ sudo npm install --save-dev load-grunt-tasks
$ cd flaketill-says/src
$ grunt --force
```

To test a Make i write a boostrap for this

```bash
$ ./boostrap
```

##How to package and distribute your apps

##Python

###Source Distributions

```bash
$ python setup.py sdist
```
###Wheels

A wheel is a built package that can be installed without needing to go through the “build” process

To build a Universal Wheel:

```bash
$ python setup.py bdist_wheel --universal
```

##Mac OS X

To install easy you can use brew

```bash
$ brew install imagemagick
```


Development Workflow
-------------


```bash
$ bash -c "$(curl -fsSL https://raw.githubusercontent.com/flaketill/flaketill-says/master/src/flaketill-shell/modules/install-flaketill-says.sh)"
$ bash -c "$(wget -qO - https://raw.githubusercontent.com/flaketill/flaketill-says/master/src/flaketill-shell/modules/install-flaketill-says.sh)"
```

Screenshots
-------------

[![Alt][screenshot1_thumb]][screenshot1] 

[screenshot1_thumb]: https://raw.github.com/flaketill/flaketill-says/master/screenshots/flaketill-says_thumb.png
[screenshot1]: https://raw.github.com/flaketill/flaketill-says/master/screenshots/flaketill-says.png

## Trial

If you have [Vagrant](https://docs.vagrantup.com/v2/installation/) and [Virtualbox](https://www.virtualbox.org/wiki/Downloads) already installed, this is both faster and cleaner than downloading and compiling all the dependencies. To install, simply do the following:

> **NOTE**: A sample Vagrantfile can be found here => [`Vagrantfile`](https://raw.githubusercontent.com/flaketill/flaketill-says/master/src/Vagrantfile).

```console
$ sudo pacman -S --noconfirm vagrant gcc make
$ vagrant init 
$ vagrant up
```

Getting started

Download the base box and get the box started

```bash
$ vagrant box add archlinux-x86_64 ADDRESS
$ mkdir test_environment
$ cd test_environment
$ vagrant init archlinux-x86_64
$ vagrant up
$ vagrant ssh
```

If you want to try my dotfiles without polluting your development environment, it would be best to use a Vagrant. Have fun by setting and please remove it after finish.

```console
$ vagrant destroy -f   # when finished, destroy the VM
```

##Working in “Development Mode”

With python and pip

```console
$ pip install -e .
```

If you don’t want to install any dependencies at all, you can run:

```console
$ pip install -e . --no-deps
```

##Test

-[Selenium IDE tests](http://docs.seleniumhq.org/projects/ide/)

Documentation
-------------

flaketill-says is fully documented in the manual (For now just man page ).  
You can also find on-line versions at web site. 

https://github.com/flaketill/flaketill-says/blob/master/src/doc/html/index.html
https://github.com/flaketill/flaketill-says/blob/master/src/doc/manual/manual.html 

https://yui.github.io/yuidoc/syntax/

Directory structure

https://en.wikipedia.org/wiki/Filesystem_Hierarchy_Standard

### Feedback

Star this repo if you found it useful. Use the github issue tracker to give feedback on this repo and to ask for scaffolds for other use cases.

# <a name="team-members"></a>Team Members
* "Armando Ibarra" <armandoibarra1@gmail.com>

[![artpc](https://gravatar.com/avatar/6e3af44ff27ae2c67fae0adda36e9b44?s=144)](https://sindresorhus.com)

## Contributing changes

See [CONTRIB.md](CONTRIB.md)

## Licensing

[![CC0](https://licensebuttons.net/p/zero/1.0/88x31.png)](http://creativecommons.org/publicdomain/zero/1.0/)

To the extent possible under law, **"flaketill"** [armandoibarra1@gmail.com](http://erpmtics.com/) has waived all copyright and related or neighboring rights to this work.

Follow me: @erpmtics

Please for more details see [LICENSE](LICENSE)

## References

* [Vagrant - Getting Started](http://docs.vagrantup.com/v2/getting-started/index.html)
*  [A List of base boxes for Vagrant](http://vagrantbox.es/)
*  [ArchLinux and Vagrant](https://wiki.archlinux.org/index.php/Vagrant)

##Special Thanks

The most important topic, thanks to all team proyects:

- Gnu:
    + GNU Autotools
- Gnu/Linux
- Arch linux
- Sublime Text
- Python
- Bash
- 
