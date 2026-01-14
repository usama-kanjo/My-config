# FAYDALI FONKSİYONLAR
function mkcd() {
    mkdir -p $@
    cd $@
}

function cls() {
    clear
    if command -v neofetch >/dev/null; then
        neofetch
    fi
}

function please() {
    echo "🔐 Sudo ile çalıştırılıyor: $(history -1)"
    eval sudo $(history -1 | sed 's/^[[:space:]]*[0-9]*[[:space:]]*//')
}

function weather() {
    curl wttr.in/$@
}

function cheat() {
    curl cheat.sh/$@
}