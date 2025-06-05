return {

  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
    },
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      local lspconfig = require("lspconfig")
      --       lspconfig.tsserver.setup({
      --         capabilities = capabilities
      --       })
      --       lspconfig.solargraph.setup({
      --         capabilities = capabilities
      --       })
          lspconfig.pylsp.setup({
      capabilities = capabilities,
    })
      lspconfig.bashls.setup({
        capabilities = capabilities,
        filetypes = { "sh", "bash", "zsh" }, -- Zsh dosyalarını da ekleyin
      })
      lspconfig.html.setup({
        capabilities = capabilities,
      })
      lspconfig.lua_ls.setup({
        capabilities = capabilities,
      })

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
-- return {
-- 	{
-- 		"williamboman/mason.nvim",
-- 		config = function()
-- 			require("mason").setup()
-- 		end,
-- 	},
-- 	{
-- 		"williamboman/mason-lspconfig.nvim",
-- 		config = function()
-- 			require("mason-lspconfig").setup({
-- 				ensure_installed = { "lua_ls", "vimls" },
-- 			})
-- 		end,
-- 	},
-- 	{
-- 		"neovim/nvim-lspconfig",
-- 		config = function()
-- 			local lspconfig = require("lspconfig")
-- 			lspconfig.lua_ls.setup({})
-- 			lspconfig.vimls.setup({})
-- 			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
-- 			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
-- 			vim.keymap.set({ "n" }, "<leader>ca", vim.lsp.buf.code_action, {})
-- 		end,
-- 	},
-- }
