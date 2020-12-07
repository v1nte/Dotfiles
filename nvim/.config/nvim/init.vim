" Leader Key
let mapleader=" " 

" imports
so ~/.config/nvim/plugins.vim
so ~/.config/nvim/plugins-config.vim


set encoding=UTF-8
set mouse=a 
set clipboard=unnamed
set showmatch
set sw=2
set showcmd
set laststatus=2
set mouse=a
set showmatch
set incsearch
set hlsearch

"Visual setup
syntax enable
syntax on
set numberwidth=1
set ruler
set relativenumber
set number
set cursorline
set termguicolors


"Tabs
set expandtab
set smarttab
set shiftwidth=2
set tabstop=2

"Windows movement
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" Resizes
nnoremap <Leader>= :exe 'vertical resize +5'<CR>
nnoremap <Leader>- :exe 'vertical resize -5'<CR>

" Copy to clipboard
nnoremap <leader><space> :nohlsearch<CR>
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y ggVG"+y

" Themes
let g:gruvbox_constrast_dark="hard"
set background=dark
let g:gruvbox_guisp_fallback = "bg"
colo gruvbox


" let ayucolor='mirage'
" colorscheme ayu

