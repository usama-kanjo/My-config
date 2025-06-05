--------------------------------------------------------------------------------------------------
--
--
--                   ██████╗ ██╗     ██╗   ██╗ ██████╗ ██╗███╗   ██╗███████╗
--                   ██╔══██╗██║     ██║   ██║██╔════╝ ██║████╗  ██║██╔════╝
--                   ██████╔╝██║     ██║   ██║██║  ███╗██║██╔██╗ ██║███████╗
--                   ██╔═══╝ ██║     ██║   ██║██║   ██║██║██║╚██╗██║╚════██║
--                   ██║     ███████╗╚██████╔╝╚██████╔╝██║██║ ╚████║███████║
--                   ╚═╝     ╚══════╝ ╚═════╝  ╚═════╝ ╚═╝╚═╝  ╚═══╝╚══════╝
--
--
--------------------------------------------------------------------------------------------------
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	spec = {
		{ import = "plugins.catppuccin" },
		{ import = "plugins.telescope" },
		{ import = "plugins.treesitter" },
		{ import = "plugins/gitsigns" }, -- gitsigns.lua'yı yükle
		{ import = "plugins/noice" }, -- noice.lua'yı yükle
		--  { import = "plugins/which-key" },
		{ import = "plugins/lsp-config" },
		{ import = "plugins/mini" },
		{ import = "plugins.neo-tree" },
		{ import = "plugins.lualine" },
		{ import = "plugins.none-ls" },
	},
})
