# --- Thrive Zsh Prompt: Segmented, Colorized, Maintainable (vcs_info, reversed separator colors) ---

# Color variables
PROMPT_USER_BG="#81a1ca"
PROMPT_USER_FG="#2E3440"
PROMPT_DIR_BG="#4c566a"
PROMPT_DIR_FG="#E5E9F0"
PROMPT_GIT_BG="#434c5e"
PROMPT_GIT_FG="#E5E9F0"
DEFAULT="default"

PROMPT_SEP=$'\ue0b0'

# Setup vcs_info for git branch detection
autoload -Uz vcs_info

# Configure vcs_info for concise branch name
zstyle ':vcs_info:git:*' formats '%b'
zstyle ':vcs_info:*' enable git

# Helper: Wraps text in fg/bg color
prompt_segment() {
  local bg fg text
  bg="$1"
  fg="$2"
  text="$3"
  echo "%K{$bg}%F{$fg} $text %k%f"
}

# Helper: Adds separator with prev segment bg as fg, next segment bg as bg
prompt_sep() {
  local prev_bg next_bg
  prev_bg="$1"
  next_bg="$2"
  echo "%K{$next_bg}%F{$prev_bg}${PROMPT_SEP}%k%f"
}


# Build prompt using vcs_info
set_prompt() {
  vcs_info

  local user dir git seg1 seg2 seg3 sep1 sep2
  user="%n"
  dir="%~"
  git="${vcs_info_msg_0_}"

  seg1="$(prompt_segment $PROMPT_USER_BG $PROMPT_USER_FG $user)"
  sep1="$(prompt_sep $PROMPT_USER_BG $PROMPT_DIR_BG)"
  seg2="$(prompt_segment $PROMPT_DIR_BG $PROMPT_DIR_FG $dir)"
  sep2=""
  seg3=""
  sep3=""

  if [[ -n $git ]]; then
    sep2="$(prompt_sep $PROMPT_DIR_BG $PROMPT_GIT_BG)"
    seg3="$(prompt_segment $PROMPT_GIT_BG $PROMPT_GIT_FG $git)"
    sep3="$(prompt_sep $PROMPT_GIT_BG $DEFAULT)"
  else
    sep3="$(prompt_sep $PROMPT_DIR_BG $DEFAULT)"
  fi

  PROMPT="${seg1}${sep1}${seg2}${sep2}${seg3}${sep3}%k%f "
}

autoload -Uz add-zsh-hook
add-zsh-hook precmd set_prompt

# --- End Thrive Zsh Prompt ---
