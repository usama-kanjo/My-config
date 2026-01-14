# ~/.config/fish/config.fish

# TEMEL DEĞİŞKENLER (her zaman)
set -gx EDITOR nano
set -gx VISUAL nvim
set -gx PATH ~/.local/bin $PATH
set -gx PATH ~/bin $PATH

# INTERAKTİF MOD
if status is-interactive
    # Hoş geldin mesajı
    set -g fish_greeting "🐟 Balık Shell Aktif!"
    
    # Tüm modülleri yükle
    for file in ~/.config/fish/conf.d/*.fish
        source $file
    end
    
    # Neofetch (isteğe bağlı)
    neofetch
end
