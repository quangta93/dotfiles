# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/$(whoami)/.oh-my-zsh"

DEFAULT_USER=$(whoami)

# iTerm2 color scheme
TERM=xterm-256color

# Load zsh tools installed via Homebrew
HOMEBREW=/usr/local/share

source "$HOMEBREW/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
source "$HOMEBREW/zsh-autosuggestions/zsh-autosuggestions.zsh"
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=3'

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# See https://github.com/bhilburn/powerlevel9k
ZSH_THEME="powerlevel9k/powerlevel9k"

# Load Nerd Fonts with Powerlevel9k theme
POWERLEVEL9K_MODE="nerdfont-complete"
source "/usr/local/opt/powerlevel9k/powerlevel9k.zsh-theme"

# Customize prompts
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(
  dir
  rbenv
  vcs
)

POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(
  status
  root_indicator
  history
  ip
  time
)

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"
DISABLE_UPDATE_PROMPT=true

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git vi-mode)

##############################
## User Configurations
##############################

# exa Colors
EXA_COLORS="ur=37:uw=37:ux=37:ue=37:gr=37:gw=37:gx=37:tr=37:tw=37:tx=37:su=37:sf=37:xa=37:da=37"

# export MANPATH="/usr/local/man:$MANPATH"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

##############################
## PATH
##############################
VSCODE="/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
SUBLIME="/Applications/Sublime Text.app/Contents/SharedSupport/bin"

export PATH=$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$VSCODE:$SUBLIME:$HOME/Development/flutter/bin:$HOME/bin:$PATH

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias shcf="vim ~/.zshrc"
alias shre="source ~/.zshrc"

alias gcl="git clone"
alias gpl="git pull origin"
alias gp="git push origin"
alias grs="git reset --hard HEAD"
alias gco="git checkout"
alias gcb="git checkout -b"
alias gb="git branch"
alias ga="git add"
alias gcm="git commit -m"
alias gs="git stash"

alias gsb="gatsby"
alias ys="yarn start"

alias l="exa -almgh --sort=type --git"
alias nf="neofetch -s"

# zsh-bd
. $HOME/.zsh/plugins/bd/bd.zsh
