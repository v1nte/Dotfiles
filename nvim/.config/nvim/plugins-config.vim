" UltiSnips settings
" let g:UltiSnipsExpandTrigger='<tab>'
" let g:UltiSnipsJumpForwardTrigger='<tab>'
" let g:UltiSnipsJumpBackwardTrigger='<s-tab>'
" let g:UltiSnipsEditSplit='vertical'

" CoC

" Use <leader>x for convert visual selected code to snippet
xmap <leader>x  <Plug>(coc-convert-snippet)

inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'
let g:coc_global_extensions = [ 'coc-tsserver', 'coc-python', 'coc-json' ]
 
" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent>gd <Plug>(coc-definition)
nmap <silent>gy <Plug>(coc-type-definition)
nmap <silent>gi <Plug>(coc-implementation)
nmap <silent>gr <Plug>(coc-references)

nmap <Leader>e :NERDTreeFind<CR>


" Vim-airline
" let g:airline_powerline_font = 1
" let g:airline#extensions#tabline#enabled = 0
" let g:airline#extensions#tabline#left_alt_sep = '|'

