---@diagnostic disable: undefined-global
----------------------------------------------------------------------------------------------------------
--
--
--         ████████╗███████╗██╗     ███████╗███████╗ ██████╗ ██████╗ ██████╗ ███████╗
--         ╚══██╔══╝██╔════╝██║     ██╔════╝██╔════╝██╔════╝██╔═══██╗██╔══██╗██╔════╝
--            ██║   █████╗  ██║     █████╗  ███████╗██║     ██║   ██║██████╔╝█████╗
--            ██║   ██╔══╝  ██║     ██╔══╝  ╚════██║██║     ██║   ██║██╔═══╝ ██╔══╝
--            ██║   ███████╗███████╗███████╗███████║╚██████╗╚██████╔╝██║     ███████╗
--            ╚═╝   ╚══════╝╚══════╝╚══════╝╚══════╝ ╚═════╝ ╚═════╝ ╚═╝     ╚══════╝
--
--
----------------------------------------------------------------------------------------------------------

return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local builtin = require("telescope.builtin")
			-- Telescope keymaps
			vim.keymap.set("n", "<C-p>", function()
				builtin.find_files({ hidden = true })
			end)

			vim.keymap.set("n", "<leader>fg", function()
				builtin.live_grep({
					additional_args = { "--hidden", "--glob", "!**/.git/*" },
				})
			end, { desc = "Live grep (including hidden files)" })

			require("telescope").setup({
				defaults = {
					file_ignore_patterns = { "^.git/" },
					hidden = true,
				},
			})
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
