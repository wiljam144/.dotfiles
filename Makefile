default:
	echo "Stowing all files."
	stow .
	echo "Pulling Emacs config."
	cd ~/.config/emacs && git pull

first:
	stow .
	mkdir .config
	cd config && git clone https://github.com/wiljam144

