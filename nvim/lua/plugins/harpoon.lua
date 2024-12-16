local keymap = vim.keymap

local mark = require('harpoon.mark')
local ui = require('harpoon.ui')

keymap.set('n', '<leader>a', mark.add_file)
keymap.set('n', '<C-e>', ui.toggle_quick_menu)

keymap.set('n', '<C-h>', function() ui.nav_files(1) end)
keymap.set('n', '<C-t>', function() ui.nav_files(2) end)
keymap.set('n', '<C-n>', function() ui.nav_files(3) end)
keymap.set('n', '<C-s>', function() ui.nav_files(4) end)
