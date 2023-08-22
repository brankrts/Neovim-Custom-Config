
vim.g.mapleader = " "

local keymap = vim.keymap


-- general keymaps

keymap.set("n", "<leader>nh",":nohl<CR>")
keymap.set("n" , "<leader>w" , ":w<CR>")
keymap.set("n" , "<leader>wq" , ":wq<CR>")

keymap.set("n" , "x", '"_x')
keymap.set("n" , "<leader>+","<C-a>")
keymap.set("n" , "<leader>-","<C-x>")

-- split windows 

keymap.set("n" , "<leader>sv","<C-w>v") -- split veritical 
keymap.set("n" , "<leader>sh","<C-w>s") -- split horizontal
keymap.set("n" , "<leader>se","<C-w>=") -- split window equal width
keymap.set("n" , "<leader>sx",":close<CR>") --close current splitted window

-- tab controls

keymap.set("n" , "L" , ":tabn<CR>") 
keymap.set("n" , "H" , ":tabp<CR>") 
--keymap.set("n" , "<leader>C" , ":tabclose<CR>") 

-- plugin keymaps

-- vim-maximizer

keymap.set("n", "<leader>sm" , ":MaximizerToggle<CR>")


-- packer.nvim
keymap.set("n" , "<leader>ps" , ":PackerSync<CR>")


-- nvim-tree

keymap.set("n" , "<leader>e" , ":NvimTreeToggle<CR>")


-- telescope 

keymap.set("n","<leader>ff" , "<cmd>Telescope find_files<CR>")
keymap.set("n","<leader>fs" , "<cmd>Telescope live_grep<CR>")
keymap.set("n","<leader>fg" , "<cmd>Telescope grep_string<CR>")
keymap.set("n","<leader>fb" , "<cmd>Telescope buffers<CR>")
keymap.set("n","<leader>fh" , "<cmd>Telescope help_tags<CR>")


-- barbar tab navigation

keymap.set("n","L" , "<Cmd>BufferNext<CR>")
keymap.set("n","H" , "<Cmd>BufferPrevious<CR>")
keymap.set("n","<leader>c" , "<Cmd>BufferClose<CR>")



keymap.set("n","<leader>j" , "<Cmd>ToggleTerm<CR>")






















