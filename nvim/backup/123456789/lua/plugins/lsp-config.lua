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
			lspconfig.tsserver.setup({
				capabilities = capabilities,
			})
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

			-- vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			-- vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
			-- vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
			-- vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
			-- LSP keymaps
			vim.keymap.set("n", "gD", function()
				vim.lsp.buf.declaration()
			end, { desc = "Go to declaration" })

			vim.keymap.set("n", "gd", function()
				vim.lsp.buf.definition()
			end, { desc = "Go to definition" })

			vim.keymap.set("n", "K", function()
				vim.lsp.buf.hover()
			end, { desc = "Show hover" })

			vim.keymap.set("n", "gi", function()
				vim.lsp.buf.implementation()
			end, { desc = "Go to implementation" })

			vim.keymap.set("n", "<C-k>", function()
				vim.lsp.buf.signature_help()
			end, { desc = "Show signature help" })

			vim.keymap.set("n", "<leader>wa", function()
				vim.lsp.buf.add_workspace_folder()
			end, { desc = "Add workspace folder" })

			vim.keymap.set("n", "<leader>wr", function()
				vim.lsp.buf.remove_workspace_folder()
			end, { desc = "Remove workspace folder" })

			vim.keymap.set("n", "<leader>wl", function()
				print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
			end, { desc = "List workspace folders" })

			vim.keymap.set("n", "<leader>D", function()
				vim.lsp.buf.type_definition()
			end, { desc = "Go to type definition" })

			vim.keymap.set("n", "<leader>rn", function()
				vim.lsp.buf.rename()
			end, { desc = "Rename symbol" })

			vim.keymap.set("n", "<leader>ca", function()
				vim.lsp.buf.code_action()
			end, { desc = "Code action" })

			vim.keymap.set("n", "gr", function()
				vim.lsp.buf.references()
			end, { desc = "Find references" })

			vim.keymap.set("n", "<leader>f", function()
				vim.lsp.buf.formatting()
			end, { desc = "Format code" })
		end,
	},
}
