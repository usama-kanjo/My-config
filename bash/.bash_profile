#!/bin/bash
echo "LOAD BASH PROFILE"

# Bashrc'nin yolu
export BASHRC_PATH="$HOME/.config/bash/.bashrc"

# PATH ve diğer ortam değişkenleri
export PATH="$HOME/.local/bin:$PATH"
# Diğer export'larınız...

export HISTFILE="$HOME/.config/bash/.bash_history"

if  [ -f "$BASHDIR/.bashrc" ]; then 
     source "$BASHDIR/.bashrc"
fi
echo "=== .bash_profile ÇALIŞTI ==="
