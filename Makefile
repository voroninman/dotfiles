links=.vimrc .bashrc .bash_profile .gitconfig

link: unlink
	for link in $(links); do \
		ln -s $$(pwd)/$$link ~/.; \
	done

unlink:
	for link in $(links); do \
		rm -f ~/$$link; \
	done
