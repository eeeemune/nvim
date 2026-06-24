-- lua/plugin/copilot.lua
local M = {
  "zbirenbaum/copilot.lua",
  -- "github/copilot.vim",
  cmd = "Copilot",
  event = "InsertEnter",
}

function M.config()
  require("copilot").setup({
    filetypes = {
      ["*"] = true,
      -- ["markdown"] = false,
    },
    suggestion = {
      enabled = true,
      auto_trigger = true,
      debounce = 75,
      keymap = {
        accept = "<Tab>",
      },
    },
  })
end

return M

