local g = vim.g
local o = vim.o
local opt = vim.opt

o.termguicolors = true

-- display a confirm when closing unsaved
o.confirm = true

-- decrease update time
o.timeoutlen = 500
o.updatetime = 200

-- number of lines to keep surrounding cursor
o.scrolloff = 8

-- improve editor UI
o.number = true
o.numberwidth = 6
o.relativenumber = true
o.signcolumn = "yes"
o.cursorline = true

-- tabbing and indenting
o.expandtab = true
o.smarttab = true
o.tabstop = 2
o.softtabstop = 2
o.shiftwidth = 4
o.cindent = true
o.autoindent = true

-- folding
o.foldmethod = "indent"
o.foldnestmax = 3
o.nofoldenable = true

-- wrapper
o.wrap = true
o.textwidth = 300

-- decorators
o.list = true
o.listchars = "trail:·,nbsp:◇,tab:→ ,extends:▸,precedes:◂"

-- Makes neovim and host OS clipboard play nicely with each other
o.clipboard = "unnamedplus"

-- Case insensitive searching UNLESS /C or capital in search
o.hlsearch = true
o.incsearch = true
o.ignorecase = true
o.smartcase = true

-- Undo and backup options
o.backup = false
o.writebackup = false
o.undofile = true
o.swapfile = false

-- Remember 50 items in commandline history
o.history = 50

-- Better buffer splitting
o.splitright = true
o.splitbelow = true

opt.mouse = "a"

-- Map <leader> to space
g.mapleader = " "
g.maplocalleader = " "
