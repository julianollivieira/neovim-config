require('packer').startup(function()
	use 'wbthomason/packer.nvim'					-- Plugin manager
	use 'kyazdani42/nvim-web-devicons'				-- Icons
	use 'nvim-lua/plenary.nvim'					-- Utility library
	use { 'nvim-lua/telescope.nvim', tag = '0.1.0' }		-- Finding stuff
	use  "nvim-telescope/telescope-file-browser.nvim" 		-- File browsing
	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }	-- Syntax highlighting
	use 'nvim-treesitter/nvim-treesitter-context'			-- Context line
 	use { 'shaunsingh/oxocarbon.nvim', run = './install.sh' }	-- Color scheme
	use 'https://gitlab.com/yorickpeterse/nvim-window.git'		-- Easy window switching
	use 'nvim-lualine/lualine.nvim'					-- Status line
	use 'neovim/nvim-lspconfig' 					-- Configurations for LSP
	use { 'ms-jpq/coq_nvim', branch = 'coq', run = ":COQdeps" }	-- Autocompletion for LSP
	use { 'ms-jpq/coq.artifacts', branch = 'artifacts' }	 	-- 9000+ artifacts/snippets for coq
end)
