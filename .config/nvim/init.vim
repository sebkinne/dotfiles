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
require('plugins')

-- Mason
require('mason-menu')

-- Colorscheme & Theme
require('theme/colorscheme')

-- LSP & Diagnostics
require('lsp')
require('lsp/tree-sitter')
require('lsp/signature')
require('lsp/completion')
require('lsp/diagnostics')

-- Line
require('buffer-line')
require('status-line')

-- File Navigation
require('tree')
require('tele-scope')

-- Source Code Management
require('git-integration')
require('format')

-- require('indent-line')
EOF
