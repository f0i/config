.PHONY: all bash vim git mutt awesome

all: bash vim git mutt awesome

bash:
	ln -s ~/config/bash/bashrc ~/.bashrc

vim:
	ln -s ~/config/vim/vimrc ~/.vimrc	

git:
	ln -s ~/config/git/gitconfig ~/.gitconfig

mutt:
	mkdir -p ~/.mutt/
	ln -s ~/config/mutt/muttrc ~/.mutt/muttrc
	ln -s ~/config/mutt/mailcap ~/.mutt/mailcap
	ln -s ~/config/mutt/offlineimaprc ~/.offlineimaprc

awesome:
	mkdir -p ~/.config/awesome/
	ln -s ~/config/awesome/rc.lua ~/.config/awesome/rc.lua
	ln -s ~/config/awesome/theme/ ~/.config/awesome/theme
