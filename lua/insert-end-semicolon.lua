local M = {}

function M.insertEndSemicolon()
  -- カーソルの現在位置を取得する
  local pos = vim.fn.getpos(".")
  if vim.fn.getline(".")[-1] ~= ";"  then
    vim.cmd(":normal A;")
    vim.fn.setpos(".", pos)
  end
end

return M
