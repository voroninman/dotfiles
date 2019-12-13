xcode-select --install

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew bundle

defaults write com.apple.dock persistent-apps '()'
defaults write com.apple.dock persistent-others '()'
defaults write com.apple.dock autohide -bool true
defaults write com.apple.Terminal AutoMarkPromptLines -int 0

killall Dock
open /Applications/Utilities/Terminal.app/Contents/Resources/Fonts/
