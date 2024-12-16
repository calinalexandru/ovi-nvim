vim.cmd.colorscheme('OceanicNext')
vim.g.airline_theme='oceanicnext'

vim.g.monokai_term_italic = 0
vim.g.monokai_gui_italic = 0

vim.cmd 'set t_Co=256'
vim.opt.termguicolors = true
vim.opt.syntax = 'enable'

-- vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
-- vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
--
vim.api.nvim_set_hl(0, 'Normal', { bg = 'none', ctermbg = 'none' })
vim.api.nvim_set_hl(0, 'LineNr', { bg = 'none', ctermbg = 'none' })
vim.api.nvim_set_hl(0, 'SignColumn', { bg = 'none', ctermbg = 'none' })
vim.api.nvim_set_hl(0, 'EndOfBuffer', { bg = 'none', ctermbg = 'none' })
