return {
  { "marilari88/neotest-vitest" },
  {
    "nvim-neotest/neotest",
    opts = {
      adapters = {
        ["neotest-vitest"] = {

          vitestConfigFile = "./build/vite.unitTest.ts",
        },
      },
    },
  },
}
