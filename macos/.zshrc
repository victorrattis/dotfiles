# ==============================================================================
#     ZSH RC
# ==============================================================================

# ==============================================================================
# Set prompts
PROMPT='%F{green}%n@%f%F{green}%m%f %F{blue}%B%1~%b%f '


# ==============================================================================
# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history
setopt histignorealldups sharehistory


# ==============================================================================
# Directory stack extensions
DIRSTACKSIZE=20
setopt autopushd pushdsilent pushdtohome

## Remove duplicate entries
setopt pushdignoredups

## This reverts the +/- operators.
setopt pushdminus


# ==============================================================================
# Use modern completion system
autoload -Uz compinit
compinit


# ==============================================================================
# Aliases

setopt COMPLETE_ALIASES
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias cdl='dirs -v'

# Global aliases
alias -g T='|tee '
alias -g G='|grep '

