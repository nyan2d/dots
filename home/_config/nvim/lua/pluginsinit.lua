local cmd = vim.cmd
local opt = vim.opt

-- Color scheme
opt.termguicolors = true
vim.g.substrata_variant = "brighter"
cmd'colorscheme substrata'

-- transparent bg
cmd'hi Normal guibg=NONE ctermbg=NONE'
cmd'hi NormalNC guibg=NONE ctermbg=NONE'
cmd'hi SignColumn guibg=NONE ctermbg=NONE'
cmd'hi NvimTreeNormal guibg=NONE ctermbg=NONE'

-- Outers
require('plugins/treesitter')
require('plugins/cmp')
require('plugins/nvim-tree')

-- Oneliners
require('bufferline').setup()
require('lsp_signature').setup()
require('telescope').setup()
require('lualine').setup()
