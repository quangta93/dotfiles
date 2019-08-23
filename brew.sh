
# Before running this script:
# Install Xcode from App Store

# homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# oh-my-zsh
sudo xcodebuild -license

# setup zsh
# powerlevel9k
brew tap sambadevi/powerlevel9k
brew install powerlevel9k

brew install zsh-syntax-highlighting
brew install zsh-autosuggestions

brew tap homebrew/cask-fonts
brew cask install font-hack-nerd-font

mkdir -p $HOME/.zsh/plugins/bd
curl https://raw.githubusercontent.com/Tarrasch/zsh-bd/master/bd.zsh > $HOME/.zsh/plugins/bd/bd.zsh

# personal dotfiles
mkdir $HOME/Development
cd $HOME/Development
git clone https://https://github.com/quangta93/dotfiles.git

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

rm $HOME/.zshrc
rm $HOME/.vimrc
ln -s $HOME/Development/dotfiles/.zshrc $HOME/.zshrc
ln -s $HOME/Development/dotfiles/.vimrc $HOME/.vimrc