local options = {
  number = true,            -- show line numbers
  cursorline = true,        -- highlight the current line number
  ruler = true,             -- cursoer position diagnostics 
  expandtab = true,         -- tab to spaces
  shiftwidth =  2,          -- spaces inserted for each indentation
  tabstop = 2,              -- n of spaces for a tab
  showtabline = 0,          -- no tab display
  ignorecase = true,        -- ignore character casing
  smartcase = true,         -- enabled smart casing
  smartindent = true,       -- enabled smart indentation
  wrap = false,             -- one liner only, don't wrap
  termguicolors = true,     -- enable 24-bit RBG color
  backup = false,           -- no file backup on edit
  swapfile = false,         -- no swap files
}

-- use options
for key, value in pairs(options) do
	vim.opt[key] = value
end
