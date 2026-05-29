return {
	{
		"nvim-treesitter/nvim-treesitter",
		opts = function(_, opts)
			-- .env dosyalarını bash syntax'ı ile göster
			vim.treesitter.language.register("bash", "dotenv")
			return opts
		end,
	},
}
