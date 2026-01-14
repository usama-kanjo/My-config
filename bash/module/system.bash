# SİSTEM YÖNETİMİ
update() {
    echo "📦 Paket güncelleniyor..."
    sudo apt update && sudo apt upgrade -y
}

install() {
    echo "📦 Paket indirilyor..."
    sudo apt install "$@"
}

remove() {
    echo "📦 Paket silinyor..."
    sudo apt remove "$@"
}

autoremove() {
    echo "📦 Paketler autoremove oluyor..."
    sudo apt autoremove -y
}

clean() {
    echo "🧹 Temizlik yapılıyor..."
    sudo apt autoremove -y && sudo apt autoclean
}

# GÜÇ YÖNETİMİ
shutdown() {
    echo "Biligisayar kabatilyor..."
    sudo shutdown -h now
}

reboot() {
    sudo shutdown -r now
}