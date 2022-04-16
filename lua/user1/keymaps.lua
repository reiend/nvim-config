local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

-- reference function keymap
local keymap = vim.api.nvim_set_keymap

-- use space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Normal --
-- Project operation
keymap("n", "<C-s>", ":w <CR>", opts)     -- save file
keymap("n", "<leader>w", ":w <CR>", opts) -- save file

-- window navigation
keymap("n", "<C-h>", "<C-w>h", opts)          -- move to left window
keymap("n", "<C-j>", "<C-w>j", opts)          -- move to bottom window
keymap("n", "<C-k>", "<C-w>k", opts)          -- move to top window
keymap("n", "<C-l>", "<C-w>l", opts)          -- move to right window

-- default file explorer, netrw
-- keymap("n", "<leader>e", ":Lex 40<CR>", opts) -- open default file explorer, Netwr

-- Window Resize
keymap("n", "<C-Up>", ":resize +2<CR>", opts)             -- resize window top
keymap("n", "<C-Down>", ":resize -2<CR>", opts)           -- resize window bottom
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)  -- resize window left
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts) -- resize window right

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)      -- go to next buffer
keymap("n", "<S-h>", ":bprevious<CR>", opts)  -- return to previous buffer

-- Visual --
-- indentation
keymap("v", "<", "<gv", opts) -- left text indentation
keymap("v", ">", ">gv", opts) -- right text indentation

-- movement
keymap("v", "<A-j>", ":m .+1<CR>==", opts) -- top text move
keymap("v", "<A-k>", ":m .-2<CR>==", opts) -- bottom teext move

-- No override register
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)     -- move text top
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)     -- move text bottom
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts) -- move text top
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts) -- move text bottom

-- Terminal --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)  -- move to left window
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)  -- move to top window
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)  -- move to bottom window
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)  -- move to right window

-- Nvim Tree
keymap("n", "<C-n>", ":NvimTreeToggle<CR>", opts)      -- Toggling file explorer
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)  -- Toggling file explorer
keymap("n", "<leader>r", ":NvimTreeRefresh<CR>", opts) -- Refresh File explorer
