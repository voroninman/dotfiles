/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
defaults write com.apple.dock persistent-apps '()'
defaults write com.apple.dock persistent-others '()'
defaults write com.apple.dock autohide -bool true
killall Dock
open /Applications/Utilities/Terminal.app/Contents/Resources/Fonts/
