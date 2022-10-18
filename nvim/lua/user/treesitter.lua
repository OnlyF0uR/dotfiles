local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	return
end

configs.setup({
	ensure_installed = {
		"bash",
		"c",
		"cmake",
		"cpp",
		"css",
		"dockerfile",
		"go",
		"gomod",
		"html",
		"java",
		"javascript",
		"json",
		"latex",
		"lua",
		"make",
		"markdown",
		"python",
		"rust",
		"typescript",
		"yaml"
	},
	highlight = {
		enable = true,
		disable = {}
	},
	indent = {
		enable = true,
		disable = {}
	},
	autopairs = {
		enable = true,
	}
})
