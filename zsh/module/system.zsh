# SİSTEM YÖNETİMİ
function update() {
    echo "📦 Paket güncelleniyor..."
    sudo apt update && sudo apt upgrade -y
}

function install() {
    echo "📦 Paket indirilyor..."
    sudo apt install $@
}

function remove() {
    echo "📦 Paket silinyor..."
    sudo apt remove $@
}

function autoremove() {
    echo "📦 Paketler autoremove oluyor..."
    sudo apt autoremove -y
}

function clean() {
    echo "🧹 Temizlik yapılıyor..."
    sudo apt autoremove -y && sudo apt autoclean
}

# GÜÇ YÖNETİMİ
function shutdown() {
    echo "Biligisayar kabatilyor..."
    sudo shutdown -h now
}

function reboot() {
    sudo shutdown -r now
}