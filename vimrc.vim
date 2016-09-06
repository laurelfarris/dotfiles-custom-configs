set cursorline
set nu
hi LineNr ctermbg=black
hi CursorLineNr ctermfg=yellow ctermbg=233
hi NonText ctermbg=black
hi ColorColumn ctermbg=234
hi CursorLine ctermbg=234
autocmd BufEnter,BufRead *.py set colorcolumn=73,80,100
autocmd BufEnter,BufRead *.ex,*.exs,*.yml,*.html,*.feature,*.js,*.coffee,*.less,*.css,*.sass,*.scss set shiftwidth=2 softtabstop=2 colorcolumn=80,100

let g:startify_custom_header = ['']

" Position cursor between to braces/parens on return
let g:delimitMate_expand_cr = 1

" Override and use file_rec/git instead of file_rec/async (it is much faster)
nnoremap <Leader>ff :Unite file file_rec/git -start-insert -buffer-name=files -winheight=18<CR>

" Not-so-hardtime
let g:hardtime_maxcount = 100
