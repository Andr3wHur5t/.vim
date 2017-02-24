# Install .vimrc file
setup:
	ln -sf ~/.vim/.vimrc ~/.vimrc
install:
	brew instal vim && make setup
