"Vim'e "burayı da ara" demiş olursunuz.
set runtimepath^=~/.config/vim
" Yeni .viminfo yolunu belirtir
set viminfo+=n~/.config/vim/.viminfo  
" Swap dosyalarını ~/.cache/vim/swap altında tut
set directory^=$HOME/.cache/vim/swap//
" Backup dosyaları
set backupdir=$HOME/.cache/vim/backup//
" Undo dosyaları
set undodir=$HOME/.cache/vim/undo//


"tema degisikligi
colorscheme slate
"show line numbers
set number
"status bar
set laststatus=2
"set compatinlity to vim only
set nocompatible
"Automatically wrap text that extends beyond tne screen length
set wrap
"Encoding
set encoding=utf-8
"



"
call plug#begin('~/.config/vim/plugged')  " Eklentiler buraya kurulacak

" Pluginlerinizi buraya ekleyin
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'rust-lang/rust.vim'

call plug#end()
