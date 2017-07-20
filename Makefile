all: bash git vim apps
linux: git vim bash
macos: git vim bash apps

git:
	rm -fr ~/.gitconfig
	ln -s $$(pwd)/.gitconfig ~/.

vim:
	mkdir -p ~/.vim
	rm -fr ~/.vimrc
	ln -s $$(pwd)/.vimrc ~/.

bash:
	rm -fr ~/.bash{rc,_profile}
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
		bash \
		coreutils \
		docker \
		git \
		go \
		htop \
		httpie \
		jq \
		mtr \
		nasm \
		neovim \
		nmap \
		nodejs \
		nvm \
		pgcli \
		pstree \
		pyenv \
		pyenv-virtualenvwrapper \
		python \
		spoof-mac \
		the_silver_searcher \
		tmux \
		tree \
		watch \
		youtube-dl
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
		1password \
		alfred \
		appcleaner \
		blockblock
		cryptomator \
		dnscrypt \
		dropbox \
		flux \
		google-chrome \
		iterm2 \
		knockknock \
		macdown \
		postico \
		recordit \
		sequel-pro \
		sublime-text \
		transmission \
		virtualbox \
		vlc
	brew cleanup

apps: apps-cli apps-gui
	brew upgrade
