# Configuration Setup Guide

## TMUX Configuration

### Step 1: Install TPM (Tmux Plugin Manager)
```bash
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
```

### Step 2: Install Tmux Configuration
```bash
git clone https://github.com/usama-kanjo/My-config.git && \
cd My-config && \
rm -rf README.md .git .gitignore zsh/ neofetch/ vim/ htop/ git/ ranger/ && \
mv tmux/ ~/.config/ && \
cd .. && \
rm -rf My-config && \
echo "Tmux configuration installed successfully"
```

## VIM Configuration

### Step 1: Install Vim Configuration
```bash
git clone https://github.com/usama-kanjo/My-config.git && \
cd My-config && \
rm -rf README.md .git .gitignore zsh/ neofetch/ htop/ tmux/ git/ ranger/ && \
mv vim/ ~/.config && \
cd .. && \
rm -rf My-config && \
echo "Vim configuration installed successfully"
```

### Step 2: Install Vim-Plug Plugin Manager
```bash
curl -fLo ~/.config/vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim && \
mv ~/.viminfo ~/.config/vim/.viminfo
```

### Step 3: Install Plugins
1. Open Vim:
```bash
vim
```
2. Run the following command in Vim:
```vim
:PlugInstall
```

### Step 4: Configure Vim Environment
Add this to your `~/.bashrc` or `~/.zshrc`:
```bash
export VIMINIT='let $MYVIMRC="$HOME/.config/vim/.vimrc" | source $MYVIMRC'
```

### Step 5: Set Up Cache Directories
```bash
mkdir -p ~/.cache/vim/{swap,backup,undo} && \
find ~ -name "*.swp" -exec mv {} ~/.cache/vim/swap \;
```

### (Optional) Automatic Cache Cleanup
To automatically remove old swap files (older than 30 days), you can add this to your crontab:
```bash
find ~/.cache/vim/swap -type f -mtime +30 -delete
```

---

### Notes:
1. The commands are now more readable with proper line continuation (`\`)
2. Success messages are added for better user feedback
3. The structure is more organized with clear section headings
4. The optional cleanup step is clearly marked
5. All technical terms are properly capitalized (Vim, Tmux, etc.)

Would you like me to make any additional improvements to the formatting or content?
