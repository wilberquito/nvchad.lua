local present, smoothcursor = pcall(require, "smoothcursor")

if not present then
  return
end

smoothcursor.setup({
    autostart = true,
    cursor = 'λ',              -- cursor shape (need nerd font)
    texthl = "SmoothCursor",   -- highlight group, default is { bg = nil, fg = "#FFD400" }
    linehl = "SmoothCursor",              -- highlight sub-cursor line like 'cursorline', "CursorLine" recommended
    type = "default",          -- define cursor movement calculate function, "default" or "exp" (exponential).
    fancy = {
        enable = true,        -- enable fancy mode
        head = {
            cursor = 'λ',              -- cursor shape (need nerd font)
            texthl = "SmoothCursor",
            linehl = nil
        },
        body = {
            { cursor = "", texthl = "SmoothCursor" },
            { cursor = "", texthl = "SmoothCursor" },
            { cursor = "●", texthl = "SmoothCursor" },
            { cursor = "●", texthl = "SmoothCursor" },
            { cursor = "•", texthl = "SmoothCursor" },
            { cursor = ".", texthl = "SmoothCursor" },
            { cursor = ".", texthl = "SmoothCursor" },
        },
        tail = { cursor = nil, texthl = "SmoothCursor" }
    },
    flyin_effect = nil,        -- "bottom" or "top"
    speed = 25,                -- max is 100 to stick to your current position
    intervals = 35,            -- tick interval
    priority = 10,             -- set marker priority
    timeout = 3000,            -- timout for animation
    threshold = 3,             -- animate if threshold lines jump
    disable_float_win = false, -- disable on float window
    enabled_filetypes = nil,   -- example: { "lua", "vim" }
    disabled_filetypes = nil,  -- this option will be skipped if enabled_filetypes is set. example: { "TelescopePrompt", "NvimTree" }
})


vim.api.nvim_set_hl(0, 'SmoothCursor', { fg = '#8aa872' })
vim.fn.sign_define('smoothcursor', { text = 'λ' })

local autocmd = vim.api.nvim_create_autocmd
autocmd({ 'ModeChanged' }, {
  callback = function()
    local current_mode = vim.fn.mode()
    if current_mode == 'n' then
      vim.api.nvim_set_hl(0, 'SmoothCursor', { fg = '#8aa872' })
      vim.fn.sign_define('smoothcursor', { text = 'λ' })
    elseif current_mode == 'i' then
      vim.api.nvim_set_hl(0, 'SmoothCursor', { fg = '#f9584b' })
      vim.fn.sign_define('smoothcursor', { text = '' })
    elseif current_mode == 'v' then
      vim.api.nvim_set_hl(0, 'SmoothCursor', { fg = '#668aab' })
      vim.fn.sign_define('smoothcursor', { text = '' })
    elseif current_mode == 'V' then
      vim.api.nvim_set_hl(0, 'SmoothCursor', { fg = '#668aab' })
      vim.fn.sign_define('smoothcursor', { text = '' })
    else
      vim.api.nvim_set_hl(0, 'SmoothCursor', { fg = '#668aab' })
      vim.fn.sign_define('smoothcursor', { text = '' })
    end
  end,
})
