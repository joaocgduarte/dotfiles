-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use { 'morhetz/gruvbox', config = function()
        vim.cmd.colorscheme("gruvbox")
    end }

    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

    use('theprimeagen/harpoon')
    use {
        "ThePrimeagen/refactoring.nvim",
        requires = {
            { "nvim-lua/plenary.nvim" },
            { "nvim-treesitter/nvim-treesitter" }
        }
    }

    use('tpope/vim-fugitive')

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },             -- Required
            { 'williamboman/mason.nvim' },           -- Optional
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },     -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'hrsh7th/cmp-vsnip' },    --Required
            { 'hrsh7th/vim-vsnip' },    --required
            { 'L3MON4D3/LuaSnip' },     -- Required
        }
    }

    use 'nvim-tree/nvim-web-devicons'

    use {
        "imNel/monorepo.nvim",
        config = function()
            require("monorepo").setup({
                -- Your config here!
            })
        end,
        dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
    }

    use 'nvim-lua/plenary.nvim'
    use 'nvim-pack/nvim-spectre'
    use 'nvim-treesitter/nvim-treesitter-context'
    use { "ellisonleao/glow.nvim", config = function() require("glow").setup() end }

    -- plantuml
    use 'javiorfo/nvim-nyctophilia'
    use {
        'https://gitlab.com/itaranto/plantuml.nvim',
        tag = '*',
        config = function()
            require('plantuml').setup({})
        end
    }
end)
