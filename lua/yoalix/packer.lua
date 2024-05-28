-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use({ 
        'miikanissi/modus-themes.nvim',
        config = function()
            vim.cmd('colorscheme modus_vivendi', {
                variant = "tritanopia",
                trasnparent = true

            })
        end
    })

    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

    use('nvim-treesitter/playground')
    use('theprimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')
    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},     -- Required
            {'hrsh7th/cmp-buffer'}, -- Required
            {'hrsh7th/cmp-path'}, -- Required
            {'saadparwaiz1/cmp_luasnip'}, -- Required
            {'hrsh7th/cmp-nvim-lsp'}, -- Required
            {'hrsh7th/cmp-nvim-lua'}, -- Required

            --Snippets
            {'L3MON4D3/LuaSnip'},     -- Required
            {'rafamadriz/friendly-snippets'},
        }
    }
    use('jose-elias-alvarez/null-ls.nvim')
    use('MunifTanjim/prettier.nvim')

    use('eandrju/cellular-automaton.nvim')
      use("github/copilot.vim")
      use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
}

end)
