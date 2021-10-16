# Set up the prompt

# autoload -Uz promptinit
# promptinit
# prompt adam1
# prompt walters

# Set prompts
PROMPT='%m@%n %1~ '
PROMPT='%F{green}%n@%f%F{green}%m%f %F{blue}%B%1~%b%f '

setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

# ==============================================================================
# Aliases

setopt COMPLETE_ALIASES
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias cdl='dirs -v'

# Global aliases
alias -g T='|tee '
alias -g G='|grep '

alias g='git'

# ==============================================================================
# Directory stack extensions
DIRSTACKSIZE=20
setopt autopushd pushdsilent pushdtohome

## Remove duplicate entries
setopt pushdignoredups

## This reverts the +/- operators.
setopt pushdminus

#
# DIRSTACKFILE=~/.zdirs
# if [[ -f $DIRSTACKFILE ]] && [[ $#dirstack -eq 0 ]]; then
#   dirstack=( ${(f)"$(< $DIRSTACKFILE)"} )
#   [[ -d $dirstack[1] ]] && cd $dirstack[1] && cd $OLDPWD
# fi
# chpwd() {
#   print -l $PWD ${(u)dirstack} >$DIRSTACKFILE
# }

# Add android platform tools
if [ -d "/home/vhra/Android/Sdk/platform-tools" ]; then
  export PATH=$PATH:/home/vhra/Android/Sdk/platform-tools
fi
