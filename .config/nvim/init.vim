call plug#begin('~/.config/nvim/autoload/')

" nvim-cmp
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

" luasnip
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'

" solidity
Plug 'tomlion/vim-solidity'

" theme
Plug 'mhartington/oceanic-next'

call plug#end()

set guicursor=
set number
set ts=4 sw=4

set clipboard+=unnamedplus

if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

if (has("termguicolors"))
  set termguicolors
endif

" nvim-cmp config
set completeopt=menu,menuone,noselect
lua require('autocmp')

" Theme
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

syntax on
let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1
colorscheme OceanicNext

" Remaps
tnoremap <Esc> <C-\><C-n>
