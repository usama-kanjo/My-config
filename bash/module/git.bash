# GIT KOMUTLARI
gs() {
    git status
}

ga() {
    git add "$@"
}

gc() {
    git commit -m "$*"
}

gp() {
    git push
}

gpl() {
    git pull
}

gco() {
    git checkout "$@"
}

glog() {
    git log --oneline --graph --decorate -20
}