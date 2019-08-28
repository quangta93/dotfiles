#!/bin/bash
## Inspiration: https://sourabhbajaj.com/mac-setup

# Before running this script:
# Install latest Xcode from App Store
sudo xcodebuild -license

##############################
##############################
##############################
## Homebrew
echo 'Installing homebrew package manager'
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"


##############################
##############################
##############################
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
##############################
##############################
echo 'Installing oh-my-zsh shell'
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


##############################
##############################
##############################
## Git configuration
## TODO: setup git including generating SSH keys & global git config


##############################
##############################
##############################
## Personal dotfiles
echo 'Downloading personal dotfiles'
mkdir $HOME/Development
# TODO: test clone
git clone https://github.com/quangta93/dotfiles.git $HOME/Development/dotfiles


##############################
##############################
##############################
## Shell configuration
echo 'Loading zsh and vim configurations'
rm $HOME/.zshrc
rm $HOME/.vimrc
ln -s $HOME/Development/dotfiles/.zshrc $HOME/.zshrc
ln -s $HOME/Development/dotfiles/.vimrc $HOME/.vimrc


##############################
##############################
##############################
## Applications
brew tap caskroom/cask ## Tap homebrew cask to download applications

## iTerm2
echo 'Installing iTerm2'
brew cask install iterm2
## TODO: programmatically customize font & theme for iterm2

## VS Code
echo 'Installing Visual Studio Code and its extensions'
brew search visual-studio-code
brew cask info visual-studio-code
brew cask install visual-studio-code

## TODO: VS Code Extensions

echo 'Loading VS Code settings'


brew cleanup


##############################
##############################
##############################
## System Info
brew install neofetch

neofetch
