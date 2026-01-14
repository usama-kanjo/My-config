# Plugins
source ~/.config/zsh/plugins/powerlevel10k/powerlevel10k.zsh-theme
source ~/.config/zsh/plugins/autosuggestions/zsh-autosuggestions.zsh
source ~/.config/zsh/plugins/syntax-highlighting/zsh-syntax-highlighting.zsh

source /usr/share/doc/fzf/examples/key-bindings.zsh
source /usr/share/doc/fzf/examples/completion.zsh
source ~/.config/zsh/plugins/fzf-tab/fzf-tab.zsh
source ~/.config/zsh/plugins/sudo/sudo.plugin.zsh
source ~/.config/zsh/plugins/copyfile/copyfile.plugin.zsh

# Load all config files
for config_file ("$ZSH_CONFIG_DIR"/*.zsh(N)); do
    source "$config_file"
done
