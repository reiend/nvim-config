local util = require "lspconfig".util

return {
  cmd = {
    "clangd",
     "--all-scopes-completion",
     "--suggest-missing-includes",
     "--background-index",
     "--pch-storage=disk",
     "--cross-file-rename",
     "--log=info",
     "--completion-style=detailed",
     "--enable-config", -- clangd 11+ supports reading from .clangd configuration file
     "--clang-tidy",
     "--clang-tidy-checks=-*,llvm-*,clang-analyzer-*,modernize-*,-modernize-use-trailing-return-type",
     "--fallback-style=Google",
     "--header-insertion=never",
     "--query-driver=C:\\ProgramData\\chocolatey\\bin\\g++.exe",
  },
  filetypes = { "c", "cpp", "objc", "objcpp" },
  root_dir = util.root_pattern(
    '.clangd',
    '.clang-tidy',
    '.clang-format',
    'compile_commands.json',
    'compile_flags.txt',
    'configure.ac',
    '.git'
  )
}
