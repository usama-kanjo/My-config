-- ~/.config/nvim/lua/plugins/which-key.lua
return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		-- Leader tuşunun doğru çalıştığını kontrol
		vim.keymap.set("n", "<leader>", "<nop>", { noremap = true, silent = true })
	end,
	opts = {
		icons = { group = "" },
		triggers_nowait = { "<leader>" }, -- Hızlı erişim için
	},
	config = function(_, opts)
		local wk = require("which-key")
		wk.setup(opts)

		-- Tüm mapping'ler tek seferde tanımlansın
		wk.register({
			["\\"] = { -- Leader tuşu için özel tanım
				name = "LEADER",
				f = {
					name = "file",
					f = { "<cmd>Telescope find_files<cr>", "Find File" },
					r = { "<cmd>Telescope oldfiles<cr>", "Recent Files" },
				},
				g = {
					name = "git",
					s = { "<cmd>Gitsigns stage_hunk<cr>", "Stage Hunk" },
					p = { "<cmd>Gitsigns preview_hunk<cr>", "Preview Hunk" },
				},
			},
		}, { prefix = "<leader>" })
	end,
}
