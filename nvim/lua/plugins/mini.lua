-- ~/.config/nvim/lua/plugins/mini.lua
return {
	"echasnovski/mini.nvim",
	version = false, -- En son sürümü kullan
	event = "VeryLazy",
	config = function()
		require("mini.icons").setup()
	end,
}
