-- plugins/prisma.lua oluştur
return {
  {
    "prisma/vim-prisma",
    ft = "prisma",
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        prismals = {
          cmd = { "prisma-language-server", "--stdio" },
          filetypes = { "prisma" },
          root_dir = require("lspconfig.util").root_pattern(
            "package.json",
            "prisma/schema.prisma",
            ".git"
          ),
        },
      },
    },
  },
}