return {
  "folke/noice.nvim",
  dependencies = { "MunifTanjim/nui.nvim" },
  event = "VeryLazy",
  opts = {
    -- Bildirim konumu ve stil ayarları
    views = {
      notify = {
        position = {
          row = 2,           -- Üstten boşluk
          col = "100%",       -- Sağ kenara yasla
        },
        anchor = "top", -- Sağ üst köşe
        timeout = 19000,      -- 10 saniye
        replace = true,       -- önceki mesajı yenisiyle değiştir
      },
      mini = {
        timeout = 16000,
      }
    },

    -- Tüm mesajlar notify ile gözüksün
    messages = {
      enabled = true,
      view = "notify",       -- bilgi mesajları
      view_warn = "notify",  -- uyarılar
      view_error = "notify", -- hatalar
    },

    -- Komut satırında yazılanlar da popup şeklinde görünsün
    cmdline = {
      enabled = true,
      view = "cmdline_popup",
      format = {
        cmdline = { icon = "", lang = "vim" },
      },
    },

    popupmenu = {
      enabled = true,
      backend = "nui",
    },

    -- LSP mesajları da notify ile
    lsp = {
      override = {
        ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
        ["vim.lsp.util.stylize_markdown"] = true,
        ["cmp.entry.get_documentation"] = true,
      },
      message = {
        enabled = true,
        view = "notify",
      },
      progress = {
        enabled = true,
      },
      hover = {
        enabled = false,
      },
      signature = {
        enabled = false,
      },
    },

    -- Alt satırda eski Neovim mesajlarını engelle
    routes = {
      {
        filter = {
          event = "msg_show",
          kind = "",
        },
        opts = { skip = true },
      },
    },
  },
}
