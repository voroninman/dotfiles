# TODO: Migrate to bash scripts

all: bash git vim apps

git:
	rm -fr ~/.gitconfig
	ln -s $$(pwd)/.gitconfig ~/.

vim:
	mkdir -p ~/.vim
	rm -fr ~/.vimrc
	ln -s $$(pwd)/.vimrc ~/.

bash:
	rm -fr ~/.bash{rc,_profile}
	curl -L https://raw.github.com/maxtsepkov/bash_colors/master/bash_colors.sh > ~/.bash_colors
	touch ~/.bashrc_local
	ln -s $$(pwd)/.bashrc ~/.
	ln -s $$(pwd)/.bash_profile ~/.

brew:
	brew --prefix &>/dev/null || \
		ruby -e "$$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	brew update
	brew tap caskroom/versions
	brew tap homebrew/dupes

brew-cask: brew
	brew install caskroom/cask/brew-cask

apps-cli: brew
	brew install \
		coreutils \
		python \
		nodejs \
		httpie \
		mtr \
		the_silver_searcher \
		htop \
		bash \
		nvm \
		pyenv \
		pyenv-virtualenvwrapper \
		git \
		tree
	# To make bash 4 be the default we need do:
	# sudo echo '/usr/local/bin/bash' | sudo tee -a /etc/shells
	# chsh -s /usr/local/bin/bash
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
		sublime-text3 \
		virtualbox \
		iterm2 \
		appcleaner \
		vlc
	brew cleanup

apps: apps-cli apps-gui
	brew upgrade
