vim.cmd.colorscheme('one-monokai')

vim.g.monokai_term_italic = 0
vim.g.monokai_gui_italic = 0

vim.cmd 'set t_Co=256'
vim.opt.termguicolors = true

vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
