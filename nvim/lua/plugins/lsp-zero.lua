local keymap = vim.keymap
local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed({
    'tsserver',
    'eslint',
    'sumneko_lua',
    'rust_analyzer',
})

local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    ['<C-Space>'] = cmp.mapping.complete(),
})

lsp.set_preferences({
    sign_icons = {}
})

lsp.setup_nvim_cmp({
    mapping = cmp_mappings
})

lsp.on_attach(function(client, bufnr)
    local opts = { buffer = bufnr, remap = false }
    keymap.set('n', 'gd', function() vim.lsp.buf.definition() end, opts)
    keymap.set('n', 'gk', function() vim.lsp.buf.hover() end, opts)
    keymap.set('n', '<leader>vws', function() vim.lsp.buf.workspace_symbol() end, opts)
    keymap.set('n', '<leader>vd', function() vim.diagnostic.open_float() end, opts)
    keymap.set('n', '[d', function() vim.diagnostic.goto_next() end, opts)
    keymap.set('n', ']d', function() vim.diagnostic.goto_prev() end, opts)
    keymap.set('n', '<leader>vca', function() vim.lsp.buf.code_action() end, opts)
    keymap.set('n', '<leader>vrr', function() vim.lsp.buf.references() end, opts)
    keymap.set('n', '<leader>vrn', function() vim.lsp.buf.rename() end, opts)
    keymap.set('i', '<C-h>', function() vim.lsp.buf.signature_help() end, opts)
    
    -- Disable the <S-k> overriding
    keymap.set('', '<S-k>', '5k', opts)
end)

lsp.setup()
