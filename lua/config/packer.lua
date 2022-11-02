require('packer').startup(function()
	use 'wbthomason/packer.nvim'										-- Plugin manager
	use 'kyazdani42/nvim-web-devicons'									-- Icons
	use 'nvim-lua/plenary.nvim'											-- Utility library
	use { 'nvim-lua/telescope.nvim', tag = '0.1.0' }					-- Finding stuff
	use  "nvim-telescope/telescope-file-browser.nvim"			 		-- File browsing
	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }		-- Syntax highlighting
	use 'nvim-treesitter/nvim-treesitter-context'						-- Context line
	use { 'shaunsingh/oxocarbon.nvim', run = './install.sh' }			-- Color scheme
	use "EdenEast/nightfox.nvim"										-- Color scheme
	use 'https://gitlab.com/yorickpeterse/nvim-window.git'				-- Easy window switching
	use 'nvim-lualine/lualine.nvim'										-- Status line
	use 'neovim/nvim-lspconfig' 										-- Configurations for LSP
	use { 'ms-jpq/coq_nvim', branch = 'coq', run = ":COQdeps" }			-- Autocompletion for LSP
	use { 'ms-jpq/coq.artifacts', branch = 'artifacts' }	 			-- 9000+ artifacts/snippets for coq
	use { 'kartikp10/noctis.nvim', requires = { 'rktjmp/lush.nvim' } }
	use 'windwp/nvim-ts-autotag'										-- Use treesitter to autoclose and autorename html tag
	use 'windwp/nvim-autopairs'											-- Autopairs
	use 'norcalli/nvim-colorizer.lua'									-- Show colors
	use 'numToStr/Comment.nvim'											-- Commenting
	use 'simrat39/rust-tools.nvim'										-- Rust LSP setup
	use 'voldikss/vim-floaterm'											-- Terminal
	use 'folke/todo-comments.nvim'										-- Highlight TODO comments
	use 'RRethy/vim-illuminate'											-- Highlight other uses of the word under the cursor
	use 'jose-elias-alvarez/null-ls.nvim'								-- Null LS
end)
