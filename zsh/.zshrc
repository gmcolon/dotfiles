# History settings
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

# History options
setopt SHARE_HISTORY         # Share history between all sessions
setopt INC_APPEND_HISTORY    # Write to the history file immediately
setopt EXTENDED_HISTORY      # Include timestamps in history
setopt HIST_IGNORE_DUPS      # Do not save duplicate commands
setopt HIST_SAVE_NO_DUPS     # Do not write a duplicate event to the history file

# History completion
autoload -U up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey '^[[A' up-line-or-beginning-search
bindkey '^[[B' down-line-or-beginning-search
bindkey '^[OA' up-line-or-beginning-search
bindkey '^[OB' down-line-or-beginning-search

setopt CORRECT
setopt CORRECT_ALL

source ~/.nord_prompt.zsh
source ~/.zsh_aliases
export PATH="$HOME/.local/bin:$PATH"
