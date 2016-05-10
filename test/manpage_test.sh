#Search makefile for automake
#find . -name Makefile.am  -print

# ./configure \
#     --prefix=/usr \
#     --mandir=/usr/share/man \
#     --infodir=/usr/share/info \ 
# && make && make install

#Using GNU Stow to manage source installs, .stowrc but for now with EXPORT

#Structure base
#For make folders use
#mkdir -p {bin,include,lib,ib64,local,sbin,share,tmp}
# /bin
# /include
# /lib
# /lib64
# /local
# /sbin
# /share
# /tmp

#mkdir -p $HOME/stow
#mkdir -p ~/stow/flaketill-says-0.0.1
#cd ~/stow/flaketill-says-0.0.1 \
# && ./configure --prefix=~/stow/flaketill-says-0.0.1 --help

#Or save on home 
#~/.stowrc

# --dir=$HOME/flaketill-says/src
# --target=/home/myusername/local

#stow -d . --target= ~/stow/flaketill-says-0.0.1
#stow -d . -t="~/stow/flaketill-says-0.0.1"

#stow -S -d . -t="$HOME/stow/flaketill-says-0.0.1"

#stow -t="$HOME/stow/flaketill-says-0.0.1"

stow -t="$HOME/stow/flaketill-says"

stow --no-folding --dir=. --target=$HOME/stow/flaketill-says


#make
#make install prefix=/usr/local/stow/package



#Test your ignore/include file
# stow -S -v -n flaketill-says
#stow -S -v -n -R -d src -t $HOME/stow/flaketill-says

#Install with GNU Stow
#stow -S program-x.x.x

#Unistall - stow -D flaketill-says


#Install for example with PKGBUILD
#install -g 0 -o 0 -m 0644 flaketill-says.1 /usr/local/man/man1/
#gzip /usr/local/man/man1/flaketill-says.1

#man ./flaketill-says.1
man flaketill-says.1