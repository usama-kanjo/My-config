# ~/.config/zsh/module/aliases.zsh


# LİSTELEME
alias l='lsd -1hlA'
alias ls='lsd'
alias ll='lsd -la --group-dirs first'
alias lt='lsd --tree --depth 2'
alias exa='eza'

# EDITORLER
alias vim='vim --cmd "set rtp+=~/.config/vim" -u ~/.config/vim/.vimrc'
alias n='nvim'
alias lgit='lazygit'

# DOTFILES
alias vimrc='$EDITOR ~/.config/vim/.vimrc'
alias nrc='$EDITOR ~/.config/nvim/init.lua'
