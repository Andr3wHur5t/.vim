# Install .vimrc file
setup:
	ln -sf ~/.vim/.vimrc ~/.vimrc
install:
	brew install macvim --with-override-system-vim \
		&& brew linkapps \
		&& make setup
clean:
	rm -rf plugged/

