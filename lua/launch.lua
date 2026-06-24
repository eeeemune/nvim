LAZY_PLUGIN_SPEC = {
   --   {
   --     "github/copilot.vim",
   --     event = "InsertEnter",
   --   },
}

function spec(item)
  table.insert(LAZY_PLUGIN_SPEC, { import = item })
end
