set number
set cursorline
set conceallevel=0
"syntax on

nnoremap K i<CR><ESC>
nnoremap Y y$
nmap <TAB> i<TAB><ESC>l

":echo synIDattr(synID(line("."), col("."), 1), "name"))))
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

autocmd BufEnter,BufRead *.tex hi clear texItalStyle
autocmd BufEnter,BufRead *.tex hi clear texItalBoldStyle

autocmd BufEnter,BufRead *.py syn region pythonDocstring  start=+"""+ end=+"""+ keepend "excludenl "contains=pythonEscape,@Spell,pythonDoctest,pythonDocTest2,pythonSpaceError
autocmd BufEnter,BufRead *.py syn region pythonDocstring  start=+'''+ end=+'''+ keepend excludenl "contains=pythonEscape,@Spell,pythonDoctest,pythonDocTest2,pythonSpaceError
autocmd BufEnter,BufRead hi link pythonDocString Comment

autocmd BufEnter,BufRead *.py set colorcolumn=73,80,100
autocmd BufEnter,BufRead *.ex,*.html,*.feature,*.js,*.coffee,*.less,*.css,*.sass,*.scss set shiftwidth=2 softtabstop=2 colorcolumn=80,100

" Override and use file_rec/git instead of file_rec/async (it is much faster)
nnoremap <Leader>ff :Unite file file_rec/git -start-insert -buffer-name=files -winheight=18<CR>

" ???
let g:startify_custom_header = ['']
" Position cursor between to braces/parens on return...?
let g:delimitMate_expand_cr = 0

" attempt to disable plugins?
call dein#disable(g:exclude)
call dein#add('davidhalter/jedi-vim', {'if': 0})

" Make passive mode the default... so I don't punch my computer.
let g:syntastic_mode_map = {
    \ "mode": "passive",
    \ "active_filetypes": ["ruby", "php"],
    \ "passive_filetypes": ["puppet"] }

" Not-so-hardtime
let g:hardtime_maxcount = 1000
