require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	use {
		'kyazdani42/nvim-tree.lua',
		requires = {
			'kyazdani42/nvim-web-devicons',
		},
	}
	use {'neoclide/coc.nvim', branch = 'release'}
	use {'sonph/onehalf', rtp = 'vim'}
	use {'olimorris/onedarkpro.nvim'}
	use 'itchyny/lightline.vim'
	use 'github/copilot.vim'
	use 'APZelos/blamer.nvim'
	use {'akinsho/toggleterm.nvim', tag = 'v1.*'}
	use {'nvim-treesitter/nvim-treesitter'}
	use {'lukas-reineke/indent-blankline.nvim'}
	use {
		'nvim-telescope/telescope.nvim',
		requires = {
			'nvim-lua/plenary.nvim',
		},
	}
	use {'numToStr/Comment.nvim'}
end)
