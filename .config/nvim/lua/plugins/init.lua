-- Packer manages the plugins
require('plugins.packer')

-- Set up and configure plaings
require('plugins.colors')
require('plugins.gitsigns')
require('plugins.goog')
require('plugins.lualine')
require('plugins.nvim-tree')
require('plugins.telescope')
require('plugins.treesitter')

-- Set up LSP related plugins
require('plugins.lsp')
