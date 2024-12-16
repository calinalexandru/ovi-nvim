vim.g.vimwiki_key_mappings = {
    all_maps = 1,
    global = 1,
    headers = 1,
    text_objs = 1,
    table_format = 1,
    table_mappings = 1,
    lists = 1,
    links = 1,
    html = 1,
    mouse = 1,
}

vim.g.vimwiki_filetypes = { 'markdown' }

vim.g.vimwiki_list = { {
    auto_export = 1,
    auto_header = 1,
    automatic_nested_syntaxes = 1,
    path_html = '$HOME/vimwiki/html',
    path = '$HOME/vimwiki/src',
    template_path = '$HOME/vimwiki/templates/',
    template_default = 'GitHub',
    template_ext = '.html5',
    syntax = 'markdown',
    ext = '.md',
    custom_wiki2html = '$HOME/vimwiki/wiki2html.sh',
    autotags = 1,
    list_margin = 0,
    links_space_char = '_',
} }

vim.cmd [[au BufRead,BufNewFile *.md set filetype=vimwiki]]

-- " autocmd FileType vimwiki call SetMarkdownOptions()
-- "   function! SetMarkdownOptions()
-- "     call VimwikiSet('syntax', 'markdown')
-- "     call VimwikiSet('custom_wiki2html', 'wiki2html.sh')
-- " endfunction

-- vim.g.vimwiki_auto_header = 0
-- vim.g.vimwiki_markdown_header_style = 1
-- vim.g.vimwiki_tags_header_level = 1
-- vim.g.vimwiki_tags_header = 'Generated Tags'
-- vim.g.vimwiki_links_header_level = 1
-- vim.g.vimwiki_links_header = 'Generated Links'
-- vim.g.vimwiki_auto_chdir = 0
-- vim.g.vimwiki_map_prefix = '<Leader>w'
-- vim.g.vimwiki_toc_link_format = 0
-- vim.g.vimwiki_toc_header_level = 1
-- vim.g.vimwiki_toc_header = 'Contents'
-- vim.g.vimwiki_autowriteall = 1
-- vim.g.vimwiki_conceal_pre = 0
-- vim.g.vimwiki_conceal_onechar_markers = 1
-- vim.g.vimwiki_conceallevel = 2
-- vim.g.vimwiki_user_htmls = ''
-- vim.g.vimwiki_valid_html_tags = 'b,i,s,u,sub,sup,kbd,br,hr'
-- vim.g.vimwiki_html_header_numbering_sym = ''
-- vim.g.vimwiki_html_header_numbering = 0
-- vim.g.vimwiki_dir_link = ''
-- vim.g.vimwiki_markdown_link_ext = 0
-- vim.g.vimwiki_create_link = 1
-- vim.g.vimwiki_use_calendar = 1
-- vim.g.vimwiki_text_ignore_newline = 1
-- vim.g.vimwiki_list_ignore_newline = 1
-- vim.g.vimwiki_folding = ''
-- vim.g.vimwiki_listsym_rejected = '✗'
-- vim.g.vimwiki_listsyms = '✗○◐●✓'
-- vim.g.vimwiki_global_ext = 1

vim.g.vimwiki_diary_months = {
    ['1'] = 'January',
    ['2'] = 'February',
    ['3'] = 'March',
    ['4'] = 'April',
    ['5'] = 'May',
    ['6'] = 'June',
    ['7'] = 'July',
    ['8'] = 'August',
    ['9'] = 'September',
    ['10'] = 'October',
    ['11'] = 'November',
    ['12'] = 'December',
}

vim.cmd [[autocmd FileType vimwiki setlocal syntax=markdown]]
vim.cmd [[autocmd FileType vimwiki setlocal nofoldenable]]
vim.g.vimwiki_folding = 'syntax'
vim.cmd [[set nofoldenable]]
