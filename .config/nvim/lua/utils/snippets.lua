local ls = require "luasnip"
local f = ls.f
local i = ls.i

local M = {}

M.sameFn = function(args)
  return args[1]
end
M.sameNode = function(index)
  return f(M.sameFn, { index })
end

M.camelFn = function(args)
  local str = args[1][1] or ""
  local result = #str >= 2 and str:sub(1, 1):lower() .. str:sub(2) or str:upper()
  return result
end
M.camelNode = function(index)
  return f(M.camelFn, { index })
end

M.exitNode = function()
  return i(0)
end

return M
