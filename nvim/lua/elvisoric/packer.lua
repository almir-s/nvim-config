-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- Defaults everyone can agree on
	use 'tpope/vim-sensible'

	-- Vim plugin for Git
	use 'tpope/vim-fugitive'
	
	-- Comment and uncomment your code. e.g. gcc, gc{motion}
	use 'tomtom/tcomment_vim'

	-- Indicate added, modified and removed lines managed by a VCS
	-- use 'mhinz/vim-signify'
	use 'airblade/vim-gitgutter'

	-- Delete all the buffers except the current buffer.
	-- :BufOnly(Bonly, BOnly), :BufOnly mybuffer
	use 'schickling/vim-bufonly'

	-- All about "surroundings": parentheses, brackets, quotes, XML tags, and more.
	-- e.q. cs"' cst" ds"
	use 'tpope/vim-surround'

	-- Multicursor - next: <C-n>, skip next: <C-x>, remove current: <C-p> 
	use 'terryma/vim-multiple-cursors'

	use 'ap/vim-buftabline'

	-- Lean & mean status/tabline
	-- use 'vim-airline/vim-airline'
	-- use 'vim-airline/vim-airline-themes'
	use {'ojroques/nvim-hardline'}

	-- file explorer
	use 'nvim-tree/nvim-web-devicons'
	use 'nvim-tree/nvim-tree.lua'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use({
		'rose-pine/neovim',
		as = 'rose-pine',
		config = function()
			vim.cmd('colorscheme rose-pine')
		end
	})
	use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate'})
	use{ 'neoclide/coc.nvim', branch='release' }

end)
