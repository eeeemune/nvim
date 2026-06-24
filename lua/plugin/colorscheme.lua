local M = {
  "catppuccin/nvim",
  name = "catppuccin",
  lazy = false,
  priority = 1000,
}

function M.config()
  require("catppuccin").setup({
    flavour = "mocha",
    transparent_background = true,

    custom_highlights = function(colors)
      return {
        Normal        = { bg = "#000000", fg = colors.text },
        NormalNC      = { bg = "#000000", fg = colors.text },
        SignColumn    = { bg = "#000000" },
        NormalFloat   = { bg = "#000000" },
        Pmenu         = { bg = "#000000" },
        PmenuSel      = { bg = colors.surface1 },

        -- Yellow selection
        Visual        = { bg = "#ffff00", fg = colors.base },

        -- Yellow current line number
        CursorLineNr  = { fg = "#ffff00", bg = "#000000", bold = true },

        -- Pink search highlights (all matches)
        Search        = { bg = "#ff69b4", fg = "#000000" },
        IncSearch     = { bg = "#ff69b4", fg = "#000000" },
      }
    end,
  })

  vim.cmd.colorscheme("catppuccin-mocha")

  vim.api.nvim_set_hl(0, "Search",    { bg = "#ff69b4", fg = "#000000", reverse = false })
  vim.api.nvim_set_hl(0, "IncSearch", { bg = "#ff69b4", fg = "#000000", reverse = false })

  vim.api.nvim_set_hl(0, "CurSearch", { bg = "#ffff00", fg = "#000000", bold = true })
  vim.api.nvim_set_hl(0, "HlSearch",  { bg = "#ffff00", fg = "#000000", bold = true })
end

return M

