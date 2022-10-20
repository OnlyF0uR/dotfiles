local status_ok, toggleterm = pcall(require, "toggleterm")
if not status_ok then return end

local shell_type = vim.o.shell
if vim.g.os.sysname == "Windows_NT" then
    shell_type = "pwsh.exe" -- Set the powershell
end

toggleterm.setup({
	size = 20,
	open_mapping = [[<c-\>]],
	hide_numbers = true,
	shade_filetypes = {},
	shade_terminals = true,
	shading_factor = 2,
	start_in_insert = true,
	insert_mappings = true,
	persist_size = true,
	direction = "float",
	close_on_exit = true,
	shell = shell_type,
	float_opts = {
		border = "curved",
		winblend = 0,
		highlights = {
			border = "Normal",
			background = "Normal",
		},
	},
})


