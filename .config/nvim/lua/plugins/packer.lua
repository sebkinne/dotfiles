local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
    -- Packer can manage itself
    use('wbthomason/packer.nvim')

    -- Treesitter
    use({'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'})
    use({'nvim-treesitter/nvim-treesitter-context', after = {'nvim-treesitter'}});

    -- Telescope
    use({
        'nvim-telescope/telescope-file-browser.nvim',
        requires = {
            'nvim-telescope/telescope.nvim', tag = '0.1.x', requires = {{'nvim-lua/plenary.nvim'}}
        },
    })

    -- LSP, completion, and diagnostics
    use({
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            -- LSP
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim', config = function() require('mason').setup() end},
            {'williamboman/mason-lspconfig.nvim', config = function() require('mason-lspconfig').setup() end},

            -- Completion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},
            {'hrsh7th/cmp-nvim-lsp-signature-help'},
            {'saadparwaiz1/cmp_luasnip'},
            {'ray-x/lsp_signature.nvim'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},

            -- Misc
            {'folke/trouble.nvim', config = function() require('trouble').setup() end},
            {'onsails/lspkind-nvim'},
        }
    })

    -- Plugins to make things prettier
    use('folke/tokyonight.nvim')
    use('nvim-lualine/lualine.nvim')
    use({'akinsho/bufferline.nvim', config = function() require('bufferline').setup() end})

    -- Git
    use('lewis6991/gitsigns.nvim')
    use('tpope/vim-fugitive')

    -- Misc
    use('mbbill/undotree')
    use({'nvim-tree/nvim-tree.lua', requires = {'nvim-tree/nvim-web-devicons'}})

    -- Google
    use('sso://user@user/skinne/google.nvim')

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        require('packer').sync()
    end
end)
