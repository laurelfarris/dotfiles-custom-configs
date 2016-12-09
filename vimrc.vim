set cursorline
set nu
hi Normal guibg=#000000
hi LineNr ctermbg=black guibg=#000000
hi CursorLineNr ctermfg=yellow ctermbg=233 guifg=#dfdf04 guibg=#070707
hi NonText ctermbg=black guibg=#000000
hi ColorColumn ctermbg=234 guibg=#101010
hi CursorLine ctermbg=234 guibg=#101010
autocmd BufEnter,BufRead *.py set colorcolumn=73,80,100
autocmd BufEnter,BufRead *.ex,*.exs,*.yml,*.html,*.feature,*.js,*.coffee,*.less,*.css,*.sass,*.scss set shiftwidth=2 softtabstop=2 colorcolumn=80,100
autocmd BufRead,BufNewFile *.json set filetype=json
autocmd BufRead,BufNewFile,BufEnter *.hbs set ft=mustache
autocmd BufEnter,BufRead *.md,*.markdown set wrap

" source ~/Archive/vim-htmlbars-inline-syntax/plugin/htmlbars_inline_syntax.vim
" autocmd BufRead,BufNewFile *.js HighlightInlineHbs

map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
            \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
            \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

let g:startify_custom_header = ['']

" Position cursor between to braces/parens on return
let g:delimitMate_expand_cr = 1

" Override and use file_rec/git instead of file_rec/async (it is much faster)
nnoremap <Leader>ff :Unite file file_rec/git -start-insert -buffer-name=files -winheight=18<CR>

" Not-so-hardtime
let g:hardtime_maxcount = 100

" Use eslint for JS linting instead of jshint
let g:syntastic_javascript_checkers = ['eslint']

" Define alternative filetype names for markdown syntax highlighting
let g:vim_markdown_fenced_languages = ['js=javascript']
