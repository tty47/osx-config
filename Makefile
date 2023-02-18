# Setup computer
.PHONY: user clear all change_owner install_ansible setup setup_debug nvim zsh
# --------------------------------------
all: clear change_owner install_ansible setup_debug
# --------------------------------------
clear:
	clear

change_owner:
	sudo chown -R $(shell whoami) /opt/homebrew

setup:
	ansible-playbook main.yml --extra-vars "username=`whoami`"

setup_debug:
	ansible-playbook main.yml --extra-vars "username=`whoami`" -vvv

nvim:
	ansible-playbook main.yml --extra-vars "username=`whoami`" -vvv -t nvim

zsh:
	ansible-playbook main.yml --extra-vars "username=`whoami`" -vvv -t zsh

tmux:
	ansible-playbook main.yml --extra-vars "username=`whoami`" -vvv -t tmux

git:
	ansible-playbook main.yml --extra-vars "username=`whoami`" -vvv -t git

tag: clear
	ansible-playbook main.yml --extra-vars "username=`whoami`" -vvv -t $(TAG)
