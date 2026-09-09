return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    opts = require "configs.conform",
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  { import = "nvchad.blink.lazyspec" },

  {
    "nvim-treesitter/nvim-treesitter",
    event = "VeryLazy",
    opts = {
      ensure_installed = {
        "lua",
        "html",
        "cpp",
        "c",
        "javascript",
        "typescript",
        "json",
      },
    },
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = function()
      return require "configs.nvimtree"
    end,
  },

  {
    "nvim-tree/nvim-web-devicons",
    opts = {
      color_icons = false,
    },
  },

  {
    "obsidian-nvim/obsidian.nvim",
    lazy = false,

    dependencies = {
      "nvim-lua/plenary.nvim",
    },

    config = function()
      require("obsidian").setup {
        legacy_commands = false,

        workspaces = {
          {
            name = "personal",
            path = "~/vaults/personal",
          },
        },
      }
    end,
  },
  {
    "MeanderingProgrammer/render-markdown.nvim",
    ft = "markdown",
  },

  {
    "rest-nvim/rest.nvim",
    ft = { "http" },
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = true,
  },
  {
    "kristijanhusak/vim-dadbod-ui",
    dependencies = {
      "tpope/vim-dadbod",
      "kristijanhusak/vim-dadbod-completion",
    },
    cmd = {
      "DBUI",
      "DBUIToggle",
      "DBUIAddConnection",
      "DBUIFindBuffer",
    },
    init = function()
      vim.g.db_ui_use_nerd_fonts = 1
    end,
  },
}
