" enables syntax highlighting
syntax on

" Better colors
set termguicolors

" number of spaces in a <Tab>
set tabstop=2
set softtabstop=2
set expandtab

" enable autoindents
set smartindent

" number of spaces used for autoindents
set shiftwidth=2

" adds line numbers
set number

" columns used for the line number
set numberwidth=4

" highlights the matched text pattern when searching
set incsearch
set nohlsearch

" open splits intuitively
set splitbelow
set splitright

" navigate buffers without losing unsaved work
set hidden

" start scrolling when 8 lines from top or bottom
set scrolloff=8

" Save undo history
set undofile

" Enable mouse support
set mouse=a

" case insensitive search unless capital letters are used
set ignorecase
set smartcase

set hlsearch

set signcolumn=number

call plug#begin('~/.config/nvim/plugged')
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
Plug 'Mofiqul/dracula.nvim'
Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'preservim/nerdtree'
Plug 'github/copilot.vim'
"Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
Plug 'yaegassy/coc-volar', {'do': 'yarn install --frozen-lockfile'}
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'gruvbox-community/gruvbox'"
" Telescope requires plenary to function
Plug 'nvim-lua/plenary.nvim'
" The main Telescope plugin
Plug 'nvim-telescope/telescope.nvim'
" An optional plugin recommended by Telescope docs
Plug 'nvim-telescope/telescope-fzf-native.nvim', {'do': 'make' }
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'lewis6991/gitsigns.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'onsails/lspkind-nvim'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'yuezk/vim-js'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'maxmellon/vim-jsx-pretty'
call plug#end()

" declare your color scheme
"colorscheme gruvbox"
colorscheme dracula
" Use this for dark color schemes
set background=dark

lua require('dcruz/telescope')
lua require('dcruz/lsp')
"lua require('dcruz/treesitter')
lua require('dcruz/gitsigns')

"lua << EOF
"require'lspconfig'.volar.setup{}
"EOF
nnoremap <C-p> :Telescope find_files<Cr>
nnoremap <C-b> :Telescope buffers<Cr>
nnoremap <C-g> :Telescope live_grep<Cr>
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>


autocmd BufWritePre * execute ':Prettier'

" Start NERDTree, unless a file or session is specified, eg. vim -S session_file.vim.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') && v:this_session == '' | NERDTree | endif



