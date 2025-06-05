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
