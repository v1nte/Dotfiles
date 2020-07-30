" Leader Key
let mapleader=" "

syntax enable 
syntax on
set relativenumber
set number
set encoding=UTF-8
set mouse=a
set clipboard=unnamed
set numberwidth=1
set ruler
set showmatch
set sw=2
set showcmd
set laststatus=2
set cursorline
set mouse=a

call plug#begin('~/.vim/plugged')

" Themes
Plug 'morhetz/gruvbox'
Plug 'tomasr/molokai'

" IDE
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'neoclide/coc.nvim', {'branch': 'realease'}
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'


call plug#end()
colorscheme gruvbox

"Themes
let g:gruvbox_constrast_dark = "hard"

 " UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" COC
 
" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)


nmap <Leader>nt :NERDTreeFind<CR>
" Hola hola caracola
