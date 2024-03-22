function StatuslineMode()
  local mode = vim.fn.mode()
  if mode == "n" then
     return "NORMAL"
  elseif mode == "v" then
     return "VISUAL"
  elseif mode == "V" then
     return "V-LINE"
  elseif mode == "^V" then
     return "V-BLOCK"
  elseif mode == "i" then
     return "INSERT"
  elseif mode == "R" then
     return "REPLACE"
  elseif mode == "s" then
     return "SELECT"
  elseif mode == "t" then
     return "TERMINAL"
  elseif mode == "c" then
     return "COMMAND"
  elseif mode == "!" then
     return "SHELL"
  end
end

vim.opt.laststatus = 2
vim.opt.statusline = '%{luaeval(\'StatuslineMode()\')} | %f%m%= %y | %P | %l:%c'