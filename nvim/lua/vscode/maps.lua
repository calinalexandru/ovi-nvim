local keymap = vim.keymap
local constants = require('constants');

-- Keymap
keymap.set('n', '<Leader>f', ':call VSCodeNotify("revealInExplorer") <CR>', { noremap = true })
keymap.set('n', '<Leader>t', ':call VSCodeNotify("workbench.action.tasks.test") <CR>', { noremap = true })
keymap.set('n', '<Leader>b', ':call VSCodeNotify("bookmarks.listFromAllFiles") <CR>', { noremap = true })
keymap.set('n', '<Leader>r', ':call VSCodeNotify("workbench.action.terminal.runActiveFile") <CR>', { noremap = true })
keymap.set('n', '<Leader>c', ':call VSCodeNotify("workbench.action.toggleAuxiliaryBar") <CR>', { noremap = true })
keymap.set('n', '<Leader>z', ':call VSCodeNotify("extension.pxToremAndRemToPx") <CR>', { noremap = true })

keymap.set('n', '<Leader><Leader>r', ':call VSCodeNotify("code-runner.run") <CR>', { noremap = true })

keymap.set('n', '<Space>', ':call VSCodeNotify("whichkey.show") <CR>', { noremap = true, silent = true })
keymap.set('x', '<Space>', ':<C-u>lua open_which_key_in_visual_mode() <CR>', { noremap = true, silent = true })

keymap.set({ 'n', 'x' }, '<C-j>', ':call VSCodeNotify("workbench.action.navigateDown") <CR>',
    { noremap = true, silent = true })
keymap.set({ 'n', 'x' }, '<C-k>', ':call VSCodeNotify("workbench.action.navigateUp") <CR>',
    { noremap = true, silent = true })
keymap.set({ 'n', 'x' }, '<C-h>', ':call VSCodeNotify("workbench.action.navigateLeft") <CR>',
    { noremap = true, silent = true })
keymap.set({ 'n', 'x' }, '<C-l>', ':call VSCodeNotify("workbench.action.navigateRight") <CR>',
    { noremap = true, silent = true })

keymap.set('n', '<Leader>w', ':call VSCodeNotify("workbench.action.splitEditor") <CR>', { noremap = true, silent = true })
keymap.set('n', '<Leader>e', ':call VSCodeNotify("workbench.action.toggleSidebarVisibility") <CR>',
    { noremap = true, silent = true })

keymap.set('n', 'gi', ':call VSCodeNotify("editor.action.goToImplementation") <CR>', { noremap = true, silent = true })
keymap.set('n', 'gr', ':call VSCodeNotify("editor.action.goToReferences") <CR>', { noremap = true, silent = true })
keymap.set('n', 'gk', ':call VSCodeNotify("editor.action.showHover") <CR>', { noremap = true, silent = true })
keymap.set('n', '<Leader>gr', ':call VSCodeNotify("editor.action.rename") <CR>', { noremap = true, silent = true })

keymap.set({ 'x', 'n', 'o' }, 'gc', '<Plug>VSCodeCommentary')
keymap.set('n', 'gcc', '<Plug>VSCodeCommentaryLine')

keymap.set('x', '<D-/>', 'gc')
keymap.set('n', '<D-/>', 'gcc')

keymap.set('n', '<Tab>', ':Tabnext<CR>')
keymap.set('n', '<S-Tab>', ':Tabprev<CR>')

if constants.ENABLE_FIND_NEXT_CENTER_SCREEN then
    -- Install extension center editor window plugin
    keymap.set('n', 'n', function()
        feedkeys('n', 'n');
        vim.fn.VSCodeNotify('center-editor-window.center')
    end)

    keymap.set('n', '', function()
        feedkeys('n', 'N');
        vim.fn.VSCodeNotify('center-editor-window.center')
    end)
end
