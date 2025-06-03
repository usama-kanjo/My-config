####################################################################
#
#
#
#              ███████╗███████╗██╗  ██╗██████╗  ██████╗
#              ╚══███╔╝██╔════╝██║  ██║██╔══██╗██╔════╝
#                ███╔╝ ███████╗███████║██████╔╝██║     
#               ███╔╝  ╚════██║██╔══██║██╔══██╗██║     
#              ███████╗███████║██║  ██║██║  ██║╚██████╗
#              ╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝
#                                        
#
#
####################################################################


# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
typeset -g POWERLEVEL9K_INSTANT_PROMPT=off
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi




# Lines configured by zsh-newuser-install
HISTFILE=~/.cache/zsh/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt autocd extendedglob nomatch notify
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/kanjo/.config/zsh/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall







# Plugins
source ~/.config/zsh/plugins/powerlevel10k/powerlevel10k.zsh-theme
source ~/.config/zsh/plugins/autosuggestions/zsh-autosuggestions.zsh
source ~/.config/zsh/plugins/syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/doc/fzf/examples/key-bindings.zsh
source /usr/share/doc/fzf/examples/completion.zsh
source ~/.config/zsh/plugins/fzf-tab/fzf-tab.zsh


# ranger-cd
function ranger-cd {
    tempfile="$(mktemp -t tmp.XXXXXX)"
    /usr/bin/ranger --choosedir="$tempfile" "${@:-$(pwd)}"
    test -f "$tempfile" &&
    if [ "$(cat -- "$tempfile")" != "$(echo -n `pwd`)" ]; then
        cd -- "$(cat "$tempfile")"
    fi  
    rm -f -- "$tempfile"
}

#ranger-cd will run by alt+r
bindkey -s "^\er" "ranger-cd\n"



# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh


bindkey '^ ' autosuggest-accept  # Öneriyi kabul etmek için Ctrl+Space


fzf-git-checkout() {
  git checkout $(git branch -a | fzf --height 40% --reverse | sed 's/^.* //')
}
alias gco="fzf-git-checkout"

fzf-git-log(){
  git log --oneline | fzf --preview "git show --color=always {1}" --preview-window=right:50%:wrap
}
alias glf="fzf-git-log"



fzf-ssh() {
  ssh $(grep -i '^host' ~/.ssh/config | awk '{print $2}' | fzf)
}
alias sshf="fzf-ssh"



bindkey '^F' ranger
#bindkey '^R' fzf-history-widget
#bindkey '^T' fzf-file-widget
#bindkey '\ec' fzf-cd-widget  # Alt+C için alternatif bağlama

#

alias update='sudo apt update && sudo apt upgrade -y'
alias youdown='yt-dlp -f "bv[height<=720]+ba/b" --verbose --no-restrict-filenames --merge-output-format mp4 -o "/home/kanjo/Projects/commands/downloads/youtube_downloader/$(date +%Y-%m-%d)/%(title)s--[%(id)s]--[720p].%(ext)s"'
alias youdown480='yt-dlp -f "bv[height<=480]+ba/b" --verbose --no-restrict-filenames --merge-output-format mp4 -o "/home/kanjo/Projects/commands/downloads/youtube_downloader/$(date +%Y-%m-%d)/%(title)s--[%(id)s]--[480p].%(ext)s"'
alias youup="~/Projects/commands/youup.sh"
alias install='sudo apt install'
alias remove='sudo apt remove'
alias autoremove='sudo apt autoremove'
alias shutdown='sudo shutdown -h now'
alias reboot='sudo shutdown -r now'
alias vimrc='vim ~/.config/vim/.vimrc'
alias zshrc='vim ~/.config/zsh/.zshrc'
alias rzshrc='source ~/.config/zsh/.zshrc'
alias clean='sudo apt autoremove && sudo apt autoclean'
alias l='lsd -1hlA'
alias ls='lsd'
alias exa='eza'
alias vim='vim --cmd "set rtp+=~/.config/vim" -u ~/.config/vim/.vimrc'
alias nvimrc='nvim ~/.config/nvim/init.lua'

yellow="\e[1;33m" # Sarı renk
RESET="\e[0m" 

echo -e "${yellow}Hello osama, welcome to the terminal!${RESET}" | cowsay | lolcat



# Created by `pipx` on 2025-01-26 19:25:40
export PATH="$PATH:/home/kanjo/.local/bin"

#iexport VIMINIT=let $MYVIMRC=$HOME/.config/vim/.vimrc| source $MYVIMRC


# VIMINIT: SADECE Vim için geçerli olsun (Neovim'i etkilemesin)
if [ -n "$VIM" ] || [ -n "$VIMRUNTIME" ]; then
  export VIMINIT='let $MYVIMRC="$HOME/.config/vim/.vimrc" | source $MYVIMRC'
fi

#  export VIMINIT='let $MYVIMRC="$HOME/.config/vim/.vimrc" | source $MYVIMRC'
# NVIMINIT: Neovim'in SADECE ~/.config/nvim/init.lua okumasını sağla
export NVIMINIT='set runtimepath-=~/.config/vim | set runtimepath^=~/.config/nvim | source $HOME/.config/nvim/init.lua'



[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh



export FZF_DEFAULT_COMMAND='fd --type f --type d --hidden --follow --exclude .git --exclude node_modules'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type d --hidden --follow --exclude .git --exclude node_modules"

export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border --preview "bat --color=always {}"'

export GIT_CONFIG_GLOBAL="$HOME/.config/git/.gitconfig"
 # export FZF_DEFAULT_COMMAND="ag --hidden --ignore .git -f -g """

() {
  xbindkeys -f ~/.config/xbindkeys/config &>/dev/null &!
}
