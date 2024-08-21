-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

--------------------
-- General Keymaps -------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- delete single character without copying into register
-- keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

-- tabs
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to previous tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to next tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- terminal
keymap.set("n", "<leader>tt", "<cmd>ToggleTerm<CR>", { noremap = true, silent = true, desc = "Toggle terminal" })
keymap.set("t", "<Esc>", "<C-\\><C-n>", { noremap = true, silent = true })

-- Key mappings in insert mode

-- jump to EOL
keymap.set("i", "<D-Right>", "<C-o>$", { noremap = true, silent = true }) -- Command + Right Arrow to move to end of
keymap.set("i", "<D-Left>", "<C-o>^", { noremap = true, silent = true }) -- Command + Left Arrow to move to start of line
keymap.set("i", "<D-Up>", "<C-o>gg", { noremap = true, silent = true }) -- Command + Up Arrow to move to the beginning of the file
keymap.set("i", "<D-Down>", "<C-o>G", { noremap = true, silent = true }) -- Command + Down Arrow to move to the end of the file

-- jump to next word
keymap.set("i", "<A-Right>", "<C-o>w", { noremap = true, silent = true }) -- Option + Right Arrow to move to next word
keymap.set("i", "<A-Left>", "<C-o>b", { noremap = true, silent = true }) -- Option + Left Arrow to move to previous word

-- Move line up/down
keymap.set("i", "<A-Up>", "<Esc>:m .-2<CR>==gi", { noremap = true, silent = true })
keymap.set("i", "<A-Down>", "<Esc>:m .+1<CR>==gi", { noremap = true, silent = true })
