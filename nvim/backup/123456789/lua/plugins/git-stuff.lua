-- ~/.config/nvim/lua/plugins/gitsigns.lua
return {
  {
    "tpope/vim-fugitive",

  },
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup()
      vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {})
      vim.keymap.set("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>", {})
    end,
    -- 	event = "BufReadPre",
    -- 	opts = {
    -- 		signs = {
    -- 			add = { text = "│" },
    -- 			change = { text = "│" },
    -- 			delete = { text = "_" },
    -- 		},
    -- 		on_attach = function(buffer)
    -- 			local gs = package.loaded.gitsigns
    -- 			vim.keymap.set("n", "[c", gs.prev_hunk, { buffer = buffer, desc = "Prev Hunk" })
    -- 		end,
    -- 	},
  }
}
