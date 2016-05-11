# README #

==========================
flaketill-says
==========================

Package: flaketill-says

License: Licensed under the GNU GPL v3

Description:

An app for your console for manager proyects in the future i'll build an app like jarvis

This project is development for Ing. Armando Ibarra <armandoibarra1@gmail.com>

For the versions available, see the [tags on this repository](https://github.com/flaketill/flaketill-says/tags). 

Website under construction: https://artpcweb.appspot.com
Facebook: https://www.facebook.com/erpmtics
Twitter: https://twitter.com/erpmtics

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

Documentation
-------------

flaketill-says is fully documented in the manual (For now just man page ).  
You can also find on-line versions at web site. 

https://github.com/flaketill/flaketill-says/blob/master/src/doc/html/index.html
https://github.com/flaketill/flaketill-says/blob/master/src/doc/manual/manual.html 


### Feedback

Star this repo if you found it useful. Use the github issue tracker to give feedback on this repo and to ask for scaffolds for other use cases.

## Contributing changes

See [CONTRIB.md](CONTRIB.md)

## Licensing
See [LICENSE](LICENSE)
