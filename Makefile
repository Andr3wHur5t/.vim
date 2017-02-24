# Install .vimrc file
setup:
	ln -sf ~/.vim/.vimrc ~/.vimrc \
		&& vim -c 'PlugInstall|q!|q!' \
		&& echo -e "\n\n===== Finished Vim Setup GLHF =====\n\n"
install:
	brew install macvim --with-override-system-vim \
		&& brew install node go cmake \
		&& brew linkapps \
		&& make setup
uninstall:
	brew uninstall macvim \
		&& make clean
clean:
	rm -rf plugged/

