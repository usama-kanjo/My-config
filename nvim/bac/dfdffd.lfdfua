--------------------------------------------------------------------------------------------------------------
--
--
--              ██╗   ██╗████████╗██╗██╗     ███████╗   ██╗     ██╗   ██╗ █████╗ 
--              ██║   ██║╚══██╔══╝██║██║     ██╔════╝   ██║     ██║   ██║██╔══██╗
--              ██║   ██║   ██║   ██║██║     ███████╗   ██║     ██║   ██║███████║
--              ██║   ██║   ██║   ██║██║     ╚════██║   ██║     ██║   ██║██╔══██║
--              ╚██████╔╝   ██║   ██║███████╗███████║██╗███████╗╚██████╔╝██║  ██║
--               ╚═════╝    ╚═╝   ╚═╝╚══════╝╚══════╝╚═╝╚══════╝ ╚═════╝ ╚═╝  ╚═╝
--              
--              
--------------------------------------------------------------------------------------------------------------



local M = {}

-- Safe require function
function M.safe_require(module)
  local ok, err = pcall(require, module)
  if not ok then
    vim.notify('Error loading ' .. module .. ': ' .. err, vim.log.levels.ERROR)
  end
end

-- Auto-load all files in a directory
function M.load_configs(dir)
  for _, file in ipairs(vim.fn.readdir(vim.fn.stdpath('config') .. '/lua/' .. dir)) do
    if file:match('%.lua$') then
      local module = dir .. '.' .. file:gsub('%.lua$', '')
      M.safe_require(module)
    end
  end
end

return M
