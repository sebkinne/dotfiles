-- Misc LSP related keymap
vim.api.nvim_set_keymap("n", "<leader>xx", "<cmd>Trouble<cr>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "<leader>xw", "<cmd>Trouble workspace_diagnostics<cr>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "<leader>xd", "<cmd>Trouble document_diagnostics<cr>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "<leader>xl", "<cmd>Trouble loclist<cr>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "<leader>xq", "<cmd>Trouble quickfix<cr>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "gR", "<cmd>Trouble lsp_references<cr>", {silent = true, noremap = true})

-- Keymap to load when a LSP server is attached to the current buffer
local M = {}
M.on_lsp_attach = function(bufnr)
    local opts = { noremap = true, silent = true, buffer = bufnr}

    vim.keymap.set('n', ']g', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
    vim.keymap.set('n', '[g', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
    vim.keymap.set('n', 'gh', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
    vim.keymap.set('n', 'ge', '<cmd>lua vim.diagnostic.open_float(0, { scope="line" })<CR>', opts)
    vim.keymap.set('n', 'gm', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
    vim.keymap.set('n', 'gh', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
    vim.keymap.set('n', 'gx', '<cmd>Telescope diagnostics<CR>', opts)
    vim.keymap.set('n', 'gd', '<cmd>Telescope lsp_definitions<CR>', opts)
    vim.keymap.set('n', 'gi', '<cmd>Telescope lsp_implementations<CR>', opts)
    vim.keymap.set('n', 'gr', '<cmd>Telescope lsp_references<CR>', opts)
    vim.keymap.set('n', 'gs', '<cmd>Telescope lsp_document_symbols<CR>', opts)
    vim.keymap.set('n', 'gt', '<cmd>Telescope lsp_type_definitions<CR>', opts)
    vim.keymap.set('n', 'gw', '<cmd>Telescope lsp_dynamic_workspace_symbols<CR>', opts)
end

return M
