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
	use {'sonph/onehalf', rtp = 'vim'}
	use 'itchyny/lightline.vim'
	use 'github/copilot.vim'
	use 'APZelos/blamer.nvim'
	use {'akinsho/toggleterm.nvim', tag = 'v1.*'}
end)
