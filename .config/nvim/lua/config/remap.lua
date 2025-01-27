-- Options default for silent mappings
local silentops = { noremap = true, silent = true }

-- Change leader to space
vim.g.mapleader = ' '

-- Create splits
vim.api.nvim_set_keymap('n', '<leader>s', ':sp<CR>', silentops)
vim.api.nvim_set_keymap('n', '<leader>v', ':vsp<CR>', silentops)

-- Buffer navigation
vim.api.nvim_set_keymap('n', '<leader>l', ':bnext<CR>', silentops)
vim.api.nvim_set_keymap('n', '<leader>h', ':bprev<CR>', silentops)
vim.api.nvim_set_keymap('n', '<leader>c', ':close<CR>', silentops)
vim.api.nvim_set_keymap('n', '<leader>d', ':bdelete<CR>', silentops)

-- Save file
vim.api.nvim_set_keymap('n', '<leader>w', ':w<CR>', silentops)
vim.api.nvim_set_keymap('n', '<leader>W', ':wall<CR>', silentops)

-- Clear search highlight
vim.api.nvim_set_keymap('n', '<leader>z', ':noh<CR>', silentops)

-- Search for visually selected text
vim.api.nvim_set_keymap('v', '//', 'y/\\V<C-R>=escape(@",\'/\')<CR><CR>', silentops)

-- Formatting
vim.keymap.set('n', '<leader>f', vim.lsp.buf.format, silentops)

-- Terminal
vim.keymap.set('t', '<Esc><Esc>', [[<C-\><C-n>]])
