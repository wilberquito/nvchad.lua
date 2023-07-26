---@type MappingsTable
local M = {}

local opts = {
  nowait = true,
  silent = true,
  noremap = true
}

M.general = {
  n = {
    ["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>", "window left" },
    ["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>", "window right" },
    ["<C-j>"] = { "<cmd> TmuxNavigateDown<CR>", "window down" },
    ["<C-k>"] = { "<cmd> TmuxNavigateUp<CR>", "window up" },
    ["n"] = { "nzz", "center result search", opts = opts },
    ["N"] = { "Nzz", "center result search", opts = opts },
    ["<C-d>"] = { "<C-d>zz" },
    ["<C-u>"] = { "<C-u>zz" },
    ["<leader>sh"] = { ":split<CR>", "split pane horizontal", opts = opts },
    ["<leader>sv"] = { ":vsplit<CR>", "split pane vertical", opts = opts },
  },
  v = {
    ["<"] = { "<gv", "tab line right", opts = opts },
    [">"] = { ">gv", "tab line left", opts = opts },
    -- ["<S-j>"] = { ":m '>+1<CR>gv=gv", "move line up", opts = opts },
    -- ["<S-k>"] = { ":m '>-2<CR>gv=gv", "move line up", opts = opts },
  }
}

-- more keybinds!

return M
