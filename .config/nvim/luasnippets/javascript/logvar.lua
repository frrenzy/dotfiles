local ls = require "luasnip"
local s = ls.s
local t = ls.t
local i = ls.i

local u = require "utils.snippets"

return {
  s({ trig = "logvar", name = "Log variable with name" }, {
    t "console.log('",
    i(1),
    t "', ",
    u.sameNode(1),
    t ");",
    i(0),
  }),
}
