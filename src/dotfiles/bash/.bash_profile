#
# ~/.bash_profile
# For example with GNU stow
# mkdir ~/.dotfiles
# cd ~/.dotfiles
# tree -a --charset ascii .
# .
# |-- .bashrc -> bash/.bashrc
# |-- .config
# |   `-- fish
# |       |-- config.fish
# |       `-- functions
# |           |-- la.fish
# |           `-- ls.fish
# |-- .stowrc
# |-- bash
# |   |-- .bash_profile
# |   `-- .bashrc
# |-- doxygen
# |   |-- Doxyfile
# |   `-- Doxyfile.bak
# |-- git
# |   `-- .gitconfig
# `-- ssh
#     `-- .ssh
#         `-- config

# If you can link the config bash you can exec:
# stow -t ~ bash/

#	Others 
# stow -t ~/.config .config/
# stow -t ~ git/
# stow -t ~ ssh/

[[ -f ~/.bashrc ]] && . ~/.bashrc