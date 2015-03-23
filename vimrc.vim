NeoBundle 'scrooloose/nerdtree'

set cursorline
set nu
hi LineNr ctermbg=black
hi CursorLineNr ctermfg=yellow ctermbg=233
hi NonText ctermbg=black
hi ColorColumn ctermbg=234
hi CursorLine ctermbg=234
nnoremap <Leader>j :Unite file file_rec/async -start-insert -buffer-name=files -winheight=18<CR>
map <Leader>n :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$', 'node_modules$[[dir]]', 'bower_components$[[dir]]', 'tmp$[[dir]]']
