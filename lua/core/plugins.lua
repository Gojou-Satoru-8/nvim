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
  
  return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    -- My plugins here
    -- use 'foo1/bar1.nvim'
    -- use 'foo2/bar2.nvim'
    -- Themes
    use 'folke/tokyonight.nvim'
    use "EdenEast/nightfox.nvim"
    use 'navarasu/onedark.nvim'
    -- use "olimorris/onedarkpro.nvim"
    use 'marko-cerovac/material.nvim'
    use 'rmehri01/onenord.nvim'
    use { "catppuccin/nvim", as = "catppuccin" }
   
    use 'nvim-tree/nvim-tree.lua'
    use 'nvim-tree/nvim-web-devicons'
    use 'nvim-lualine/lualine.nvim'
    use {
          'nvim-treesitter/nvim-treesitter',
          requires = {
          'nvim-treesitter/nvim-treesitter-textobjects',
          'p00f/nvim-ts-rainbow',
          'windwp/nvim-ts-autotag',
          }
        }
    use "lukas-reineke/indent-blankline.nvim"
  
    -- Telescope for finding stuff
    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.5',
        requires = { { 'nvim-lua/plenary.nvim' } }
        }
    -- LSPs
    use {
      "neovim/nvim-lspconfig",
      requires = {
          "williamboman/mason.nvim",
          "williamboman/mason-lspconfig.nvim",
          -- useful status updates for LSP
          "j-hui/fidget.nvim"
          },
        }
    -- Autocompletion
    use {
        "hrsh7th/nvim-cmp",
        requires = { "hrsh7th/cmp-nvim-lsp", "L3MON4D3/LuaSnip", "saadparwaiz1/cmp_luasnip", "rafamadriz/friendly-snippets"},
      }
    -- bracket pair completion
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
      }
    -- Comment engine
    use 'numToStr/Comment.nvim'
    -- Color highlighter
    use 'norcalli/nvim-colorizer.lua'
    -- Scroll plugins
    use("petertriho/nvim-scrollbar")
    use 'karb94/neoscroll.nvim'
    use 'gen740/SmoothCursor.nvim'
    use 'ggandor/leap.nvim'
   -- Greeting Screen
    -- use {
    --   'glepnir/dashboard-nvim',
    --   event = 'VimEnter',
    --   requires = {'nvim-tree/nvim-web-devicons'}
    -- }
  
    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
      require('packer').sync()
    end
  end)
  
  