local keymap = vim.keymap

-- // FIXME: see whth the command is not executed if I place the keymap in this file !!!!
keymap.set('n', '<Leader>a', ':call Calc() <CR>', { noremap = true })
