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

-- Disable nvim integrated term mapping
-- M.disabled = {
--
--   t = {
--     -- toggle in terminal mode
--     ["<A-i>"] = "",
--
--     ["<A-h>"] = "",
--
--     ["<A-v>"] = "",
--   },
--
--   n = {
--     -- toggle in normal mode
--     ["<A-i>"] = "",
--
--     ["<A-h>"] = "",
--
--     ["<A-v>"] = "",
--
--     -- new
--     ["<leader>h"] = "",
--
--     ["<leader>v"] = "",
--
--     ["<C-c>"] = "",
--   }
-- }


M.general = {
  n = {
    ["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>", "window left" },
    ["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>", "window right" },
    ["<C-j>"] = { "<cmd> TmuxNavigateDown<CR>", "window down" },
    ["<C-k>"] = { "<cmd> TmuxNavigateUp<CR>", "window up" },
    ["n"] = { "nzt", "center result search", opts = opts },
    ["N"] = { "Nzt", "center result search", opts = opts },
    ["<C-d>"] = { "<C-d>zz" },
    ["<C-u>"] = { "<C-u>zz" },
  },
  v = {
    ["<"] = { "<gv", "tab line right", opts = opts },
    [">"] = { ">gv", "tab line left", opts = opts },
    ["<S-j>"] = { ":move '>+1<CR>gv=gv", "Move selected lines down", opts = opts },
    ["<S-k>"] = { ":move '<-2<CR>gv=gv", "Move selected lines up", opts = opts },
  },
  t = {
    ["<Esc>"] = {"<C-\\><C-n>", opts=opts},
    ["jk"] = {"<C-\\><C-n>", opts=opts}
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
