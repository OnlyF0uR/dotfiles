local opts = {
    backup = false,
    clipboard = "unnamedplus",
    guicursor = "",
    number = true,
    relativenumber = true,
    fileencoding = "utf-8",
	tabstop = 4,
	shiftwidth = 4,
	expandtab = true,
	softtabstop = 4,
    completeopt = { "menu", "menuone", "noselect" } -- cmp options
}

for k, v in pairs(opts) do
    vim.opt[k] = v
end

vim.cmd [[
    set mouse=
]]
