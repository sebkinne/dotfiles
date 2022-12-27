" " " " " " " " "
" Misc settings "
" " " " " " " " "
set number "Enable line numbers
set nowrap " Don't wrap lines
set smartcase "Ignore case for lowercase patterns
set termguicolors " Enable 24-bit colors
set undofile "Persist undo trees after file closures
set noswapfile "Disable swap file
set mouse=nv "Enable mouse in normal and visual modes
set cmdheight=1 "We always want the cmd bar
set encoding=UTF-8 "Always set encoding to UTF-8
set scrolloff=12 "Keep a few lines above and below the cursor when scrolling
set updatetime=300 "Lower the update time significantly (swap, CursorHold)
set completeopt=menu,menuone,noselect "Show completions and require explicit selection
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.svg,*.png,*.jpg,*.gif,node_modules "Ignore common files we don't want to edit
set shortmess+=c

" " " " " "
" Spacing " 
" " " " " "
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" " " " " " " "
" Indentation " 
" " " " " " " "
set smartindent "Smartly autoindent new lines
set cinoptions=(g0,+2,(0,i0,t0,:0) "Indenting options

" " " " " "
" Folding " 
" " " " " "
set foldmethod=syntax "Fold on syntax highlighting
set nofoldenable "Don't fold by default

" " " " "
" Split " 
" " " " "
set splitbelow
set splitright

