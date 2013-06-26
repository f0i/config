.PHONY: all bash zsh vim git mutt awesome

all: bash zsh vim git mutt awesome

bash:
	ln -s ~/config/bash/bashrc ~/.bashrc

zsh:
	ln -s ~/config/zsh/zshrc ~/.zshrc
	ln -s ~/config/zsh/zshenv ~/.zshenv

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
