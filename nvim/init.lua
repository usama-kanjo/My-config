---------------------------------------------------------------------------
--
--
--            ███╗   ██╗██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
--            ████╗  ██║██║   ██║██║████╗ ████║██╔══██╗██╔════╝
--            ██╔██╗ ██║██║   ██║██║██╔████╔██║██████╔╝██║
--            ██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║
--            ██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
--            ╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝
--
--
---------------------------------------------------------------------------

vim.g.mapleader = "\\" -- Lider tuş tanımı

-- Neovim konfigürasyon yolu ayarlar
vim.opt.rtp:prepend(vim.fn.expand("~/.config/nvim"))
vim.opt.rtp:remove(vim.fn.expand("~/.config/vim"))

-- Initialize plugin manager
require("plugins.init")

-- Load plugin configurations
require("plugins.telescope")
require("plugins.treesitter")
require("plugins.catppuccin")
require("plugins.noice")
require("plugins.gitsigns")
-- require('plugins.which-key')
require("plugins.lsp-config")
require("plugins.mini")
require("plugins.lualine")
require("plugins.none-ls")

-- Load core configuration
require("core.options")
require("core.keymaps")
require("core.autocommands")

print("✅ Neovim yapılandırması başarıyla yüklendi!")

--|-->  Recommended Folder Structure
---
---       ~/.config/nvim/
---       ├── init.lua                 # Main entry point
---       └── lua/
---           ├── core/
---           │   ├── options.lua      # Basic settings
---           │   ├── keymaps.lua      # Key mappings
---           │   └── autocommands.lua # Autocommands
---           ├── plugins/
---           │   ├── init.lua         # Plugin manager setup
---           │   ├── telescope.lua    # Telescope config
---           │   ├── treesitter.lua   # Treesitter config
---           │   └── colorscheme.lua  # Colorscheme config
---           └── utils.lua            # Helper functions

--|--> it is bacup

--|-->plugins/init.lua
--- -- Lazy.nvim paket yöneticisi kurulumu
--- local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
--- if not vim.loop.fs_stat(lazypath) then
---   vim.fn.system({
---     'git',
---     'clone',
---     '--filter=blob:none',
---     'https://github.com/folke/lazy.nvim.git',
---     '--branch=stable',
---     lazypath,
---   })
--- end
--- vim.opt.rtp:prepend(lazypath)
---
--- require('lazy').setup(plugins)
---
--|-->plugins/colorscheme.lua
--- vim.cmd.colorscheme("catppuccin
--- local plugins = {    -- Kullanılacak eklentiler
---   {  -- Renk teması
---     "catppuccin/nvim",
---     name = "catppuccin",
---     priority = 1000
---   },

--|-->plugins/telescope.lua
---   {  -- Dosya arama eklentisi
---     'nvim-telescope/telescope.nvim',
---     tag = '0.1.8',
---     dependencies = { 'nvim-lua/plenary.nvim' },
---     config = function()
---       require("telescope").setup({
---         defaults = {
---           file_ignore_patterns = { "^.git/" },
---           hidden = true
---         },
---       })
---     end,
---   },
---

---|-->plugins/treesitter.lua
---   {  -- Syntax vurgulama
---     "nvim-treesitter/nvim-treesitter",
---     build = ":TSUpdate"
---   }
--- }
---
---
--- local configs = require("nvim-treesitter.configs")
--- configs.setup({
---   ensure_installed = {
---     "lua",
---     "vim",
---     "vimdoc",
---     "javascript",
---     "html"
---   },
---   highlight = {
---     enable = true
---   },
---   indent = {
---     enable = true
---   },
--- })

--|-->core/keymaps.lua
-- Klavye kısayolları
--- local builtin = require("telescope.builtin")
--- vim.keymap.set('n', '<C-p>', function()
---   builtin.find_files({
---     hidden = true
---   })
--- end, {})
---
--- vim.keymap.set('n', '<leader>fg', function()
---   builtin.live_grep({
---     additional_args = {
---       "--hidden",
---       "--glob",
---       "!**/.git/*"
---     }
---   })
--- end, {
---   desc = "İçerik arama (gizli dosyalar dahil)"
--- })
--
----------------------------------------------------------------------------
----------------------------------------------------------------------------
--|--> core/options.lua
-- Temel ayarlar
---- vim.g.mapleader = "\\"  -- Lider tuş tanımı
----
---- vim.opt.number = true         -- Satır numaraları
---- vim.opt.tabstop = 2          -- Tab genişliği
---- vim.opt.softtabstop = 2      -- Yazarken tab genişliği
---- vim.opt.shiftwidth = 2       -->> girintileme genişliği
---- vim.opt.expandtab = true     -- Tab yerine boşluk
---- vim.opt.smartindent = true   -- Akıllı girintileme
---- vim.opt.termguicolors = true -- True color desteği
---- vim.opt.cursorline = true    -- Geçerli satırı vurgula
----
-- Renk teması ayarı

--|-->core/keymaps.lua
---
---
--- -- Yazdırma işlemi için (Linux'ta)
--- vim.keymap.set('n', '<Leader>p', ':%w !lp<CR>', { silent = true, desc = "Dosyayı yazdır" })
---
--- -- Insert modundan çıkmak için jj kısayolu
--- vim.keymap.set('i', 'jj', '<Esc>', { desc = "Insert modundan çık" })
---
--- -- Boşluk tuşu ile komut moduna geçiş
--- vim.keymap.set('n', '<Space>', ':', { desc = "Komut moduna geç" })
---
--- -- Yeni satır açma ve insert modundan çıkma
--- vim.keymap.set('n', 'o', 'o<esc>', { desc = "Altına yeni satır aç" })
--- vim.keymap.set('n', 'O', 'O<esc>', { desc = "Üstüne yeni satır aç" })
---
--- -- Arama sonucunda imleci ortala
--- vim.keymap.set('n', 'n', 'nzz', { desc = "Sonraki eşleşmeye git ve ortala" })
--- vim.keymap.set('n', 'N', 'Nzz', { desc = "Önceki eşleşmeye git ve ortala" })
---
--- -- Satır sonuna kadar yank
--- vim.keymap.set('n', 'Y', 'y$', { desc = "Satır sonuna kadar kopyala" })
---
--- -- F5 ile Python scripti çalıştırma
--- vim.keymap.set('n', '<F5>', function()
---   vim.cmd('w')
---   vim.cmd('!clear')
---   vim.cmd('!python3 %')
--- end, { desc = "Python scripti çalıştır" })
---
--- -- Pencere navigasyonu
--- vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = "Alt pencereye geç" })
--- vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = "Üst pencereye geç" })
--- vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = "Sol pencereye geç" })
--- vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = "Sağ pencereye geç" })
---
--- -- Pencere boyutlandırma
--- vim.keymap.set('n', '<C-Up>', '<C-w>+', { desc = "Pencereyi yukarı genişlet" })
--- vim.keymap.set('n', '<C-Down>', '<C-w>-', { desc = "Pencereyi aşağı daralt" })
--- vim.keymap.set('n', '<C-Left>', '<C-w>>', { desc = "Pencereyi sola genişlet" })
--- vim.keymap.set('n', '<C-Right>', '<C-w><', { desc = "Pencereyi sağa daralt" })
---
---
---
---
---
---
---
---
---
--- -- Arama sonucunda vurgulanan (hlsearch) eşleşmeleri kapatmak için
--- vim.keymap.set('n', '<Leader>h', function()
---   vim.opt.hlsearch = not vim.opt.hlsearch:get()
--- end, { silent = true, desc = "Arama vurgusunu aç/kapat" })
---
--- -- \w : Dosyayı kaydet (write)
--- vim.keymap.set('n', '<Leader>w', ':w<CR>', { desc = "Dosyayı kaydet" })
---
--- -- \r : Config'i yeniden yükle (source)
--- vim.keymap.set('n', '<Leader>r', function()
---   vim.cmd('source ~/.config/nvim/init.lua')
---   print("Neovim config yeniden yüklendi!")
--- end, { desc = "Config'i yeniden yükle" })
---
--- -- \q : Kaydet ve çık (write and quit)
--- vim.keymap.set('n', '<Leader>q', ':wq<CR>', { desc = "Kaydet ve çık" })
---
--- -- \dq : Kaydetmeden çık (quit without saving)
--- vim.keymap.set('n', '<Leader>dq', ':q!<CR>', { desc = "Kaydetmeden çık" })
---
--- -- \e : Config'i düzenle (edit)
--- vim.keymap.set('n', '<Leader>e', function()
---   vim.cmd('e ~/.config/nvim/init.lua')
--- end, { desc = "Config'i düzenle" })
---
