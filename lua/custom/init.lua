-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
--

local opt = vim.opt

-- highlight current line
opt.cursorline = true
-- vertical line
opt.cursorcolumn = true

-- Numbers
opt.number = true
opt.relativenumber = true

-- ding ding!
opt.errorbells = false

-- don't wrap long lines
opt.wrap = false

 -- scroll offwidth so it's not the very bottom
opt.scrolloff = 6

-- vertical command window higher
opt.cmdwinheight=10

-- command line higher
opt.cmdheight=2

-- highlight yanked text for 200ms using the "Visual" highlight group
vim.cmd[[
    augroup highlight_yank
    autocmd!
    au TextYankPost * silent! lua vim.highlight.on_yank({higroup="Visual", timeout=200})
    augroup END
]]
