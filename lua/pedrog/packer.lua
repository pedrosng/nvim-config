-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.4',
-- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'}, {'nvim-lua/popup.nvim'} }
  }

  use({ 
    'rose-pine/neovim',
    as = 'rose-pine',
    config = function()
      vim.cmd('colorscheme rose-pine')
    end
  })

  --syntax highlight
  use ( 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'} )
  use ('nvim-treesitter/playground')
  -- file navigator
  use ('theprimeagen/harpoon')
  -- version control
  use ('mbbill/undotree')
  use ('tpope/vim-fugitive')

  -- language server
  use 'neovim/nvim-lspconfig'
  use 'williamboman/mason-lspconfig.nvim'
  use 'williamboman/mason.nvim'

  --java language
  use 'mfussenegger/nvim-jdtls'
  -- completition
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'saadparwaiz1/cmp_luasnip'
  use 'hrsh7th/cmp-nvim-lsp'

  -- toogleterm
  use 'akinsho/toggleterm.nvim'
  
end)
