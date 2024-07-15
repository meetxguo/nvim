local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy-nvim")
require("options")
require("plugins/dracula")
require("plugins/lualine")
require("plugins/treesitter")
require("plugins/lspconfig")
require("plugins/cmp")
require("plugins/indent-blankline")
require("plugins/tree")
require("keymaps")

