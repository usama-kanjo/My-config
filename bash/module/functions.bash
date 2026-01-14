# ranger-cd
ranger-cd() {
    tempfile="$(mktemp -t tmp.XXXXXX)"
    /usr/bin/ranger --choosedir="$tempfile" "${@:-$(pwd)}"
    test -f "$tempfile" &&
    if [ "$(cat -- "$tempfile")" != "$(echo -n $(pwd))" ]; then
        cd -- "$(cat "$tempfile")"
    fi  
    rm -f -- "$tempfile"
}

#ranger-cd will run by alt+r
# NOT: Bash için farklı bir bağlama yöntemi gerekli
# bindkey -s "^\er" "ranger-cd\n"  # Bu satır Bash'te çalışmaz

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


# History dosyası ve dizini yoksa oluştur
if [ ! -d "$(dirname "$HISTFILE")" ]; then
    mkdir -p "$(dirname "$HISTFILE")"
    chmod 700 "$(dirname "$HISTFILE")"
fi