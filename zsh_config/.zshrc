# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell" # the standard
ZSH_THEME="af-magic" # kind of cool
#ZSH_THEME="aussiegeek" # kind of cool
#ZSH_THEME="agnoster"


# Example aliases
alias zshconfig="vi ~/.zshrc"
alias ohmyzsh="cd ~/.oh-my-zsh"
alias myip="curl ifconfig\.me/ip"
alias zsrc="source ~/.zshrc"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git vagrant vi-mode ruby rvm tmux brew colorize osx rails3 postgres web-search jira colored-man)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:/opt/local/bin:/opt/local/sbin:/Users/freidahpatch/.rvm/gems/ruby-2.0.0-p0/bin:/Users/freidahpatch/.rvm/gems/ruby-2.0.0-p0@global/bin:/Users/freidahpatch/.rvm/rubies/ruby-2.0.0-p0/bin:/Users/freidahpatch/.rvm/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/usr/local/mysql-5.6.10-osx10.7-x86_64/bin/:/Users/freidahpatch/.rvm/bin:/Users/freidahpatch/.mongodb-osx-x86_64-2.2.2/bin

export PATH=$PATH:~/utilities/:~/utilities/mutt-1.5.20
export PATH=$PATH:/Users/freidahpatch/utilities/AWS-ElasticBeanstalk-CLI-2.5.1/eb/macosx/python2.7
export PATH=$PATH:/Users/freidahpatch/Dev/Ruby/bak/bin
export EDITOR=/usr/bin/vim

ZSH_THEME_GIT_PROMPT_PREFIX=" on %{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[green]%}!"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[green]%}?"
ZSH_THEME_GIT_PROMPT_CLEAN=""

alias ls="ls -lG"
alias jobfailures='./tmux-setups/jobfailures'

#zstyle ':completion:*' auto-description 'specify: %d'
#zstyle ':completion:*' completer _oldlist _expand _complete _ignored _match _prefix
#zstyle ':completion:*' expand prefix suffix
#zstyle ':completion:*' format 'Completing %d'
#zstyle ':completion:*' group-name ''
#zstyle ':completion:*' insert-unambiguous false
#zstyle ':completion:*' list-prompt 'At %p: Hit TAB for more, or the character to insert'
#zstyle ':completion:*' list-suffixes true
#zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'r:|[._-]=** r:|=**'
#zstyle ':completion:*' max-errors 32
#zstyle ':completion:*' menu select=1
#zstyle ':completion:*' original false
#zstyle ':completion:*' preserve-prefix '//[^/]##/'
#zstyle ':completion:*' select-prompt 'Found %l | %p'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

for c in cp mv rm chmod chown rename; do
    alias $c="$c -v"
done

source /Users/freidahpatch/utilities/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh
source /Users/freidahpatch/utilities/cdup.zsh

foreground-vi() {
  fg %vi
}
zle -N foreground-vi
bindkey '^Z' foreground-vi
