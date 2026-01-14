# GIT KOMUTLARI
function gs() {
    git status
}

function ga() {
    git add $@
}

function gc() {
    git commit -m "$*"
}

function gp() {
    git push
}

function gpl() {
    git pull
}

function gco() {
    git checkout $@
}

function glog() {
    git log --oneline --graph --decorate -20
}