vim.g.os = vim.loop.os_uname()

require "user.options"
require "user.keymaps"
require "user.plugins"
require "user.nvim-tree"
require "user.treesitter"

if vim.g.os.sysname ~= "Windows_NT" then
    require "user.colorscheme"
    require "user.cmp"

    require "user.lsp"
end
