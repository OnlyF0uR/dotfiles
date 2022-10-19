vim.g.os = vim.loop.os_uname()

require "user.options"
require "user.keymaps"
require "user.plugins"

require "user.theme"

require "user.cmp"
require "user.lsp"

require "user.telescope"
require "user.gitsigns"
require "user.treesitter"
require "user.autopairs"
require "user.nvim-tree"
require "user.lualine"
