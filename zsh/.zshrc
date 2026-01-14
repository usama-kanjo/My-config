


typeset -g POWERLEVEL9K_INSTANT_PROMPT=off
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
export PATH="$PATH:/home/amani/.local/bin"

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

echo -e "${yellow}Hello osama, welcome to the terminal!${RESET}" | cowsay | lolcat

# Hoş geldin mesajı
echo "🐚 Zsh Shell Aktif!"
    
# Tüm modülleri yükle
for file in ~/.config/zsh/module/*.zsh; do
    if [[ -f "$file" ]]; then
            source "$file"
    fi
done
    



