-- plugins/code-runner.lua
return {
  "CRAG666/code_runner.nvim",
  config = function()
    require("code_runner").setup({
      filetype = {
        python = "python3 -u",
        cpp = "cd $dir && g++ -std=c++17 $fileName -o $fileNameWithoutExt && ./$fileNameWithoutExt",
      },
    })
  end,
  keys = {
    { "<leader>rr", "<cmd>RunCode<cr>", desc = "Run Code" },
    { "<leader>rf", "<cmd>RunFile<cr>", desc = "Run File" },
  },
}