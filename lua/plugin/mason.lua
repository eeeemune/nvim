local M = {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    "nvim-lua/plenary.nvim",
    "VonHeikemen/lsp-zero.nvim",
  },
}

M.servers = {
  "lua_ls",
  "clangd",
  "rust_analyzer",
}

function M.config()
  local lsp_zero = require("lsp-zero")

  -- v3 style
  lsp_zero.extend_lspconfig()

  lsp_zero.set_preferences({
    suggest_lsp_servers = false,
    sign_icons = {
      error = "E",
      warn  = "W",
      hint  = "H",
      info  = "I",
    },
  })

  require("mason").setup({})

  require("mason-lspconfig").setup({
    ensure_installed = M.servers,
    automatic_installation = true,
    handlers = {
      -- default handler for all servers
      function(server_name)
        lsp_zero.default_setup(server_name)
        -- If you want to configure specific servers:
        -- local lspconfig = require("lspconfig")
        -- if server_name == "lua_ls" then
        --   lspconfig.lua_ls.setup({ ... })
        -- end
      end,
    },
  })

  -- Extra diagnostics config (optional)
  vim.diagnostic.config({
    virtual_text = true,
  })
end

return M

