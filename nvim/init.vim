let mapleader = " " " map leader key to Space (default is '/')

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.local/share/nvim/plugged')

" --------- Declare the list of plugins ---------

" Syntactic plugins
Plug 'rust-lang/rust.vim' " Rust syntax
Plug 'cespare/vim-toml' " Should be useful for rust .toml syntax
Plug 'stephpy/vim-yaml'
Plug 'plasticboy/vim-markdown'
Plug 'windwp/nvim-autopairs' " Automatically close opening brackets

" Plug 'itchyny/lightline.vim'
Plug 'vim-airline/vim-airline'
Plug 'cespare/vim-toml' " Should be useful for rust .toml syntax
Plug 'morhetz/gruvbox' " Colour scheme
Plug 'junegunn/fzf' " Fuzzy search utility
Plug 'junegunn/fzf.vim' " Vim specific fzf
Plug 'tpope/vim-surround' " Delete/change surrounding characters
Plug 'tpope/vim-commentary' " Enable toggle comments

" Semantic language support
Plug 'neovim/nvim-lspconfig' " Language Server functionality
Plug 'onsails/lspkind-nvim' " Better pop-up info
Plug 'L3MON4D3/luasnip' " Need this for auto-complete
Plug 'saadparwaiz1/cmp_luasnip' " Also required for auto-complete
Plug 'hrsh7th/nvim-cmp' " Auto-complete engine
Plug 'hrsh7th/cmp-nvim-lsp' " Engine source
Plug 'hrsh7th/cmp-buffer' " Engine source
Plug 'hrsh7th/cmp-path' " Engine source

" ---------- Plugins list ends here -------------- 
" Plugins become visible to Vim after this call.
call plug#end()

set noshowmode " remove -- INSERT -- (unnecessary due to status line)
set number " Turns on line numbering
set relativenumber " Turns on relative line numbering
set splitbelow " To open completion previews below

syntax enable
filetype plugin indent on

set tabstop=4 " show existing tabs as 4 spaces
set shiftwidth=4 " using '>' indents 4 spaces
set expandtab " pressing 'tab' inserts n=*tabstop* spaces

set textwidth=0 " Prevent new lines being triggered at character limit
set colorcolumn=80 " Add visual cue for ideal character limit

" Jump to start and end of line using the home row keys
map H ^
map L $

" Move by line
nnoremap j gj
nnoremap k gk

" Activate the colorscheme (note the US spelling) after specifying colorscheme
" configs
let g:gruvbox_contrast_dark = 'medium'
colorscheme gruvbox

" Line visibility for more context
set scrolloff=3
set cmdheight=2

" Printing options: (:hardcopy (:ha) > 'fileout.ps' to print to file)
set printoptions=number:y " Add line numbers to output

" Enable mouse
set mouse=a

" Call to Lua scripts for Language Servers and Completion
" Note: you can't comment after each call
lua require('lsp_cfg') 
lua require('auto_cmp') 
lua require('auto_pairs') 
