# dotfiles
Personal dotfiles by @quangta93

## Setup
- Homebrew
  - Plugins: zsh-syntax-highlighting, zsh-autosuggestions
- Oh-my-zsh
- Powerlevel9k
- Nerd Fonts

## Linking
```
# zsh
ln -s /link/to/dotfiles/.zshrc ~/.zshrc

# vim
ln -s /link/to/dotfiles/.vimrc ~/.vimrc

# VS Code
cd ~/Library/Application\ Support/Code/User
ln -s /link/to/dotfiles/.vscode-keybindings.json keybindings.json
ln -s /link/to/dotfiles/.vscode-settings.json settings.json
```