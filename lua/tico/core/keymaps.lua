-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness
local ns = { noremap = true, silent = true }

---------------------
-- General Keymaps -------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- delete single character without copying into register
-- keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" })      -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" })      -- decrement
keymap.set("n", "<leader>w", ":w<CR>", { noremap = true, silent = true }) -- decrement




-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })                   -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })                 -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })                    -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })               -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })                     -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })              -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })                     --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })                 --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

--Move between buffers
keymap.set("n", "<A-1>", ":BufferGoto 1<CR>", ns)
keymap.set("n", "<A-2>", ":BufferGoto 2<CR>", ns)
keymap.set("n", "<A-3>", ":BufferGoto 3<CR>", ns)
keymap.set("n", "<A-4>", ":BufferGoto 4<CR>", ns)
keymap.set("n", "<A-5>", ":BufferGoto 5<CR>", ns)
keymap.set("n", "<A-6>", ":BufferGoto 6<CR>", ns)
keymap.set("n", "<A-7>", ":BufferGoto 7<CR>", ns)
keymap.set("n", "<A-8>", ":BufferGoto 8<CR>", ns)
keymap.set("n", "<A-9>", ":BufferGoto 9<CR>", ns)

-- Terminal
keymap.set("t", "<Esc>", "<C-\\><C-n><C-w><C-w>", ns)
keymap.set("n", "<Leader>t", ":ToggleTerm<CR>", ns)
keymap.set("n", "<Leader>q", ":q<CR>", ns)
