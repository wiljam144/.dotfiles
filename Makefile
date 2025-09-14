default:
	echo "Stowing all files."
	stow .
	echo "Pulling Emacs config."
	cd ~/.config/emacs && git pull

first:
	mkdir -p ~/.config
	stow .
	git clone https://github.com/wiljam144/emacs-dots ~/.config/emacs

