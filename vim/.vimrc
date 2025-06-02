"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""               
"               
"               ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
"               ██║   ██║██║████╗ ████║██╔══██╗██╔════╝
"               ██║   ██║██║██╔████╔██║██████╔╝██║     
"               ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║     
"                ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
"                 ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝
"               
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 


" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file is use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on.
syntax on

" Add numbers to the file.
set number

" Highlight cursor line underneath the cursor horizontally.
set nocursorline

" Highlight cursor line underneath the cursor vertically.
set nocursorcolumn

" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Use space characters instead of tabs.
set expandtab

"Encoding
set encoding=utf-8

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=10

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set wrap

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set nohlsearch

" Set the commands to save in history default number is 20.
set history=10000

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" 24-bit renk desteği
set termguicolors  

" Fare ile tıklamayı etkinleştir
"----set mouse=a  

" Nerd Fonts önerilir
set guifont=Fira\ Code\ Nerd\ Font\ Mono:h12  


" PLUGINS ---------------------------------------------------------------- {{{


call plug#begin('~/.config/vim/plugged')  " Eklentiler buraya kurulacak

" Pluginlerinizi buraya ekleyin

" Temel FZF eklentisi (binary ve Vim entegrasyonu)
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }  " Bu kritik öneme sahip!
Plug 'junegunn/fzf.vim'                              " FZF'nin Vim komutları


Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html']
\ }
Plug 'preservim/tagbar', { 'for': 'python' }


"-----------Plug 'rust-lang/rust.vim'   rust kodu kulanimi icin
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'dense-analysis/ale'

" nerdtree icin gereken plaginlaer
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
" guzelendirmek icin bir plugin
Plug 'morhetz/gruvbox'



""auto complet
"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'
"Plug 'mattn/emmet-vim'
"Plug 'posva/vim-vue'
"Plug 'jiangmiao/auto-pairs'
"Plug 'ervandew/supertab'

call plug#end()


" }}}

" PLUGIN EDIT  ----------------------------------------------------------- {{{



" Ayarlar auto complet
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"



" NERDTree'de gizli dosyaları göster
let NERDTreeShowHidden=1
"Gereksiz Dosyaları Gizleme
let NERDTreeIgnore=['\.git$', '\.pyc$', '\.swp$', '\.DS_Store$']
" Genişlik = 35 karakter
let NERDTreeWinSize=20
" NERDTree'de dosyaları yeni sekmede aç
let NERDTreeCustomOpenArgs = {'file': {'where': 't'}}
" Pencere genişliğini otomatik ayarla
let NERDTreeAutoResize = 1  
" NERDTree'de satır kaydırmayı kapat
autocmd FileType nerdtree setlocal nowrap  
"" Dosya silindiğinde buffer'ı da sil
"let NERDTreeAutoDeleteBuffer = 1 
"" Dosya açılınca NERDTree'yi kapat
"let NERDTreeQuitOnOpen = 1       



" Klasörler sarı
highlight NERDTreeDir guifg=#FFD700 ctermfg=Yellow 
" Dosyalar mavi
highlight NERDTreeFile guifg=#87CEEB ctermfg=Blue   
" Sadece NERDTree'de gruvbox teması
autocmd FileType nerdtree colorscheme gruvbox  
" Koyu gri arka plan
highlight NERDTreeBackground guibg=#282828 ctermbg=235 




" NERDTree için kısayol
nmap <C-n> :NERDTreeToggle<CR>

" Tagbar için kısayol
nmap <F8> :TagbarToggle<CR>

" FZF için kısayollar
nmap <C-p> :Files<CR>
nmap <C-f> :Rg<CR>

" Python-mode için kısayol
nmap <leader>p :PymodeRun<CR>

" NERDTree'de <Enter> normal açsın, <T> yeni sekmede açsın
let NERDTreeMapOpenInTab = 'T'  " Büyük T harfi ile yeni sekme
let NERDTreeMapOpenSplit = 's'  " s ile yatay böl
let NERDTreeMapOpenVSplit = 'v'  " v ile dikey böl




" Vim açıldığında NERDTree'yi başlat
autocmd VimEnter * NERDTree  
" NERDTree tek açık pencereyse Vim'den çık
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif  




autocmd FileType html setlocal omnifunc=htmlcomplete#CompleteTags






let g:ale_javascript_eslint_use_global = 0  " Global ESLint'i kullanma
let g:ale_javascript_eslint_executable = 'npx eslint'  " npx ile çalıştır





" }}}

" MAPPINGS --------------------------------------------------------------- {{{



" Set the backslash as the leader key.
let mapleader = "\\"

" Press \\ to jump back to the last cursor position.
nnoremap <leader>\ ``

" Press \p to print the current file to the default printer from a Linux operating system.
" View available printers:   lpstat -v
" Set default printer:       lpoptions -d <printer_name>
" <silent> means do not display output.
"-----------nnoremap <silent> <leader>p :%w !lp<CR>

" Type jj to exit insert mode quickly.
inoremap jj <Esc>

" Press the space bar to type the : character in command mode.
nnoremap <space> :

" Pressing the letter o will open a new line below the current one.
" Exit insert mode after creating a new line above or below the current line.
nnoremap o o<esc>
nnoremap O O<esc>

" Center the cursor vertically when moving to the next word during a search.
nnoremap n nzz
nnoremap N Nzz

" Yank from cursor to the end of line.
nnoremap Y y$

" Map the F5 key to run a Python script inside Vim.
" We map F5 to a chain of commands here.
" :w saves the file.
" <CR> (carriage return) is like pressing the enter key.
" !clear runs the external clear screen command.
" !python3 % executes the current file with Python.
nnoremap <f5> :w <CR>:!clear <CR>:!python3 % <CR>

" You can split the window in Vim by typing :split or :vsplit.
" Navigate the split view easier by pressing CTRL+j, CTRL+k, CTRL+h, or CTRL+l.
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Resize split windows using arrow keys by pressing:
" CTRL+UP, CTRL+DOWN, CTRL+LEFT, or CTRL+RIGHT.
noremap <c-up> <c-w>+
noremap <c-down> <c-w>-
noremap <c-left> <c-w>>
noremap <c-right> <c-w><

" NERDTree specific mappings.
" Map the F3 key to toggle NERDTree open and close.
nnoremap <F3> :NERDTreeToggle<cr>

" Have nerdtree ignore certain files and directories.
let NERDTreeIgnore=['\.git$', '\.jpg$', '\.mp4$', '\.ogg$', '\.iso$', '\.pdf$', '\.pyc$', '\.odt$', '\.png$', '\.gif$', '\.db$']


"Arama sonucunda vurgulanan (hlsearch) eşleşmeleri kapatmak için
nnoremap <silent> <Leader>h :set hlsearch!<CR>


" \s : Dosyayı kaydet (write)
nnoremap <Leader>w :w<CR>

" \r : Vimrc'yi yeniden yükle (source)
nnoremap <Leader>r :source ~/.config/vim/.vimrc<CR>

" \q : Kaydet ve çık (write and quit)
nnoremap <Leader>q :wq<CR>

" \dq : Kaydetmeden çık (quit without saving)
nnoremap <Leader>dq :q!<CR>

" \e : Vimrc'yi düzenle (edit)
nnoremap <Leader>e :e ~/.config/vim/.vimrc<CR>


" }}}

" VIMSCRIPT -------------------------------------------------------------- {{{

autocmd Filetype html setlocal tabstop=2 shiftwidth=2 expandtab


augroup cursor_off
    autocmd!
    autocmd WinLeave * set nocursorline nocursorcolumn
"    autocmd WinEnter * set cursorline cursorcolumn
augroup END


if version >= 703
    " Undo dosyaları
    set undodir=~/.cache/vim/undo//
    set undofile
    set undoreload=10000
endif


"Vim'e 'burayı da ara' demiş olursunuz.
set runtimepath^=~/.config/vim
" Yeni .viminfo yolunu belirtir
set viminfo+=n~/.config/vim/.viminfo  
" Swap dosyalarını ~/.cache/vim/swap altında tut
set directory^=$HOME/.cache/vim/swap//
" Backup dosyaları
set backupdir=$HOME/.cache/vim/backup//
" View dosyaları için özel dizin
set viewdir=~/.cache/vim/view/  


set background=dark

" If GUI version of Vim is running set these options.
if has('gui_running')

    " Set the background tone.
    set background=dark

    " Set the color scheme.
    colorscheme molokai

    " Set a custom font you have installed on your computer.
    " Syntax: <font_name>\ <weight>\ <size>
    set guifont=Monospace\ Regular\ 12

    " Display more of the file by default.
    " Hide the toolbar.
    set guioptions-=T

    " Hide the the left-side scroll bar.
    set guioptions-=L

    " Hide the the left-side scroll bar.
    set guioptions-=r

    " Hide the the menu bar.
    set guioptions-=m

    " Hide the the bottom scroll bar.
    set guioptions-=b

    " Map the F4 key to toggle the menu, toolbar, and scroll bar.
    " <Bar> is the pipe character.
    " <CR> is the enter key.
    nnoremap <F4> :if &guioptions=~#'mTr'<Bar>
        \set guioptions-=mTr<Bar>
        \else<Bar>
        \set guioptions+=mTr<Bar>
        \endif<CR>

endif


" }}}

" STATUS LINE ------------------------------------------------------------ {{{

" Clear status line when vimrc is reloaded.
set statusline=

" Status line left side.
set statusline+=\ %F\ %M\ %Y\ %R

" Use a divider to separate the left side from the right side.
set statusline+=%=

" Status line right side.
set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%

" Show the status on the second to last line.
set laststatus=2


" }}}



