-------------------------------------------------------------------------------------------------
--
--
--                  ██████╗ ██████╗ ████████╗██╗ ██████╗ ███╗   ██╗███████╗
--                 ██╔═══██╗██╔══██╗╚══██╔══╝██║██╔═══██╗████╗  ██║██╔════╝
--                 ██║   ██║██████╔╝   ██║   ██║██║   ██║██╔██╗ ██║███████╗
--                 ██║   ██║██╔═══╝    ██║   ██║██║   ██║██║╚██╗██║╚════██║
--                 ╚██████╔╝██║        ██║   ██║╚██████╔╝██║ ╚████║███████║
--                  ╚═════╝ ╚═╝        ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝╚══════╝
--
--
-------------------------------------------------------------------------------------------------

local opt = vim.opt
local g = vim.g

-- Basic settings
opt.mouse = "a"
opt.clipboard = "unnamedplus"
opt.completeopt = {"menuone", "noselect"}
opt.expandtab = true
opt.shiftwidth = 2
-- Enable relativenumber only in Normal mode
vim.api.nvim_create_autocmd("InsertEnter", {
    callback = function()
        vim.opt.relativenumber = false
    end
})

vim.api.nvim_create_autocmd("InsertLeave", {
    callback = function()
        vim.opt.relativenumber = true
    end
})

opt.relativenumber = true        -- Göreceli satır numaralarını göster

-- Arama Ayarları
opt.ignorecase = true            -- Arama sırasında büyük/küçük harf duyarlılığını kapat
opt.smartcase = true             -- Büyük harf içeriyorsa büyük/küçük harf duyarlı arama yap

-- Satır ve Sütun Ayarları
opt.wrap = false                 -- Satır sonuna geldiğinde yeni satıra geçme
opt.scrolloff = 8                -- İmleç en üstte veya en altta olduğunda gösterilecek satır sayısı
opt.sidescrolloff = 8            -- Yatay kaydırma için gösterilecek sütun sayısı
opt.signcolumn = "yes"           -- İmleç sütunu göster

-- Pencere Ayarları
opt.splitright = true            -- Yeni pencereyi sağa aç
opt.splitbelow = true            -- Yeni pencereyi aşağı aç

-- Renk ve Görünüm Ayarları
opt.termguicolors = true         -- Terminal renklerini kullan
opt.cursorline = true            -- Aktif satırı vurgula
opt.colorcolumn = "80"           -- 80. sütuna işaret çizgisi çiz

-- Geri alma Ayarları
opt.undodir = vim.fn.stdpath('cache') .. '/undo//'  -- Geri alma dosyalarının konumu
opt.undofile = true              -- Geri alma dosyasını kullan
opt.undoreload = 10000           -- Dosya yeniden yüklendiğinde geri alma sayısı

-- Lider Tuşu
g.mapleader = "\\"               -- Lider tuşu olarak backslash kullan

-- Built-in Pluginleri Devre Dışı Bırak
g.loaded_netrw = 1              -- Netrw pluginini devre dışı bırak
g.loaded_netrwPlugin = 1        -- Netrw plugininin pluginlerini devre dışı bırak


-- Her seçeneğin ne yaptığını açıklayan Türkçe açıklamalar:
--
-- mouse = "a": Tüm modlarda mouse kullanılabilmek için
-- clipboard = "unnamedplus": Sistem arası kopyalama yapabilmek için
-- completeopt = {"menuone", "noselect"}: Otomatik tamamlama menüsünü daha iyi hale getirir
-- expandtab = true: Tab yerine boşluk kullanır
-- shiftwidth = 2: Tab yerine 2 boşluk kullanır
-- tabstop = 2: Tab'ın 2 boşluğa eşit olduğunu belirtir
-- softtabstop = 2: Boşluklarla tab'ı taklit etmek için
-- number = true: Her satırın numarasını gösterir
-- relativenumber = true: Mevcut satırdan itibaren diğer satırların göreceli konumunu gösterir
-- ignorecase = true: Arama sırasında büyük/küçük harf duyarlılığını kapatır
-- smartcase = true: Büyük harf içeriyorsa büyük/küçük harf duyarlı arama yapar
-- wrap = false: Satır sonuna geldiğinde yeni satıra geçmemesini sağlar
-- scrolloff = 8: İmleç en üstte veya en altta olduğunda 8 satır gösterilir
-- sidescrolloff = 8: Yatay kaydırma için 8 sütun gösterilir
-- signcolumn = "yes": İmleç sütunu gösterilir
-- splitright = true: Yeni pencereyi sağa açar
-- splitbelow = true: Yeni pencereyi aşağı açar
-- termguicolors = true: Terminal renklerini kullanır
-- cursorline = true: Aktif satırı vurgular
-- colorcolumn = "80": 80. sütuna işaret çizgisi çizer
-- undodir: Geri alma dosyalarının konumunu belirtir
-- undofile = true: Geri alma dosyasını kullanır
-- undoreload = 10000: Dosya yeniden yüklendiğinde 10000 adıma kadar geri alabilirsiniz
-- mapleader = "\\": Lider tuşu olarak backslash kullanılır
-- loaded_netrw = 1: Netrw pluginini devre dışı bırakır
-- loaded_netrwPlugin = 1: Netrw plugininin pluginlerini devre dışı bırakır










-- Basic settings
vim.opt.number = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.termguicolors = true
vim.opt.cursorline = true

-- Leader key
vim.g.mapleader = "\\"


-- Undo dosyaları için daha modern Lua yaklaşımı
vim.opt.undodir = vim.fn.stdpath('cache') .. '/undo//'  -- ~/.cache/nvim/undo//
vim.opt.undofile = true
vim.opt.undoreload = 10000







---------------------------------------------------------------------------------------------------------------------
--
--
--                        ██╗  ██╗███████╗██╗   ██╗███╗   ███╗ █████╗ ██████╗ ███████╗
--                        ██║ ██╔╝██╔════╝╚██╗ ██╔╝████╗ ████║██╔══██╗██╔══██╗██╔════╝
--                        █████╔╝ █████╗   ╚████╔╝ ██╔████╔██║███████║██████╔╝███████╗
--                        ██╔═██╗ ██╔══╝    ╚██╔╝  ██║╚██╔╝██║██╔══██║██╔═══╝ ╚════██║
--                        ██║  ██╗███████╗   ██║   ██║ ╚═╝ ██║██║  ██║██║     ███████║
--                        ╚═╝  ╚═╝╚══════╝   ╚═╝   ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝     ╚══════╝
--
--
---------------------------------------------------------------------------------------------------------------------

vim.g.mapleader = "\\" -- Lider tuş tanımı

-- Window navigation

-- Yazdırma işlemi için (Linux'ta)
vim.keymap.set("n", "<Leader>p", ":%w !lp<CR>", { silent = true, desc = "Dosyayı yazdır" })

-- Insert modundan çıkmak için jj kısayolu
vim.keymap.set("i", "jj", "<Esc>", { desc = "Insert modundan çık" })

-- Boşluk tuşu ile komut moduna geçiş
vim.keymap.set("n", "<Space>", ":", { desc = "Komut moduna geç" })

-- Yeni satır açma ve insert modundan çıkma
vim.keymap.set("n", "o", "o<esc>", { desc = "Altına yeni satır aç" })
vim.keymap.set("n", "O", "O<esc>", { desc = "Üstüne yeni satır aç" })

-- Arama sonucunda imleci ortala
vim.keymap.set("n", "n", "nzz", { desc = "Sonraki eşleşmeye git ve ortala" })
vim.keymap.set("n", "N", "Nzz", { desc = "Önceki eşleşmeye git ve ortala" })

-- Satır sonuna kadar yank
vim.keymap.set("n", "Y", "y$", { desc = "Satır sonuna kadar kopyala" })

-- F5 ile Python scripti çalıştırma
vim.keymap.set("n", "<F5>", function()
	vim.cmd("w")
	vim.cmd("!clear")
	vim.cmd("!python3 %")
end, { desc = "Python scripti çalıştır" })

-- Pencere navigasyonu
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Alt pencereye geç" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Üst pencereye geç" })
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Sol pencereye geç" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Sağ pencereye geç" })

-- Pencere boyutlandırma
vim.keymap.set("n", "<C-Up>", "<C-w>+", { desc = "Pencereyi yukarı genişlet" })
vim.keymap.set("n", "<C-Down>", "<C-w>-", { desc = "Pencereyi aşağı daralt" })
vim.keymap.set("n", "<C-Left>", "<C-w>>", { desc = "Pencereyi sola genişlet" })
vim.keymap.set("n", "<C-Right>", "<C-w><", { desc = "Pencereyi sağa daralt" })

-- Arama sonucunda vurgulanan (hlsearch) eşleşmeleri kapatmak için
vim.keymap.set("n", "<Leader>h", function()
	vim.opt.hlsearch = not vim.opt.hlsearch:get()
end, { silent = true, desc = "Arama vurgusunu aç/kapat" })

-- \w : Dosyayı kaydet (write)
vim.keymap.set("n", "<Leader>w", ":w<CR>", { desc = "Dosyayı kaydet" })

-- \r : Config'i yeniden yükle (source)
vim.keymap.set("n", "<Leader>r", function()
	vim.cmd("source ~/.config/nvim/init.lua")
	print("Neovim config yeniden yüklendi!")
end, { desc = "Config'i yeniden yükle" })

-- \q : Kaydet ve çık (write and quit)
vim.keymap.set("n", "<Leader>q", ":wq<CR>", { desc = "Kaydet ve çık" })

-- \dq : Kaydetmeden çık (quit without saving)
vim.keymap.set("n", "<Leader>dq", ":q!<CR>", { desc = "Kaydetmeden çık" })

-- \e : Config'i düzenle (edit)
vim.keymap.set("n", "<Leader>e", function()
	vim.cmd("e ~/.config/nvim/init.lua")
end, { desc = "Config'i düzenle" })


