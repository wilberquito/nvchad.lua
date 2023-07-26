---@type MappingsTable
local M = {}

local opts = {
  nowait = true,
  silent = true,
  noremap = true
}

local talkativeopts = {
  nowait = true,
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
  },
  v = {
    ["<"] = { "<gv", "tab line right", opts = opts },
    [">"] = { ">gv", "tab line left", opts = opts },
    -- ["<S-j>"] = { ":m '>+1<CR>gv=gv", "move line up", opts = opts },
    -- ["<S-k>"] = { ":m '>-2<CR>gv=gv", "move line up", opts = opts },
  }
}

-- more keybinds!

M.abc = {
  n = {
    [",p"] = { "\"0p" }, -- paste the last content copied and not cut
    [",P"] = { "\"0P" }, -- paste the last content copied and not cut
    ["<leader>s"] = { ":up<CR>", opts = talkativeopts } -- save file if there was any change
  }
}

return M
