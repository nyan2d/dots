local cmd = vim.cmd
local opt = vim.opt

-- Color scheme
opt.termguicolors = true
vim.o.background = "dark"
vim.g.vscode_transparent = 1
vim.g.vscode_disable_nvimtree_bg = true
cmd'colorscheme vscode'

-- Outers
require('plugins/treesitter')
require('plugins/cmp')
require('plugins/nvim-tree')

-- Oneliners
require('bufferline').setup()
require('lsp_signature').setup()
require('telescope').setup()
require('lualine').setup()
