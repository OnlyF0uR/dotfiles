local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system({
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    })
    print("Installing packer close and reopen Neovim...")
    vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
	augroup packer_user_config
		autocmd!
		autocmd BufWritePost plugins.lua source <afile> | PackerSync
	augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end

return packer.startup(function(use)
    use "wbthomason/packer.nvim" -- Package manager
    use "nvim-lua/plenary.nvim" -- Used by gitsigns etc.
    use "nvim-tree/nvim-web-devicons" -- Used by nvim-tree and lualine

    use "nvim-telescope/telescope.nvim" 

	use "windwp/nvim-autopairs" -- Autopairs, hooked into cmp 
	use "leafOfTree/vim-svelte-plugin" -- Syntax highlighting for svelte 

	use { "catppuccin/nvim", as = "catppuccin",
		config = function()
			vim.g.catppuccin_flavour = "macchiato" -- latte, frappe, macchiato, mocha
			require("catppuccin").setup()
			vim.api.nvim_command "colorscheme catppuccin"
		end
	}

    use "nvim-tree/nvim-tree.lua"
    use "nvim-lualine/lualine.nvim"
    use "akinsho/toggleterm.nvim"
    use "lewis6991/impatient.nvim"

    -- CMP Plugins
    use "hrsh7th/nvim-cmp"
    use "hrsh7th/cmp-buffer"
    use "hrsh7th/cmp-path"
    use "hrsh7th/cmp-cmdline"
    use "saadparwaiz1/cmp_luasnip"
    use "hrsh7th/cmp-nvim-lsp"
    use "hrsh7th/cmp-nvim-lua"

    -- Snippets
    use "L3MON4D3/LuaSnip"

    -- LSP
    use "williamboman/nvim-lsp-installer"
    use "neovim/nvim-lspconfig"

    -- Git
    use "lewis6991/gitsigns.nvim"
    
    -- Treesitter
    use "nvim-treesitter/nvim-treesitter"

    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)
