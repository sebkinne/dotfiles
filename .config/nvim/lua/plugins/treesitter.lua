require('nvim-treesitter.configs').setup {
    ensure_installed = {
        'bash',
        'c',
        --'comment', -- comment seems to cause lag when working in files with lots of comments
        'cpp',
        'css',
        'dockerfile',
        'fish',
        'go',
        'html',
        'javascript',
        'jsdoc',
        'json',
        'jsonc',
        'lua',
        'php',
        'rust',
        'scss',
        'tsx',
        'typescript',
        'vim',
        'yaml'
    },

    highlight = {
        enable = true
    },

    incremental_selection = {
        enable = false
    },

    indent = {
        enable = true
    },
}

vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'
