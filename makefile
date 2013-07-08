.PHONY: all bash zsh vim git mutt awesome hosts

all: bash zsh vim git mutt awesome hosts

update: gitignore hosts

bash: alias env
	ln -si /bash/profile ~/.bash_profile
	ln -si ${PWD}/bash/bashrc ~/.bashrc

alias:
	ln -si ${PWD}/bash/alias ~/.alias

env:
	ln -si ${PWD}/bash/env ~/.env

zsh: alias
	ln -si ${PWD}/zsh/zshrc ~/.zshrc
	ln -si ${PWD}/zsh/zshenv ~/.zshenv

vim:
	ln -si ${PWD}/vim/vimrc ~/.vimrc	

git: gitignore
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
