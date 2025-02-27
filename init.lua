-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.g.have_nerd_font = true

-- [[ Setting options ]]
require 'options'

-- [[ Basic Keymaps ]]
require 'keymaps'

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    "tpope/vim-commentary",
    "tpope/vim-sleuth",
    "tpope/vim-surround",
    "junegunn/vim-easy-align",
    {
      'folke/todo-comments.nvim',
      event = 'VimEnter',
      dependencies = { 'nvim-lua/plenary.nvim' },
      opts = { signs = false },
    },
    {
      'echasnovski/mini.splitjoin',
      version = '*',
      config = function ()
        require('mini.splitjoin').setup({
          mappings = {
            split = 'gj',
            join = 'g,',
          },
        })
      end
    },
    -- import your plugins config
    { import = "plugins" },
  },
  -- automatically check for plugin updates
  checker = { enabled = true },
})
