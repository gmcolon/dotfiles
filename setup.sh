#!/usr/bin/env bash
set -euo pipefail

DOTFILES="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BACKUP_DIR="$HOME/.dotfiles_backup/$(date +%Y%m%d_%H%M%S)"

link() {
  local src="$1"
  local dst="$2"

  mkdir -p "$(dirname "$dst")"

  if [ -e "$dst" ] || [ -L "$dst" ]; then
    if [ -L "$dst" ] && [ "$(readlink "$dst")" = "$src" ]; then
      echo "  skip  $dst (already linked)"
      return
    fi
    mkdir -p "$BACKUP_DIR"
    mv "$dst" "$BACKUP_DIR/"
    echo "  backup $dst -> $BACKUP_DIR/$(basename "$dst")"
  fi

  ln -s "$src" "$dst"
  echo "  link  $dst -> $src"
}

echo "Dotfiles: $DOTFILES"
echo ""

echo "[nvim]"
link "$DOTFILES/nvim" "$HOME/.config/nvim"

echo "[tmux]"
link "$DOTFILES/tmux/tmux.conf" "$HOME/.tmux.conf"
link "$DOTFILES/tmux/plugins"   "$HOME/.tmux/plugins"

echo "[zsh]"
link "$DOTFILES/zsh/.zshrc"       "$HOME/.zshrc"
link "$DOTFILES/zsh/.zshenv"      "$HOME/.zshenv"
link "$DOTFILES/zsh/.zsh_aliases" "$HOME/.zsh_aliases"

echo ""
echo "Done."
