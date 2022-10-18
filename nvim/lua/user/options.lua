local opts = {
    backup = false,
    clipboard = "unnamedplus",
    guicursor = "",
    number = true,
    relativenumber = true,
    fileencoding = "utf-8",
    completeopt = { "menuone", "noselect" } -- cmp options
}

for k, v in pairs(opts) do
    vim.opt[k] = v
end

vim.cmd [[
    set mouse=
    set ts=4 sw=4
]]
