local plugins = {
  {
    "ellisonleao/gruvbox.nvim",
    lazy = false,

  },
  
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }
  },

  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
  },

  { "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {}
  },

  -- LSP
  {'neovim/nvim-lspconfig'},

  -- Autocompletion
  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      'hrsh7th/cmp-nvim-lsp',
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-buffer',
    },
  },

  {
    'windwp/nvim-autopairs', 
    event = "InsertEnter", 
    opts = {} -- this is equalent to setup({}) function
  }

}
local opts = {
  install = {
    -- install missing plugins on startup. This doesn't increase startup time.
    missing = true,
    -- try to load one of these colorschemes when starting an installation during startup
    colorscheme = { "gruvbox" },
  }
}

require("lazy").setup(plugins, opts)
