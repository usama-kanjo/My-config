#!/usr/bin/env zsh
# FZF-Tab konfigürasyon dosyası

# Renkler için
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# FZF-Tab temel ayarları
zstyle ':fzf-tab:*' default-color $'\033[34m'
zstyle ':fzf-tab:*' fzf-flags '--height=40% --reverse --border'

# Grup isimlerini göster
zstyle ':fzf-tab:*' show-group brief

# Tmux popup (eğer tmux kullanıyorsanız)
# zstyle ':fzf-tab:*' fzf-command ftb-tmux-popup

# HER Tab tuşunda FZF-Tab açılsın
zstyle ':fzf-tab:*' trigger-length 0

# CD için preview
zstyle ':fzf-tab:complete:cd:*' fzf-preview '[[ -d $realpath ]] && exa --tree --level=1 --color=always $realpath 2>/dev/null || ls --color=always $realpath'

# Genel dosya preview
zstyle ':fzf-tab:complete:*:*' fzf-preview \
    'if [[ -f $realpath ]]; then
        bat --color=always --style=numbers $realpath 2>/dev/null || cat $realpath
    elif [[ -d $realpath ]]; then
        exa --tree --level=1 --color=always $realpath 2>/dev/null || ls --color=always $realpath
    else
        echo $realpath
    fi'

# Sistem komutları için
zstyle ':fzf-tab:complete:systemctl-*:*' fzf-preview 'SYSTEMD_COLORS=1 systemctl status $word'

# Man sayfaları
zstyle ':fzf-tab:complete:man:*' fzf-preview 'man $word | col -bx | bat -l man -p --color=always'

# Prozess'ler
zstyle ':fzf-tab:complete:ps:*' fzf-preview 'ps -p $word -o pid,user,command -w'

# SSH
zstyle ':fzf-tab:complete:ssh:*' fzf-preview 'echo "Connecting to $word"'

# Git basit preview (delta/bat yoksa)
zstyle ':fzf-tab:complete:git-(add|diff|restore):*' fzf-preview 'git diff $word'
zstyle ':fzf-tab:complete:git-log:*' fzf-preview 'git show --color=always $word'
zstyle ':fzf-tab:complete:git-checkout:*' fzf-preview 'git log --oneline -10 $word'

# Dosya yöneticisi gibi davran
zstyle ':fzf-tab:complete:(-command-|-parameter-|-brace-parameter-|export|unset|expand):*' \
    fzf-preview 'echo ${(P)word}'
