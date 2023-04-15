local present, trouble = pcall(require, "trouble")

if not present then
  return
end


trouble.setup({})

local kmap = vim.keymap
local opts = {
  silent = true,
  noremap = true
}

kmap.set("n", "<leader>qi", "<cmd>TroubleToggle<cr>", opts)
kmap.set("n", "<leader>qw", "<cmd>TroubleToggle workspace_diagnostics<cr>", opts)
kmap.set("n", "<leader>qd", "<cmd>TroubleToggle document_diagnostics<cr>", opts)
kmap.set("n", "<leader>ql", "<cmd>TroubleToggle loclist<cr>", opts)
kmap.set("n", "<leader>qq", "<cmd>TroubleToggle quickfix<cr>", opts)
kmap.set("n", "gR", "<cmd>TroubleToggle lsp_references<cr>", opts)
