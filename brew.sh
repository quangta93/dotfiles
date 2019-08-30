#!/bin/bash
## Inspiration: https://sourabhbajaj.com/mac-setup

# Before running this script:
# Install latest Xcode from App Store
sudo xcodebuild -license

##############################
## Homebrew
##############################
echo 'Installing homebrew package manager'
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"


##############################
## oh-my-zsh
##############################
echo 'Installing oh-my-zsh shell'
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo 'Loading packages for oh-my-zsh'
brew tap sambadevi/powerlevel9k # powerlevel9k theme
brew install powerlevel9k

brew install zsh-syntax-highlighting
brew install zsh-autosuggestions

brew tap homebrew/cask-fonts
brew cask install font-hack-nerd-font

mkdir -p $HOME/.zsh/plugins/bd
curl https://raw.githubusercontent.com/Tarrasch/zsh-bd/master/bd.zsh > $HOME/.zsh/plugins/bd/bd.zsh


##############################
## Git configuration
##############################
echo 'Setting up git'
## TODO: setup git including generating SSH keys & global git config


##############################
## Personal dotfiles
##############################
echo 'Downloading personal dotfiles'
mkdir $HOME/Development
# TODO: test clone
git clone https://github.com/quangta93/dotfiles.git $HOME/Development/dotfiles
export DOTFILES=$HOME/Development/dotfiles


##############################
## Shell configuration
##############################
echo 'Loading zsh and vim configurations'
rm $HOME/.zshrc
rm $HOME/.vimrc
ln -s $DOTFILES/.zshrc $HOME/.zshrc
ln -s $DOTFILES/.vimrc $HOME/.vimrc


##############################
## Applications
##############################
brew tap caskroom/cask ## Tap homebrew cask to download applications

brew install exa
brew cask install spectacle
brew cask install google-chrome
brew cask install alfred
brew cask install caffeine
brew cask install sourcetree

## iTerm2
echo 'Installing iTerm2'
brew cask install iterm2
## TODO: programmatically customize font & theme for iterm2

## VS Code
echo 'Installing Visual Studio Code and its extensions'
brew cask install visual-studio-code

echo 'Loading VS Code settings'
export VSCODE_USER="$HOME/Library/Application Support/Code/User"
rm -f $VSCODE_USER/keybindings.json $VSCODE_USER/settings.json
ln $DOTFILES/vscode/keybindings.json $VSCODE_USER/keybindings.json
ln $DOTFILES/vscode/settings.json $VSCODE_USER/settings.json

## TODO: VS Code Extensions
echo 'Installing VS Code extensions'


##############################
## nvm & node
##############################
# TODO:

brew cleanup


##############################
## System Info
##############################
brew install neofetch

neofetch
