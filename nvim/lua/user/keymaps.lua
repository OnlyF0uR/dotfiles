local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

local mpk = vim.api.nvim_set_keymap

-- Modes
--     normal_mode = "n",
--     insert_mode = "i",
--     visual_mode = "v",
--     visual_block_mode = "x",
--     term_mode = "t",
--     command_mode = "c",

mpk("n", "<M-t>", ":NvimTreeToggle<CR>", opts)
mpk("n", "<Leader>ff", ":Telescope find_files<CR>", opts)
