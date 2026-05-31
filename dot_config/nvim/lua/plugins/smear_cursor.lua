return {
  "sphamba/smear-cursor.nvim",
  opts = {},
  init = function()
    local bg = "#1a1a1a"
    local cursor_color = "#3F2254"

    vim.api.nvim_create_autocmd("VimEnter", {
      once = true,
      callback = function()
        pcall(vim.fn.system, { "kitty", "@", "set-colors", "cursor_trail_color=" .. bg })
      end,
    })
    vim.api.nvim_create_autocmd("VimLeave", {
      callback = function()
        pcall(vim.fn.system, { "kitty", "@", "set-colors", "cursor_trail_color=" .. cursor_color })
      end,
    })
  end,
}
