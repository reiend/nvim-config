local util = require "lspconfig".util

return {
  cmd = {
    "solargraph.bat",
    "stdio",
  },
  filetypes = { "ruby", "erb" },
  init_options = {
    formatting = true,
  },
  root_dir = util.root_pattern("Gemfile", ".git"),
  settings = {
    solargraph = {
      diagnostics = true
    }
  }
}
