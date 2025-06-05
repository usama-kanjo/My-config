return {
	"folke/noice.nvim",
	dependencies = { "MunifTanjim/nui.nvim" },
	event = "VeryLazy",
	opts = {
		-- ===== BİLDİRİM AYARLARI ===== --
		messages = {
			enabled = true,
			view = "notify", -- Bildirimler için "notify" görünümü (sağ üst)
			view_error = "notify", -- Hatalar için de aynı görünüm
			view_warn = "notify",
			timeout = 10000, -- 3 saniye göster (varsayılan: 2000 ms)
		},

		-- ===== POPUP KONUMU ===== --
		popupmenu = {
			enabled = true,
			backend = "nui", -- NUI popup kullan
			position = {
				row = 2, -- Ekranın üst kısmına yakın (1 = en üst)
				col = "100%", -- Sağ kenara yasla
			},
		},

		-- ===== LSP MESAJLARI ===== --
		lsp = {
			override = {
				["vim.lsp.util.convert_input_to_markdown_lines"] = true,
				["vim.lsp.util.stylize_markdown"] = true,
			},
			message = {
				view = "notify", -- LSP mesajları da notify ile gözüksün
				timeout = 10000,
			},
		},

		-- ===== KOMUT SATIRI ===== --
		cmdline = {
			view = "cmdline_popup", -- Komut satırı popup'ı
			position = {
				row = 5, -- Ekranın altından 5. satır
				col = "25%", -- Ortaya hizala
			},
		},
	},
}
