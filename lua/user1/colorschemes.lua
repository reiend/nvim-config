local colorscheme = { 
  colibri = "colibri",
  everforest_dark = "everforest",
  darkplus = "darkplus",
  bogster = "bogster",
  dracula = "dracula",
  gruvbox = "gruvbox",
  nord = "nord",
  onedark = "onedark",
  rosepine = "rose-pine",
}

vim.cmd [[set termguicolors]]
vim.cmd [[set background=dark]]
vim.cmd("colorscheme " .. colorscheme.colibri)
