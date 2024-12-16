function open_which_key_in_visual_mode()
  vim.cmd = 'normal! gv'
  local visualmode = vim.fn.visualmode()

  if visualmode == 'V' then
    local start_line = vim.fn.line('v')
    local end_line = vim.fn.line('.')

    vim.cmd(string.format('call VSCodeNotifyRange("whichkey.show", %d, %d, 1)', start_line, end_line))
  else
    local start_pos = vim.fn.getpos('v')
    local _, csrow, cscol, _ = unpack(start_pos)
    local end_pos = vim.fn.getpos('.')
    local _, cerow, cecol, _ = unpack(end_pos)

    vim.cmd('call VSCodeNotifyRangePos("whichkey.show", %d, %d, %d, %d, 1)', csrow, cscol, cerow, cecol)
  end
end

vim.cmd [[command! OpenWhichKeyInVisualMode :lua open_which_key_in_visual_mode()]]

function vimwiki_create_new_task()
  local ext = vim.fn.expand('%:e')

  if ext == 'md' then
    print(ext)
    local file_name = vim.fn.expand('%:p')
    local line_number = vim.fn.line('.')

    local result = vim.fn.system(string.format('vimwiki-task %s --line-number %s --override false', file_name,
      line_number))
    print(result)
  end
end

vim.cmd [[command! VimwikiCreateNewTask :lua vimwiki_create_new_task()]]

function open_new_terminal_window_to_current_dir()
  local current_dir = vim.fn.expand('%:p:h')
  local result = vim.fn.system(string.format('new %s', current_dir));
  print(result)
end

vim.cmd [[command! OpenNewTerminalWindowToCurrentDir :lua open_new_terminal_window_to_current_dir()]]

function run_script_by_extension()
  local ext = vim.fn.expand("%:e")
  if ext == "rb" then
    vim.cmd ':w'
    vim.cmd ':! ruby %'
    return
  elseif ext == "sh" then
    vim.cmd ':w'
    vim.cmd ':! sh %'
    return
  elseif ext == "py" then
    vim.cmd ':w'
    vim.cmd ':! python3 %'
    return
  elseif ext == "php" then
    vim.cmd ':w'
    vim.cmd ':! php %'
    return
  elseif ext == "ts" then
    vim.cmd ':w'
    vim.cmd ':! ts-node %'
    return
  elseif ext == "js" then
    vim.cmd ':w'
    vim.cmd ':! node %'
    return
  elseif ext == "cs" then
    vim.cmd ':w'
    vim.cmd ':! dotnet run %'
    return
  end
end

vim.cmd [[command! RunScriptByExtension :lua run_script_by_extension()]]

function feedkeys(mode, key)
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), mode, true)
end
