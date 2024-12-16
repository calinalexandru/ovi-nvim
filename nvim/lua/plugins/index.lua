local status, packer = pcall(require, 'packer')
if (not status) then
    print('Packer is not installed')
    return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
    use 'wbthomason/packer.nvim'

    use 'tpope/vim-commentary'
    use 'tpope/vim-repeat'
    use 'tpope/vim-surround'
    use 'unblevable/quick-scope'
    use 'suy/vim-context-commentstring'
    use 'machakann/vim-highlightedyank'
    use 'theniceboy/vim-calc'

    -- Plugins when useing VSCode
    if vim.g.vscode then
        use { 'asvetliakov/vim-easymotion', as = 'vsc-easymotion' }
        use 'ChristianChiarulli/vscode-easymotion'
    end

    -- Plugins when not using VSCode
    if (not vim.g.vscode) then
        use 'asvetliakov/vim-easymotion'
        use {
            'nvim-telescope/telescope.nvim', tag = '0.1.0',
            requires = { { 'nvim-lua/plenary.nvim' } }
        }

        -- Themes
        --[[
            use({
                'rose-pine/neovim',
                as = 'rose-pine',
                config = function()
                    vim.cmd('colorscheme rose-pine')
                end
            })

            use 'fratajczak/one-monokai-vim'
        ]] --

        --[[
            oceanic-next theme, is required to clone
            pcakge: https://github.com/roflolilolmao/oceanic-next.nvim
            into: ~/.local/share/nvim/site/pack/packer/start
        --]]
        use 'mhartington/oceanic-next'
        -- End of Themes

        -- use {
        --     'nvim-treesitter/nvim-treesitter',
        --     { run = ':TSUpdate' }
        -- }

        -- use 'nvim-treesitter/playground'
        use 'theprimeagen/harpoon'
        use 'mbbill/undotree'
        use 'tpope/vim-fugitive'

        -- use {
        --     'VonHeikemen/lsp-zero.nvim',
        --     requires = {
        --         -- LSP Support
        --         { 'neovim/nvim-lspconfig' },
        --         { 'williamboman/mason.nvim' },
        --         { 'williamboman/mason-lspconfig.nvim' },

        --         -- Autocompletion
        --         { 'hrsh7th/nvim-cmp' },
        --         { 'hrsh7th/cmp-buffer' },
        --         { 'hrsh7th/cmp-path' },
        --         { 'saadparwaiz1/cmp_luasnip' },
        --         { 'hrsh7th/cmp-nvim-lsp' },
        --         { 'hrsh7th/cmp-nvim-lua' },

        --         -- Snippets
        --         { 'L3MON4D3/LuaSnip' },
        --         { 'rafamadriz/friendly-snippets' },
        --     }
        -- }

        -- use 'tools-life/taskwiki'
        use 'vimwiki/vimwiki'
    end
end)


-- Plugins when useing VSCode
if vim.g.vscode then
end

-- Pins when not using VSCojde
if (not vim.g.vscode) then
    require 'plugins.telescope'
    -- require 'plugins.treesitter'
    require 'plugins.harpoon'
    require 'plugins.undotree'
    require 'plugins.vim-fugitive'
    -- require 'plugins.lsp-zero'
    require 'plugins.vimwiki'
    require 'plugins.themes.index'
end

-- Plugin configuration
require 'plugins.easymotion'
require 'plugins.quickscope'
require 'plugins.vim-highlightedyank'
require 'plugins.vim-commentary'
require 'plugins.vim-calc'
