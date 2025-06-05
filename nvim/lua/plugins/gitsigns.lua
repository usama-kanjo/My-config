-- ~/.config/nvim/lua/plugins/gitsigns.lua
return {
	"lewis6991/gitsigns.nvim",
	event = "BufReadPre",
	opts = {
		signs = {
			add = { text = "│" },
			change = { text = "│" },
			delete = { text = "_" },
		},
		on_attach = function(buffer)
			local gs = package.loaded.gitsigns
			vim.keymap.set("n", "]c", gs.next_hunk, { buffer = buffer, desc = "Next Hunk" })
			vim.keymap.set("n", "[c", gs.prev_hunk, { buffer = buffer, desc = "Prev Hunk" })
		end,
	},
}
