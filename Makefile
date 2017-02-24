# Install .vimrc file
setup:
	~/.vim/setup.sh
install:
	brew instal vim && make setup
clean:
	rm -rf plugged/

