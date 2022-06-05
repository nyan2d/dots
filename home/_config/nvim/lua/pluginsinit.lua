local cmd = vim.cmd
local opt = vim.opt

-- Color scheme
opt.termguicolors = true
vim.g.substrata_variant = "brighter"
cmd'colorscheme substrata'
cmd'hi Normal guibg=NONE ctermbg=NONE'

-- Outers
require('plugins/treesitter')
require('plugins/cmp')
require('plugins/nvim-tree')

-- Oneliners
require('bufferline').setup()
require('lsp_signature').setup()
require('telescope').setup()
require('lualine').setup()
