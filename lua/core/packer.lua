require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	use {
		'kyazdani42/nvim-tree.lua',
		requires = {
			'kyazdani42/nvim-web-devicons',
		},
	}
	use {'neoclide/coc.nvim', branch = 'release'}
	use 'junegunn/rainbow_parentheses.vim'
end)