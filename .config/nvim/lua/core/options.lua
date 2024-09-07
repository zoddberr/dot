local opt = vim.opt
local g = vim.g

g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

-- line number
opt.relativenumber = true
opt.number = true


-- tabs and indent
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- line wrap
opt.wrap = true -- disabling it
opt.linebreak = true


-- appearance
opt.termguicolors = true
opt.background = "dark"

-- clipboard
opt.clipboard:append("unnamedplus")
