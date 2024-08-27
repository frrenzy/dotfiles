local M = {}

M.get_response = function(cmd)
  local handle = io.popen(cmd)
  local output = ""
  if handle then
    output = handle:read "*a"
    handle:close()
  end
  return output:gsub("[\n\r]", " ")
end

return M
