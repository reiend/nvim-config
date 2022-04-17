local util = require "lspconfig".util

return {
  cmd = { "cmake-language-server" },
  filetypes = { "cmake" },
  init_options = {
    buildDirectory = "build",
  },
  root_dir = util.root_pattern(
    ".git",
    "build",
    "compile_command.json"
  ),
}
