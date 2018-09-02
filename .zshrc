# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/yo42/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
#ZSH_THEME="dracula"
#ZSH_THEME="yo"
ZSH_THEME="powerlevel9k/powerlevel9k"
#ZSH_THEME="random"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions zsh-completions osx zsh-syntax-highlighting brew docker django web-search history httpie man )

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

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
#GIT_AUTHOR_NAME="dehui"
#GIT_AUTHOR_EMAIL="dehui@cilugame.com"
GIT_AUTHOR_NAME="yo42"
GIT_AUTHOR_EMAIL="yo42@yo42.com"
#GIT_COMMITTER_NAME="yo"
#GIT_COMMITTER_EMAIL="edoy7024@gmail.com"
export GIT_AUTHOR_NAME GIT_AUTHOR_EMAIL GIT_COMMITTER_NAME GIT_COMMITTER_EMAIL
alias grep='grep --color=auto'
alias vi='vim'
#alias mtr=/usr/local/sbin/mtr
bindkey \^U backward-kill-line
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
#source ~/.zsh/iterm2.zsh
source /Users/yo42/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/bin/aliyun_zsh_complete.sh 
export PATH=/usr/local/mongodb/bin:$PATH
export CLICOLOR=1
export LSCOLORS=exfxcxdxbxegedabagacad
setopt nonomatch
source /Library/Ruby/Gems/2.3.0/gems/colorls-1.1.1/lib/tab_complete.sh
#source ~/.fonts/*.sh

#POWERLEVEL9K_MODE='nerdfont-complete'
#POWERLEVEL9K_MODE='awesome-patched'
POWERLEVEL9K_MODE="awesome-fontconfig"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(time dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status virtualenv command_execution_time)


POWERLEVEL9K_USER_ICON=$"\uF415" # 
POWERLEVEL9K_ROOT_ICON="#"
POWERLEVEL9K_SUDO_ICON=$'\uF09C' # 
POWERLEVEL9K_FOLDER_ICON=""
#POWERLEVEL9K_HOME_SUB_ICON=""
#POWERLEVEL9K_DIR_PATH_SEPARATOR=
#POWERLEVEL9K_DIR_OMIT_FIRST_CHARACTER=true

#POWERLEVEL9K_BACKGROUND_JOBS_FOREGROUND='black'
#POWERLEVEL9K_BACKGROUND_JOBS_BACKGROUND='178'
#POWERLEVEL9K_NVM_BACKGROUND="238"
#POWERLEVEL9K_NVM_FOREGROUND="green"
#POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND="blue"
#POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND="015"
#
#POWERLEVEL9K_TIME_BACKGROUND='255'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND='245'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND='black'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=0
#
#POWERLEVEL9K_SHOW_CHANGESET=true
#
#
POWERLEVEL9K_PYENV_PROMPT_ALWAYS_SHOW=true
#POWERLEVEL9K_USER_ICON="\uF415" # 
POWERLEVEL9K_SUDO_ICON=$'\uF09C' # 
#
##POWERLEVEL9K_VCS_UNTRACKED_ICON='?'
##POWERLEVEL9K_VCS_BRANCH_ICON=$'\uF126 '
##POWERLEVEL9K_VCS_GIT_GITHUB_ICON=$'\uF126 '
##
#
## Dir colours
#POWERLEVEL9K_DIR_HOME_BACKGROUND='black'
#POWERLEVEL9K_DIR_HOME_FOREGROUND='white'
#POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='black'
#POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='white'
#POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='yellow'
#POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='black'
#POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"

# Icons
POWERLEVEL9K_USER_ICON=$"\uF415"
POWERLEVEL9K_ROOT_ICON=$"\uF415"
#POWERLEVEL9K_HOME_ICON=$'\UE12C'



## Colors
POWERLEVEL9K_VIRTUALENV_BACKGROUND=107
POWERLEVEL9K_VIRTUALENV_FOREGROUND='white'
POWERLEVEL9K_CUSTOM_NOW_PLAYING_BACKGROUND='blue'
POWERLEVEL9K_CUSTOM_NOW_PLAYING_FOREGROUND='black'
POWERLEVEL9K_OS_ICON_BACKGROUND='white'
POWERLEVEL9K_OS_ICON_FOREGROUND='black'
POWERLEVEL9K_TIME_BACKGROUND='white'
POWERLEVEL9K_TIME_FOREGROUND='black'
POWERLEVEL9K_TIME_FORMAT="%D{%H:%M}"


# VCS colors
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='cyan'
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='black'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='white'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='red'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='black'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='yellow'

POWERLEVEL9K_VCS_GIT_ICON=''
POWERLEVEL9K_VCS_STAGED_ICON='\u00b1'
POWERLEVEL9K_VCS_UNTRACKED_ICON='\u25CF'
POWERLEVEL9K_VCS_UNSTAGED_ICON='\u00b1'
POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON='\u2193'
POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON='\u2191'

# `git hub colors`
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='236'
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='119'
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='236'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='214'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='236'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='196'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='236'

alias ls='ls -G'
alias ll='colorls -l --sd'
alias lla='colorls -la --sd'
alias ld='colorls -d'
