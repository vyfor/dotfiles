local global_opts = {
  -- Leader
  mapleader = ' ',
  maplocalleader = ' ',

  -- Netrw hack
  loaded_netrw = 1,
  loaded_netrwPlugin = 1,
}

local opts = {
  -- Editor
  completeopt = 'menuone,noselect',
  conceallevel = 0,
  fileencoding = 'utf-8',
  lazyredraw = false,
  swapfile = false,
  undofile = true,
  updatetime = 250,

  -- Indentation
  autoindent = true,
  breakindent = true,
  cindent = true,
  expandtab = true,
  shiftround = true,
  shiftwidth = 2,
  smartindent = true,
  smarttab = true,
  softtabstop = 2,
  tabstop = 2,

  -- Search
  hlsearch = false,
  ignorecase = true,
  incsearch = true,
  smartcase = true,

  -- Shell
  shell = 'nu',
  shellcmdflag = '-c',
  shellquote = '',
  shellredir = '| save %s',
  shellxquote = '',

  -- Terminal
  termguicolors = true,

  -- UI
  number = true,
  relativenumber = true,
  signcolumn = 'yes',
  scrolloff = 5,
}

-- Enable Vim loader
vim.loader.enable()

for k, v in pairs(global_opts) do
	vim.g[k] = v
end

for k, v in pairs(opts) do
	vim.opt[k] = v
end
