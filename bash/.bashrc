#!/bin/bash



echo -e "${yellow}Hello osama, welcome to the terminal!${RESET}" | cowsay | lolcat



# Hoş geldin mesajı
echo "🐚 Bash Shell Aktif!"

# Tüm modülleri yükle
for file in ~/.config/bash/module/*.bash; do
    if [[ -f "$file" ]]; then
        source "$file"
    fi
done

# .profile dosyasını yükle (eğer varsa)
if [ -f ~/.profile ]; then
    source ~/.profile
fi
