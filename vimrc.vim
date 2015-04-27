NeoBundle 'alfredodeza/pytest.vim'
NeoBundle 'elixir-lang/vim-elixir'
NeoBundle 'janko-m/vim-test'
NeoBundle 'rstacruz/sparkup'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'tpope/vim-dispatch'

set cursorline
set nu
hi LineNr ctermbg=black
hi CursorLineNr ctermfg=yellow ctermbg=233
hi NonText ctermbg=black
hi ColorColumn ctermbg=234
hi CursorLine ctermbg=234
nnoremap <Leader>j :Unite file file_rec/async -start-insert -buffer-name=files -winheight=18<CR>
map ;n :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$', 'node_modules$[[dir]]', 'bower_components$[[dir]]', 'tmp$[[dir]]']
autocmd BufEnter,BufRead *.py set colorcolumn=73,80,100
autocmd BufEnter,BufRead *.ex,*.html,*.feature,*.js,*.coffee,*.less,*.css,*.sass,*.scss set shiftwidth=2 softtabstop=2 colorcolumn=80,100
autocmd BufEnter,BufRead *.ex,*.exs set ft=elixir sw=2

let g:startify_custom_header = ['']
let g:test#strategy = 'dispatch'
let g:test#python#runner = 'pytest'

" Position cursor between to braces/parens on return
let g:delimitMate_expand_cr = 1

nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>i :TestNearest -s<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>r :TestLast<CR>
