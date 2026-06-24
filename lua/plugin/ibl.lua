-- lua/plugin/copilot.lua
local M = {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  opts = {
    indent = { char = "│" },
    scope = { enabled = true },
  },
} 

function M.config()
  require("ibl").setup({
    filetypes = {
      ["*"] = true,
    },
    enabled = true,
  })
end

return M

