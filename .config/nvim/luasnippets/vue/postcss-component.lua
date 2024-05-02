local ls = require "luasnip"
local s = ls.s
local t = ls.t

local u = require "utils.snippets"

return {
  s({ trig = "post", name = "vue3-ts-setup-postcss" }, {
    t {
      "<template>",
      "",
    },
    u.exitNode(),
    t {
      "",
      "</template>",
      "",
      '<script setup lang="ts">',
      "",
      "</script>",
      "",
      '<style scoped lang="postcss">',
      "",
      "</style>",
    },
  }),
}
