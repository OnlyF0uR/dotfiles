function mpk(mode, lhs, rhs, opts)
	local options = { noremap = true }

	if opts then
		options = vim.tbl_extend("force", options, opts)
	end

	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

mpk("n", "<M-t>", ":NvimTreeFocus<CR>", { silent = true })


vim.cmd[[
    tnoremap <Esc> <C-\><C-n>
]]
