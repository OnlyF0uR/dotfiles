vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
	sort_by = "case_sensitive",
	renderer = {
    icons = {
		glyphs = {
			default = "",
			symlink = "",
        	folder = {
          		arrow_open = "",
          		arrow_closed = "",
          		default = "",
          		open = "",
          		empty = "",
          		empty_open = "",
          		symlink = "",
          		symlink_open = "",
        	},
        	git = {
          		unstaged = "",
          		staged = "S",
          		unmerged = "",
          		renamed = "➜",
          		untracked = "U",
          		deleted = "",
          		ignored = "◌",
        	},
      	},
    },
	},
	view = {
		width = 30,
		side = "left",
		mappings = {
			list = {
				{ key = "<M-t>", action = "close" },
			}
		}
	}
})
