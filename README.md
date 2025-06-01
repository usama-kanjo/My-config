hello evry one

### Installation

## TMUX

First : Clone TPM:
```bash
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
```
And next : clone tmux config folder
```bash
git clone https://github.com/usama-kanjo/My-config.git && cd My-config && rm -rf README.md .git .gitignore zsh/ neofetch/ vim/ htop/ && mv tmux/ ~/.config/ && cd .. && rm -rf My-config && echo "it is done"
```

## VIM
```bash
git clone https://github.com/usama-kanjo/My-config.git && cd My-config && rm -rf README.md .git .gitignore zsh/ neofetch/ htop/ tmux/ && mv vim/ ~/.config&& cd .. && rm -rf My-config && echo "it is done"
```
And Next :
```bash
curl -fLo ~/.config/vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim && mv ~/.viminfo ~/.config/vim/.viminfo
```
 Vim'i açın:

```bash
vim
```
Eklentileri yükleyin:

```vim
:PlugInstall
```
Artık hata almamanız gerekiyor.
Vim → ~/.config/vim/.vimrc kullanıyorsanız, Vim'in bunu görmesi için:

```bash
export VIMINIT='let $MYVIMRC="$HOME/.config/vim/.vimrc" | source $MYVIMRC'
```
(Bunu ~/.bashrc veya ~/.zshrc'ye ekleyin.)


```bash 
mkdir -p ~/.cache/vim/{swap,backup,undo} && find ~ -name "*.swp" -exec mv {} ~/.cache/vim/swap \; &&
```

Otomatik temizlik:
Eski swap dosyalarını temizlemek için bir cron job veya sistem servisi oluşturabilirsiniz:

```bash
find ~/.cache/vim/swap -type f -mtime +30 -delete  
```
30 günden eski dosyaları sil
