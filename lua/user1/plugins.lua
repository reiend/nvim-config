-- Normally this if-block is not needed, because `:set nocp` is done
-- automatically when .vimrc is found. However, this might be useful
-- when you execute `vim -u .vimrc` from the command line.
if compatible then
  -- `:set nocp` has many side effects. Therefore this should be done
  -- only when "compatible" is set.
  vim.cmd[[ set nocompatible ]]
end

function PackInit() 
	vim.cmd("packadd minpac")
	vim.call("minpac#init")

	local add = vim.fn["minpac#add"]

  -- plugins
  -- project navigation
	add("kyazdani42/nvim-tree.lua")
	add("kyazdani42/nvim-web-devicons")
  add("nvim-lua/plenary.nvim")
  add("nvim-telescope/telescope-media-files.nvim")
	add("nvim-telescope/telescope.nvim")
	add("folke/which-key.nvim")

  -- quality of life
	add("lewis6991/impatient.nvim")
	add("nvim-lua/popup.nvim")
	add("lewis6991/gitsigns.nvim")
	add("nvim-lualine/lualine.nvim")
	add("akinsho/bufferline.nvim")
	add("jiangmiao/auto-pairs")
  add("Yggdroot/indentLine")
  add("akinsho/toggleterm.nvim")
  
  -- colorscheme
	add("archseer/colibri.vim")
	add("sainnhe/everforest")
	add("yong1le/darkplus.nvim")
	add("vv9k/bogster")
	add("dracula/vim")
	add("morhetz/gruvbox")
	add("arcticicestudio/nord-vim")
	add("joshdick/onedark.vim")
	add("rose-pine/neovim")

end

-- Packer commands
vim.cmd [[
  command! PackUpdate lua PackInit(); vim.call("minpac#update")
  command! PackClean lua PackInit(); vim.call("minpac#clean")
  command! PackStatus lua PackInit(); vim.call("minpac#status")
]]
