# Install .vimrc file
setup:
	ln -sf ~/.vim/.vimrc ~/.vimrc \
		&& ln -sf ~/.vim/.hyper.js ~/.hyper.js
		&& vim -c 'PlugInstall|q!|q!' \
		&& echo -e "\n\n===== Finished Vim Setup GLHF =====\n\n"
install:
	brew install macvim --with-override-system-vim \
		&& brew install node go cmake coreutils ShellCheck \
		&& brew linkapps \
		&& npm install jsonlint -g
		&& make setup
uninstall:
	brew uninstall macvim \
		&& make clean
clean:
	rm -rf plugged/
update:
	git checkout master && git pull && $(MAKE) install
