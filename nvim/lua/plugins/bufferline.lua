return {
  "akinsho/bufferline.nvim",
  event = "VeryLazy",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("bufferline").setup({
      options = {
        mode = "buffers",
        numbers = "ordinal",
        close_command = "bdelete! %d",
        right_mouse_command = "bdelete! %d",
        left_mouse_command = "buffer %d",
        middle_mouse_command = nil,
        indicator_icon = "▎",
        buffer_close_icon = "",
        modified_icon = "●",
        close_icon = "",
        show_close_icon = false,
        show_buffer_icons = true,
        show_buffer_close_icons = false,
        show_tab_indicators = true,
        separator_style = "slant",
        diagnostics = "nvim_lsp",
        hover = {
          enabled = true,
          delay = 200,
          reveal = { "close" },
        },
        offsets = {
          {
            filetype = "NvimTree",
            text = "Dosya Gezgini",
            highlight = "Directory",
            text_align = "left",
            separator = true,
          },
        },
      },
    })

    -- Buffer yönetimi kısayolları
    local map = vim.keymap.set
    local opts = { noremap = true, silent = true }

    -- Buffer geçişleri
    map("n", "<Tab>", "<cmd>BufferLineCycleNext<CR>", opts)
    map("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<CR>", opts)

    -- Belirli buffer'lara geçiş (1-9)
    for i = 1, 9 do
      map("n", "<leader>b"..i, "<cmd>BufferLineGoToBuffer "..i.."<CR>", opts)
    end

    -- Buffer kapatma
    map("n", "<leader>bd", "<cmd>Bdelete<CR>", opts)

    -- Tab yönetimi kısayolları
    map("n", "<leader>tn", "<cmd>tabnext<CR>", opts)
    map("n", "<leader>tp", "<cmd>tabprevious<CR>", opts)
    map("n", "<leader>tt", "<cmd>tabnew<CR>", opts)

    -- Belirli tab'lara geçiş (1-9)
    for i = 1, 9 do
      map("n", "<leader>"..i, i.."gt", opts)
    end
  end,
}




--
--       Kısayol	Açıklama
--
-- <Tab>	            Sonraki buffer'a geç
-- <S-Tab>	          Önceki buffer'a geç
-- <leader>b1-9	    Belirli buffer'a geç (1-9)
-- <leader>bd	      Mevcut buffer'ı kapat
-- <leader>tn	      Sonraki tab'a geç
-- <leader>tp	      Önceki tab'a geç
-- <leader>tt	      Yeni tab oluştur
-- <leader>1-9	      Belirli tab'a geç (1-9)
--








