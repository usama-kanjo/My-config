# SİSTEM YÖNETİMİ
function update
    echo "📦 Paket güncelleniyor..."
    sudo apt update && sudo apt upgrade -y
end

function install
    echo "📦 Paket indirilyor..."
    sudo apt install $argv
end

function remove
    echo "📦 Paket silinyor..."
    sudo apt remove $argv
end

function autoremove
    echo "📦 Paketler autoremove oluyor..."
    sudo apt autoremove -y
end

function clean
    echo "🧹 Temizlik yapılıyor..."
    sudo apt autoremove -y && sudo apt autoclean
end

# GÜÇ YÖNETİMİ
function shutdown
    echo "Biligisayar kabatilyor..."
    sudo shutdown -h now
end

function reboot

    sudo shutdown -r now
end