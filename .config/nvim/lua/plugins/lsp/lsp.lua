local lsp_zero = require('lsp-zero')

-- Mason handles LSP server installation for us. LSP Zero handles the setup for all installed servers.
require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = {
        'angularls',
        'bashls',
        'clangd',
        'cmake',
        'cssls',
        'eslint',
        'gopls',
        'html',
        'jsonls',
        'lua_ls',
        'pyright',
        'rust_analyzer',
        'tsserver',
    },
    handlers = {
        lsp_zero.default_setup,
    },
})

-- Set up keybinds for buffers with an LSP server attached
lsp_zero.on_attach(function(client, bufnr)
    -- LSP Zero uses nvim's built in mapping
    lsp_zero.default_keymaps({
        buffer = bufnr,
        preserve_mappings = false,
    })

    -- Show current line diagnostics on hover
    vim.cmd('autocmd CursorHold * lua vim.diagnostic.open_float(nil, {focus = false})')

    -- Include custom remaps for buffers that have an LSP server attached
    require('plugins.lsp.remap').on_lsp_attach(bufnr)
end)

