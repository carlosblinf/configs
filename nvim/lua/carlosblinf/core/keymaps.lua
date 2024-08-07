-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps
---------------------

-- use jj to exit insert mode
keymap.set("i", "jj", "<ESC>")
keymap.set("i", "<C-c>", "<ESC>")

-- save file
keymap.set("n", "<C-s>", ":w<CR>")
keymap.set("i", "<C-s>", "<ESC>:w<CR>")

-- select all
keymap.set("n", "<C-a>", "ggVG")

-- swap
keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- swap line down
keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- swap line up

-- move
keymap.set("n", "<C-d>", "<C-d>zz") -- move down and center
keymap.set("n", "<C-u>", "<C-u>zz") -- move up and center

-- search & sustitution
keymap.set("n", "<leader>nh", ":nohl<CR>") -- clear search highlights
keymap.set("n", "S", ":%s//g<Left><Left>") -- sustitution

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>") -- increment
keymap.set("n", "<leader>-", "<C-x>") -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>t", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tw", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tx", ":tabo<CR>") -- close all tabs except current
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab
