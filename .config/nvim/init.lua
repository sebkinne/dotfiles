-- Basics
require('basics')

-- Packer
require('plugins/plugins')

-- Mason
require('plugins/mason-menu')

-- Line
require('plugins/buffer-line')
require('plugins/status-line')

-- File Navigation
require('plugins/tree')
require('plugins/tele-scope')

-- Source Code Management
require('plugins/git-integration')
require('plugins/format')

-- LSP & Diagnostics
require('lsp')
require('lsp/tree-sitter')
require('lsp/signature')
require('lsp/completion')
require('lsp/diagnostics')

-- Colorscheme & Theme
require('theme/colorscheme')

-- Require google if we have it
pcall(require, 'google')

-- Commands & Mappings
require('commands')
require('mappings')
