local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "c",
    "markdown",
    "markdown_inline",
    "haskell",
    "python",
    "svelte"
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "prettier",
    "deno",

    -- c/cpp stuff
    "clangd",
    "clang-format",

    -- haskell stuff
    "haskell-language-server",

    -- python stuff
    "python-lsp-server",

    -- Latex lsp
    "texlab",

  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },
  renderer = {
    root_folder_label = true,
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
  sync_root_with_cwd = true,
  view = {
    adaptive_size = false,
    side = "left",
    width = 40,
  },

}

return M
