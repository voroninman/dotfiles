all: bash git vim apps

git:
	rm -fr ~/.gitconfig
	ln -s $$(pwd)/.gitconfig ~/.

vim:
	mkdir ~/.vim 2>/dev/null
	rm -fr ~/.vimrc
	ln -s $$(pwd)/.vimrc ~/.

bash:
	rm -fr ~/.bash{rc,_profile}
	curl -L https://raw.github.com/maxtsepkov/bash_colors/master/bash_colors.sh > ~/.bash_colors
	touch ~/.bashrc_local
	ln -s $$(pwd)/.bashrc ~/.
	ln -s $$(pwd)/.bash_profile ~/.

brew:
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	brew cleanup
	brew update

brew-cask:
	brew install caskroom/cask/brew-cask

apps-cli: brew
	brew install \
		coreutils \
		nodejs \
		httpie \
		mtr \
		the_silver_searcher \
		htop \
		bash \
		nvm \
		node \
		pyenv \
		pyenv-virtualenvwrapper \
		git
	brew tap homebrew/dupes
	brew install \
		homebrew/dupes/gdb \
		homebrew/dupes/grep \
		homebrew/dupes/gzip \
		homebrew/dupes/less \
		homebrew/dupes/libpcap \
		homebrew/dupes/lsof \
		homebrew/dupes/make \
		homebrew/dupes/ncurses \
		homebrew/dupes/openssh \
		homebrew/dupes/tcpdump \
		homebrew/dupes/zlib
	brew cleanup

apps-gui: brew-cask
	brew cask install --appdir="/Applications" \
		utorrent \
		1password \
		alfred \
		atom \
		dropbox \
		flux \
		google-chrome \
		recordit \
		sequel-pro \
		sublime-text \
		virtualbox \
		tree \
		iterm2 \
		appcleaner \
		vlc
	brew cask alfred link
	brew cleanup

apps: apps-cli apps-gui
	echo
