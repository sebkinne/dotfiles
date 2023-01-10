-- Options default for silent mappings
local silentops = { noremap = true, silent = true }

-- Configure leader
vim.g.mapleader = ' '

-- Create splits
vim.api.nvim_set_keymap('n', '<leader>s', ':sp<CR>', silentops)
vim.api.nvim_set_keymap('n', '<leader>v', ':vsp<CR>', silentops)

-- Move between buffers
vim.api.nvim_set_keymap('n', '<C-Left>', ':bnext<CR>', silentops)
vim.api.nvim_set_keymap('n', '<C-Right>', ':bprev<CR>', silentops)
vim.api.nvim_set_keymap('n', '<leader>c', ':close<CR>', silentops)
vim.api.nvim_set_keymap('n', '<leader>d', ':bdelete<CR>', silentops)

-- Save file
vim.api.nvim_set_keymap('n', '<leader>w', ':w<CR>', silentops)
vim.api.nvim_set_keymap('n', '<leader>W', ':wall<CR>', silentops)

-- Clear search highlight
vim.api.nvim_set_keymap('n', '<leader>z', ':noh<CR>', silentops)

-- Search for visually selected text
vim.api.nvim_set_keymap('v', '//', 'y/\\V<C-R>=escape(@",\'/\')<CR><CR>', silentops)
