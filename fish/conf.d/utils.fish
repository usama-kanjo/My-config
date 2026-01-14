# FAYDALI FONKSİYONLAR
function mkcd
    mkdir -p $argv
    cd $argv
end

function cls
    clear
    if command -v neofetch >/dev/null
        neofetch
    end
end

function please
    echo "🔐 Sudo ile çalıştırılıyor: $history[1]"
    eval sudo $history[1]
end

function weather
    curl wttr.in/$argv
end

function cheat
    curl cheat.sh/$argv
end