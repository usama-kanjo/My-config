local M = {}

function M.cowboy()
  ---@type table?
  local ok = true
  for _, key in ipairs({ "h", "l", "+", "-" }) do
    local count = 1
    local timer = assert(vim.uv.new_timer())
    local map = key
    vim.keymap.set("n", key, function()
      if vim.v.count > 1 then
        count = 1
      end
      if count >= 26 and vim.bo.buftype ~= "nofile" then
        ok = pcall(vim.notify, "Hold it Cowboy!", vim.log.levels.WARN, {
          icon = "🤠",
          id = "cowboy",
          keep = function()
            return count >= 26
          end,
        })
        if not ok then
          return map
        end
      else
        count = count + 1
        timer:start(2001, 0, function()
          count = 1
        end)
        return key
      end
    end, { expr = true, silent = true })
  end
end

return M
