local keymap = vim.keymap;
local constants = require('constants');

-- Leader
vim.g.mapleader = ','

-- Do no yanc with x
keymap.set('n', 'x', '"_x')

keymap.set('n', '<leader>pv', vim.cmd.Ex)

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a work backwords
-- keymap.set('n', 'dw', 'vb"_d')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Navigation
keymap.set('', '<S-j>', '5j')
keymap.set('', '<S-k>', '5k')
keymap.set('', '<S-l>', '5l')
keymap.set('', '<S-h>', '5h')

keymap.set('n', '<Space>', '<Nop>', { noremap = true })

keymap.set('i', '<c-j>', '(\\C-n)', { noremap = true, expr = true })
keymap.set('i', '<c-k>', '(\\C-p)', { noremap = true, expr = true })

-- Paste many times without copy
keymap.set('x', 'p', 'pgvy')
keymap.set('x', 'P', 'Pgvy')

keymap.set('n', '<Leader>o', 'o<Esc>', { noremap = true })
keymap.set('n', '<Leader>O', 'O<Esc>', { noremap = true })

keymap.set('n', '<Leader>F', '$F', { noremap = true })
keymap.set('n', '<Leader>f', '^f', { noremap = true })

keymap.set('n', '<Leader>d', 'dd', { noremap = true })

keymap.set('n', '<C-n>', ':nohl<Esc>', { noremap = true })

keymap.set('n', '<Leader>l', '$', { noremap = true })
keymap.set('n', '<Leader>h', '_', { noremap = true })

keymap.set({ 'n', 'x' }, '<Leader>d', '"ad', { noremap = true })
keymap.set({ 'n', 'x' }, '<Leader>y', '"ay', { noremap = true })
keymap.set({ 'n', 'x' }, '<Leader>P', '"aP', { noremap = true })
keymap.set({ 'n', 'x' }, '<Leader>p', '"ap', { noremap = true })
keymap.set({ 'n', 'x' }, '<Leader>x', '"ax', { noremap = true })
keymap.set({ 'n', 'x' }, '<Leader>a', '"ac', { noremap = true })

-- gv will keep the selection
keymap.set('v', '<', '<gv', { noremap = true })
keymap.set('v', '>', '>gv', { noremap = true })
keymap.set('n', '<D-]>', '>>', { noremap = true })
keymap.set('n', '<D-[>', '<<', { noremap = true })
keymap.set('x', '<D-]>', '>gv')
keymap.set('x', '<D-[>', '<gv')
keymap.set('n', '>', '>>', { noremap = true })
keymap.set('n', '<', '<<', { noremap = true })

keymap.set('n', '<Leader>/', '/\\C', { noremap = true })
keymap.set('', '<Leader>q', '@q<CR>')

-- Paste without new line when copy a block. This can be pasted inside of paraneses
keymap.set('n', 'gp', 'a<CR><Esc>PkJx', { noremap = true, silent = true })
keymap.set('n', 'gP', 'i<CR><Esc>PkJx', { noremap = true, silent = true })

-- function TrimNewines()
--     vim.cmd([[
--         :set paste
--         normal! P
--         :set nopaste
--     ]])
--     -- vim.cmd([[
--     -- let regcontent = getreg(v:register, 1, 1)
--     -- let regtype = getregtype(v:register)
--     -- if regtype ==# 'v' && regcontent[1:] ==# "\n"
--     --     let regcontent = substitute(regcontent, '\n\+$', '', '')
--     -- endif
--     -- set paste
--     -- call setreg(v:register, regcontent, regtype)
--     -- normal! ]p
--     -- set nopaste
--     --  ]])
--     -- vim.cmd([[%s/\s\+$//e]])
--     --
-- end

-- keymap.set('n', 'gp', ':lua TrimNewines()<CR>', { noremap = true, silent = true })


-- Move blocks in Visual Mode
-- keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
-- keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

if (not vim.g.vscode) then
    if constants.ENABLE_FIND_NEXT_CENTER_SCREEN then
        -- Add serach in the middle of the screen. This is creating issue with vscode glitch rendering. This is not work in vscode
        keymap.set('n', 'n', 'nzzzv')
        keymap.set('n', 'N', 'Nzzzv')
    end

    -- Vscode will escape with jk
    -- If I add this as global, when I record a macro and exit with jk the VSCode will add and extra j
    keymap.set('i', 'jk', '<Esc>', { noremap = true })
    keymap.set('n', '<leader>wt', ':VimwikiCreateNewTask <CR><CR>', { noremap = true })
    keymap.set('n', '<leader>n', ':OpenNewTerminalWindowToCurrentDir <CR>', { noremap = true })

    keymap.set('', '<leader>r', ':RunScriptByExtension <CR>', { noremap = true })
end
