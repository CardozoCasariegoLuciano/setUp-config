--Instalar packer si no lo tengo
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

--Carga de plugins
return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- My plugins here

  --Themes
  use "folke/tokyonight.nvim"

 -- lua-line theme
  use "nvim-lualine/lualine.nvim"

  --Navigation
  use "nvim-tree/nvim-tree.lua"
  use "nvim-tree/nvim-web-devicons"
  use "christoomey/vim-tmux-navigator"

  --treesitter
  use "nvim-treesitter/nvim-treesitter"

  --Telescope
  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.1',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

--LSP languajes server protocol
	use({
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	})

  -- autopairs
  use "windwp/nvim-autopairs"
  use "windwp/nvim-ts-autotag"


  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
