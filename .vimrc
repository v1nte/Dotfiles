" Leader Key
let mapleader=" "

" Leader Key
let mapleader=" "

set encoding=UTF-8
set mouse=a
set clipboard=unnamed
set showmatch
set sw=2
set showcmd
set laststatus=2
set mouse=a

"Visual setup
syntax enable
syntax on
set numberwidth=1
set ruler
set relativenumber
set number
set cursorline

"Tabs
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4

"QickSave
nmap <silent> <C-s> :w!<cr>

"Plugins
call plug#begin('~/.vim/plugged')

" Themes
Plug 'morhetz/gruvbox'
Plug 'tomasr/molokai'

" IDE
Plug 'scrooloose/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'realease'}
Plug 'SirVer/ultisnips'

call plug#end()
colorscheme gruvbox

"Themes
let g:gruvbox_constrast_dark = "hard"
set background=dark
colo gruvbox



"UltiSnips settings
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:UltiSnipsEditSplit = 'vertical'

" COC
let g:coc_global_extensions = [ 'coc-tsserver' ]
 
" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nmap <Leader>e :NERDTreeFind<CR>

"AutoCompile/Execute
map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
    exec "w"
    if &filetype == 'c'
        exec "!gcc % -o %<"
        exec "!time ./%<"
    elseif &filetype == 'cpp'
        exec "!g++ % -o %<"
        exec "!time ./%<"
    elseif &filetype == 'java'
        exec "!javac %"
        exec "!time java -cp %:p:h %:t:r"
    elseif &filetype == 'sh'
        exec "!time bash %"
    elseif &filetype == 'python'
        exec "!time python3 %"
    elseif &filetype == 'html'
        exec "!brave-browser % &"
    elseif &filetype == 'go'
        exec "!go build %<"
        exec "!time go run %"
    elseif &filetype == 'mkd'
        exec "!~/.vim/markdown.pl % > %.html &"
        exec "!brave-browser %.html &"
    endif
endfunc


