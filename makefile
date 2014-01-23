.PHONY: all bash vim git mutt awesome hosts x

all: bash vim git mutt awesome hosts x

update: gitignore hosts

bash: alias env bash_private
	ln -si ${PWD}/bash/profile ~/.bash_profile
	ln -si ${PWD}/bash/bashrc ~/.bashrc

alias:
	ln -si ${PWD}/bash/alias ~/.alias

env:
	if [ ! -e bash/env ]; then cp bash/env.template bash/env; fi
	ln -si ${PWD}/bash/env ~/.env

bash_private:
	if [ ! -e bash/private ]; then cp bash/private.template bash/private; fi
	ln -si ${PWD}/bash/private ~/.bash_private

vim:
	ln -si ${PWD}/vim/vimrc ~/.vimrc
	ln -si ${PWD}/vim/conf ~/.vim/f0i

git: gitignore gitconfig

gitconfig:
	ln -si ${PWD}/git/gitconfig ~/.gitconfig

gitignore:
	cd ./git/gitignore/Global && ./generate.sh

mutt:
	mkdir -p ~/.mutt/
	ln -si ${PWD}/mutt/muttrc ~/.mutt/muttrc
	ln -si ${PWD}/mutt/mailcap ~/.mutt/mailcap
	ln -si ${PWD}/mutt/offlineimaprc ~/.offlineimaprc

awesome:
	mkdir -p ~/.config/awesome/
	ln -si ${PWD}/awesome/rc.lua ~/.config/awesome/rc.lua
	ln -si ${PWD}/awesome/theme/ ~/.config/awesome/theme

hosts:
	cd ./hosts && ./get-hosts.sh
	cd ./hosts && ./generate.sh

x:
	ln -si ${PWD}/x/xdefaults ~/.Xdefaults
