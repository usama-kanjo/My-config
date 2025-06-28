return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
      close_if_last_window = true, -- Son pencereyse kapat

      source_selector = {
        winbar = false,
        statusline = false,
      },

      window = {
        position = "left",
        width = 20, -- Pencere genişliği
      },
      vim.keymap.set("n", "<C-n>", ":Neotree<CR>", { desc = "open tree file" }),
    })
  end,
}
