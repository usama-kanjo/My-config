return {
  "goolord/alpha-nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")
    dashboard.section.header.val = {
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                     ]],
      [[       ████ ██████           █████      ██                     ]],
      [[      ███████████             █████                             ]],
      [[      █████████ ███████████████████ ███   ███████████   ]],
      [[     █████████  ███    █████████████ █████ ██████████████   ]],
      [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
      [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
      [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
    }

    -- Butonlar
    dashboard.section.buttons.val = {
      dashboard.button("e", "  Yeni Dosya", ":ene <BAR> startinsert <CR>"),
      dashboard.button("f", "  Dosya Bul", ":Telescope find_files<CR>"),
      dashboard.button("r", "  Son Dosyalar", ":Telescope oldfiles<CR>"),
      dashboard.button("c", "  Ayarlar", ":e ~/.config/nvim/init.lua<CR>"),
      dashboard.button("q", "  Çıkış", ":qa<CR>"),
    }

    -- Footer (alt bilgi)
    dashboard.section.footer.val = "🚀 Neovim ile keyifli kodlamalar!"

    vim.api.nvim_set_hl(0, "AlphaHeader", { fg = "#61afef" }) -- Başlık rengi
    vim.api.nvim_set_hl(0, "AlphaButton", { fg = "#98c379" }) -- Buton rengi

    alpha.setup(dashboard.config)
  end,
}
