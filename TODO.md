#TODO
----

Things that I still have to do, with explanations and justifications for each one

## To Do List version 0.0.1

## flaketill-says

## Development


### 
```bash
$ cd flaketill-says
$ tree -a src/
$ stow 
```

src/
├── bin
│   ├── flaketill-says
│   └── Makefile.am
├── doc
│   └── Makefile.am
├── dotfiles
│   └── .stowrc
├── etc
├── ib64
├── include
├── __init__.py
├── lib
│   └── Makefile.am
├── local
├── Makefile.am
├── sbin
├── share
│   └── flaketill-says.1
├── .stow-local-ignore
└── tmp

### Software-Building-HOWTO

###Documentation for package

	- [ ] Generate documentation from source code
	- [ ] Found automatic dependencies
	- [ ] Build Github page https://pages.github.com/
	- [x] Build Github page https://flaketill.github.io/


### Distributed Git - Maintaining a Project - Merging Workflows

## Use autotools for 

	- [x] Build structure base for package

## Managing dotfiles with GNU stow

	- [ ]

For not install the package and create a .egg-link in the deployment directory

```bash
$ cd flaketill-says
$ tree -a src/
$ sudo python2 setup.py develop
```

To “freeze” the current state of the environment packages. To do this, run

```bash
$ cd flaketill-says
$ tree -a src/
$ sudo pip2 freeze > develop-requirements.txt
```

## Owns shell script 

	- [x] Build bash script for make with autotools the packages
	- [ ] Build shell script to automate the building of packages with makepkg ( /etc/makepkg.conf | ~/.makepkg.conf )
	- [ ] Organize a framework based project in Git
	- [ ] Something for install with pacman form text file the dependencies like pip ( python  -> pip install -r /path/to/requirements.txt )
	- [ ]
	- [ ]  SSH Keys settings for different github account
	- [ ]  Stow -vt /usr/local/ -R src/
	- [ ] 
	- [ ]			

## General

- [ ] Update requeriments.txt for python and requeriments.sh for linux dependencies ( like pacman on arch linux ) and 
bower.json and package.json ( Grunt, NPM and Bower  )



## Dist

### Arch Linux
	- [x] Build PKGBUILD to install package from aur with: yaourt -S flaketill-says


## Utils

- [ ] Add alarm or reminder like pays to suppliers like ISP's, invoices 
- [ ] Build structure to invoice's utils
	- [ ] Made folders controllers
- [ ] Build bash script for made each module base like Boilerplate or template with base files

##Features in the future
- [ ] Sleep
- [ ] Project Management Software like Redbooth, Basecamp but open source: ProjectLibre, OpenProject and Redmine
- [ ] Project an integrated ticket system is the way to go like Trac
- [ ] Task manager like devtodo 2