return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'sbdchd/neoformat'
	use 'neovim/nvim-lspconfig'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/nvim-cmp' 
	use({
		"L3MON4D3/LuaSnip",
		-- follow latest release.
		tag = "v<CurrentMajor>.*",
		-- install jsregexp (optional!:).
		run = "make install_jsregexp"
	})
	use 'saadparwaiz1/cmp_luasnip'

end)