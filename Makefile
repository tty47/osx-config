# Setup computer
.PHONY: user clear all install_ansible setup setup_debug
# --------------------------------------
all: clear install_ansible setup
# --------------------------------------
clear:
	clear
change_owner:
	sudo chown -R $(shell whoami) /opt/homebrew
setup:
	ansible-playbook main.yml --extra-vars "username=$(whoami)"
setup_debug:
	ansible-playbook main.yml --extra-vars "username=$(whoami)" -vvv
user:
	echo $(echo $USER)
