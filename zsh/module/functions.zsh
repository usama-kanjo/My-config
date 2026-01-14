
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
