local opt = vim.opt -- for conciseness

-- line numbers
opt.relativenumber = true -- show relative line numbers
opt.number = true -- shows absolute line number on cursor line (when relative number is on)

-- tabs & indentation
opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

-- line wrapping
opt.wrap = false -- disable line wrapping

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

-- cursor line
opt.cursorline = true -- highlight the current cursor line

-- appearance

-- turn on termguicolors for nightfly colorscheme to work
-- (have to use iterm2 or any other true color terminal)
opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- disable mouse
opt.mouse = ""

opt.smartindent = true

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- speed up scrolling viewport
vim.keymap.set('n', '<C-e>', '5<C-e>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-y>', '5<C-y>', { noremap = true, silent = true })

-- esc cancels search highlight
vim.keymap.set('n', '<esc>', ':noh<CR><esc>', { noremap = true, silent = true })

-- easy find and replace
vim.keymap.set('n', '<leader>r', [[:%s/<C-r>//<C-r>=input("Replace with: ")<CR>/gc<Left><Left><Left>]],{ noremap = true, silent = false, desc = 'Find & replace' })

-- Go to the next buffer
vim.api.nvim_set_keymap('n', '<C-n>', ':bnext<CR>', { noremap = true, silent = true })
-- Go to the previous buffer
vim.api.nvim_set_keymap('n', '<C-p>', ':bprev<CR>', { noremap = true, silent = true })
-- Delete the current buffer
vim.api.nvim_set_keymap('n', '<leader>bd', ':bdelete<CR>', { noremap = true, silent = true })
