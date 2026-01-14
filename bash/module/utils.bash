# FAYDALI FONKSİYONLAR
mkcd() {
    mkdir -p "$@"
    cd "$@" || return
}

cls() {
    clear
    if command -v neofetch >/dev/null; then
        neofetch
    fi
}

please() {
    echo "🔐 Sudo ile çalıştırılıyor: $(history 1)"
    eval sudo $(history 1 | sed 's/^[[:space:]]*[0-9]*[[:space:]]*//')
}

weather() {
    curl wttr.in/"$@"
}

cheat() {
    curl cheat.sh/"$@"
}