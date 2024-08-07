# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
ZSH_THEME=powerlevel10k/powerlevel10k

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
plugins=(
  git
  battery
  zsh-autosuggestions
  web-search
  copypath
  copyfile
  copybuffer
  dirhistory
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

export EDITOR='vim'
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
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
export PATH="/usr/local/opt/ncurses/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/bin:$PATH"

# Enable reverse history search
bindkey -v
bindkey '^R' history-incremental-pattern-search-backward

POWERLEVEL9K_MODE="nerdfont-complete"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs vi_mode)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(command_execution_time status root_indicator background_jobs battery time)
POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=0

# For compilers to find QT
export LDFLAGS="-L/usr/local/opt/qt/lib"
export CPPFLAGS="-I/usr/local/opt/qt/include"
export PATH="/usr/local/opt/qt/bin:$PATH"

# For compilers to find libffi
export LDFLAGS="-L/usr/local/opt/libffi/lib"

# Rust
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="/usr/local/opt/ncurses/bin:$PATH"
export PATH="/usr/local/opt/ncurses/bin:$PATH"

# Add config command
function config {
  /usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME $@
}

# Start ssh-agent
if [ -z "$SSH_AUTH_SOCK" ]; then
   # Check for a currently running instance of the agent
   RUNNING_AGENT="`ps -ax | grep 'ssh-agent -s' | grep -v grep | wc -l | tr -d '[:space:]'`"
   if [ "$RUNNING_AGENT" = "0" ]; then
        # Launch a new instance of the agent
        ssh-agent -s &> .ssh/ssh-agent
   fi
   eval `cat .ssh/ssh-agent`
fi

# Need to run this to make keys available for use on the Remote Docker machine
ssh-add

# Android
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
# export PATH=$PATH:$HOME/.NDK/arm/bin
# export PATH=$PATH:$HOME/.NDK/arm64/bin
export PATH=$PATH:$HOME/.NDK/x86/bin
export PATH="/usr/local/opt/openjdk/bin:$PATH"
export PATH=$PATH:/Users/$USER/Library/Android/sdk/ndk-bundle/toolchains/llvm/prebuilt/darwin-x86_64/bin/
# export PATH=$PATH:/Users/justinleong/workspace/github/rust-analyzer/target/release/

# Fix bash completion https://github.com/eddiezane/lunchy/issues/57
autoload -U +X bashcompinit && bashcompinit
autoload -U +X compinit && compinit

alias vi='vim'

########################################################################
# Coder Setup
export TOOLCHAIN="nightly-2023-11-01"
export RUSTUP_HOME="$HOME/.rustup"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
export PATH="/opt/venv/bin:$PATH"
export VIRTUAL_ENV="/opt/venv"
export NVM_DIR=$HOME/.nvm
. $NVM_DIR/nvm.sh
export CUDACXX="/usr/local/cuda/bin/nvcc"
export PATH="/usr/local/cuda/bin:$PATH"
export LIBRARY_PATH="/usr/local/cuda/lib64/stubs:$LIBRARY_PATH"
export LD_LIBRARY_PATH="/usr/local/lib/libtorch/lib:$LD_LIBRARY_PATH"
export LIBTORCH="/usr/local/lib/libtorch"
export LIBTORCH_BYPASS_VERSION_CHECK=1
source /usr/local/vulkan-sdk/setup-env.sh
########################################################################
