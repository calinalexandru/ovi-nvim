vim.opt.cursorline = true
vim.opttermguicolors = true
vim.opt.winblend = 0
vim.opt.wildoptions = 'pum'
vim.opt.pumblend = 5
vim.opt.background = 'dark'

vim.opt.relativenumber = true

-- Convert this with lua api
vim.cmd [[highligh CursorLine cterm=none gui=none]]
vim.cmd [[highligh MatchParen guibg=#323844]]