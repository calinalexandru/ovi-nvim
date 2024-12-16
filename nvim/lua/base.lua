vim.cmd 'autocmd!'

vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-u'

-- Linenumbers
vim.wo.number = true
vim.opt.nu = true
vim.opt.relativenumber = true

-- Tabsize
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.smarttab = true
vim.opt.shiftwidth = 2
vim.opt.breakindent = true
vim.opt.expandtab = true

vim.opt.smartindent = false

vim.opt.title = true
vim.opt.autoindent = true
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 2
vim.opt.scrolloff = 10
vim.opt.shell = 'zsh'

vim.opt.backup = false
vim.opt.backupskip = '/tmp/*,/private/tmp/*'
vim.opt.swapfile = false
-- vim.opt.undodir = os.getenv('HOME') .. './.vim/undodir'

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.inccommand = 'split'
vim.opt.ignorecase = true
vim.opt.ai = true            -- Auto indent
vim.opt.si = true            -- Smart indent
vim.opt.wrap = false         -- No wrap lines
vim.opt.backspace = 'start,eol,indent'
vim.opt.path:append { '**' } -- Finding files - Search sown into subfolders
vim.opt.wildignore:append { '*/node_modules/*' }

-- vim.opt.termguicolors = true
-- vim.opt.signcolumn = 'yes'
-- vim.opt.isfname:append('@-@')

-- This will add a vertical bar
-- vim.opt.colorcolumn = '80'

-- Undercurl
-- this will not work in iTerm2
vim.cmd [[let &t_Cs = "\e[4:3m"]]
vim.cmd [[let &t_Ce = "\e[4:0m"]]

-- Turn off pase mode when leaving insert
vim.api.nvim_create_autocmd('InsertLeave', {
    pattern = '*',
    command = 'set nopaste'
})

-- Add asterisks in block comment
vim.opt.formatoptions:append { 'r' }

vim.opt.updatetime = 300 -- 300 default, maybe use smaller value
vim.opt.timeoutlen = 500 -- 800 default
vim.opt.incsearch = true

-- Select the word that contains -
-- vim.opt.iskeyword:append { '-', '$', '#' } -- this is useful in PHP, and SCSS
vim.opt.iskeyword:append { '-' }
-- vim.opt.iskeyword:append { '-' }

-- This is for MacOS
vim.opt.clipboard:append { 'unnamedplus' }
-- This is for Windows
-- vim.opt.clipboard:append { 'unnamed', 'unnamedplus' }



vim.opt.guifont = 'JetBrainsMono Nerd Font'
vim.opt.formatoptions:prepend { 'cro' }

-- Auto refersh the file if have been changed
vim.opt.autoread = true
vim.cmd [[au CursorHold,CursorHoldI * checktime]]

vim.cmd [[set noswapfile]]
