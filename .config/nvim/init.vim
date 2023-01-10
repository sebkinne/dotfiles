"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" init.vim
" -------------------------------------------------------
" All plugins are configured via the lua interface,
" and are compartmentalised into their own files in
" lua/.
"
" Basic options and general mappings are in Vimscript
" files, located in vim/
"
source ~/.config/nvim/vim/basics.vim
source ~/.config/nvim/vim/mappings.vim

lua << EOF
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

EOF
