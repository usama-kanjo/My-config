-- ~/.config/nvim/lua/plugins/lsp-saga.lua
return {
	"nvimdev/lspsaga.nvim",
	event = "LspAttach", -- LSP bağlandığında yüklensin
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		symbol_in_winbar = {
			enable = true, -- Dosya yolunda sembol göster
		},
		lightbulb = {
			enable = true, -- Kod önerileri için ampul simgesi
		},
	},
	config = function(_, opts)
		require("lspsaga").setup(opts)

		-- Özel tuş haritalamaları
		vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", { desc = "Hover Documentation" })
		vim.keymap.set("n", "gd", "<cmd>Lspsaga peek_definition<CR>", { desc = "Peek Definition" })
	end,
}
