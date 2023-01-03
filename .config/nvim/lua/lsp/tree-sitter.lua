require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    'bash',
    'c',
    'comment',
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
  }
}

vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'
