local ls = require "luasnip"
local s = ls.s
local t = ls.t
local i = ls.i

local u = require "utils.snippets"

return {
  s({ trig = "Story", name = "Add story" }, {
    t "export const ",
    i(1),
    t { " = Template.bind({});", "" },
    u.sameNode(1),
    t { ".args = {", "  " },
    u.camelNode(1),
    t ": ",
    i(2),
    t { ",", "};", "" },
  }),
}
