-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Dellete all buffers except the current one
   	use 'schickling/vim-bufonly'

    	-- Multicursor - next: <C-n>, skip next: <C-x>, remove current: <C-p> 
    -- use 'mg979/vim-visual-multi'

    use 'terryma/vim-multiple-cursors'
   	use {'ojroques/nvim-hardline'}
    use 'tpope/vim-sensible'
    use 'tpope/vim-surround'

   	use 'airblade/vim-gitgutter'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.3',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    
    use({
        'catppuccin/nvim',
        as = 'catppuccin',
        config = function()
            vim.cmd('colorscheme catppuccin')
        end
    })
    -- use({
    --     'rose-pine/neovim',
    --     as = 'rose-pine',
    --     config = function()
    --         vim.cmd('colorscheme rose-pine')
    --     end
    -- })

    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use('nvim-treesitter/playground')

    use('ThePrimeagen/harpoon')


    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            --- Uncomment these if you want to manage LSP servers from neovim
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },
      
            -- LSP Support
            -- { 'neovim/nvim-lspconfig' },
            -- Autocompletion
            -- { 'hrsh7th/nvim-cmp' },
            -- { 'hrsh7th/cmp-nvim-lsp' },
            -- { 'L3MON4D3/LuaSnip' },
        }
    }
    --
    use "terrortylor/nvim-comment"
   	use 'tpope/vim-fugitive'
    use "nvim-tree/nvim-tree.lua"
    use "nvim-tree/nvim-web-devicons"

	use{ 'neoclide/coc.nvim', branch='release' }


end)
