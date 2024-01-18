-- General settings
vim.o.number = true

-- Global variables
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.backspace = "2"
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true

-- use spaces for tabs and whatnot
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftround= true
vim.opt.expandtab = true

-- for using system clipboard
vim.o.clipboard = "unnamedplus"

vim.keymap.set('n', '<leader>h', ':nonlsearch<CR>')
