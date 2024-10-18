local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  -- overrides plugin configs

  -- Override to setup mason-lspconfig
  {
    "williamboman/mason.nvim",
    opts = overrides.mason
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },
  {
    "nvim-tree/nvim-tree.lua",
    even = "VimEnter",
    opts = overrides.nvimtree,
    lazy = false
  },

  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
    lazy = false
  },
  {
    "cappyzawa/trim.nvim",
    lazy = false,
    config = function()
      require("trim").setup({})
    end
  },
  {
    "christoomey/vim-tmux-navigator",
    lazy = false
  },
  {
    "ethanholz/nvim-lastplace",
    lazy = false,
    config = function()
      require("nvim-lastplace").setup({})
    end
  },
  {
    "RRethy/vim-illuminate",
    lazy = false,
  },
  {
    "lervag/vimtex",
    lazy = false,
  }

  -- To make a plugin not be loaded
  -- {
  --   "NvChad/nvim-colorizer.lua",
  --   enabled = false
  -- },

}

return plugins
