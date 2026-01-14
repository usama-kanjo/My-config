# GIT KOMUTLARI
function gs
    git status
end

function ga
    git add $argv
end

function gc
    git commit -m "$argv"
end

function gp
    git push
end

function gpl
    git pull
end

function gco
    git checkout $argv
end

function glog
    git log --oneline --graph --decorate -20
end