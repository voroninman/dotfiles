links=.vimrc .bashrc .bashrc_profile .gitconfig

install: uninstall
	for link in $(links); do \
		echo $$(realpath $$link); \
		ln -s $$(realpath $$link) ~/.; \
	done

uninstall:
	for link in $(links); do \
		rm -f ~/$$link; \
	done

