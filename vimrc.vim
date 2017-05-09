" list where words are ADDED for zg (add to word list) and zw commands
set nocompatible
filetype plugin indent on
set spellfile=${HOME}/Dropbox/en.utf-8.add

set termguicolors
set sidescroll=1
set number
set conceallevel=0
set splitbelow
set nojoinspaces

" Allows syntax highlighting of current line number and background
set cursorline
hi cursorline ctermbg=237

" Set K and Y to be natural counterparts of J and D, respectively
nnoremap K i<CR><ESC>
nnoremap Y y$

":echo synIDattr(synID(line("."), col("."), 1), "name"))))
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

" jump sections in latex files
map <silent> ]] :/^\\section\s*{<CR> :noh<CR>
map <silent> [[ :?^\\section\s*{<CR> :noh<CR>
"map <silent> ]s :/\\\(sub\)\{,2}section\s*{<CR> :noh<CR>
"map <silent> [s :?\\\(sub\)\{,2}section\s*{<CR> :noh<CR>

" ???
let g:screen_size_restore_pos = 1

" Put modified date at top of new idl files.
autocmd BufNewFile *.pro 0read !echo "; Last modified:   " $(date)

" Update modify time of existing files when writing to them,
"   and then return cursor to previous position
"   Bit of a problem when returning to position for files longer than
"   screen length... returns row at bottom of screen, not original screen pos.
"   PROBLEM if 'last modified' line is at top already. Mark is deleted once
"   line is... need to learn vim functions, if statements, etc.
" autocmd BufWrite *.pro :normal H mh ``
"autocmd BufWrite *.pro ks | 2d | 1read !echo "; Last modified:   " $(date)
"autocmd BufWritePost *.pro :normal ``
"autocmd BufWritePost *.pro :normal `h zt ``

" Wait until actually exiting to insert time stamp (not working...)
"autocmd vimLeavePre *.pro 0read !echo "; Last modified:   " $(date)

autocmd BufEnter,BufRead *.pro syntax keyword IDLangConditional foreach FOREACH endforeach ENDFOREACH
autocmd BufRead *.pro syntax keyword IDLangConditional foreach endforeach
autocmd BufRead *.pro syntax keyword IDLangRoutine file_search array_indices
autocmd BufRead *.pro syntax keyword IDLangSSW read_sdo &
autocmd BufRead *.pro syntax keyword IDLangImportant STOP &

autocmd BufEnter *.tex :normal zt
autocmd BufEnter,BufRead *.tex set spell
autocmd BufEnter,BufRead *.tex hi clear texItalStyle
autocmd BufEnter,BufRead *.tex hi clear texItalBoldStyle
autocmd BufEnter,BufRead *.tex hi clear texBoldItalStyle
"autocmd BufEnter,BufRead *.tex hi clear SpellBad

autocmd BufEnter,BufRead *.py syn region pythonDocstring  start=+"""+ end=+"""+ keepend "excludenl "contains=pythonEscape,@Spell,pythonDoctest,pythonDocTest2,pythonSpaceError
autocmd BufEnter,BufRead *.py syn region pythonDocstring  start=+'''+ end=+'''+ keepend excludenl "contains=pythonEscape,@Spell,pythonDoctest,pythonDocTest2,pythonSpaceError
"autocmd BufEnter,BufRead hi link pythonDocString Comment

autocmd BufEnter,BufRead *.py set colorcolumn=73,80,100
autocmd BufEnter,BufRead *.ex,*.html,*.feature,*.js,*.coffee,*.less,*.css,*.sass,*.scss set shiftwidth=2 softtabstop=2 colorcolumn=80,100


set mouse=a
set cursorline
set nu
set nuw=6


colorscheme base16-tomorrow-night
" colorscheme codeschool


"hi Normal guibg=#1d1f21
"hi LineNr guifg=#626267 guibg=#1d1f21
hi LineNr guifg=#626267
hi CursorLineNr ctermfg=yellow ctermbg=233 guifg=#aaaaac guibg=#303137
hi clear SignColumn
"hi NonText ctermbg=black guibg=#1d1f21
hi NonText ctermbg=black guibg=#303234
hi ColorColumn ctermbg=234 guibg=#222426
" hi CursorLine ctermbg=234 guibg=#202224
hi CursorLine ctermbg=234 guibg=#343638
autocmd BufEnter,BufRead *.py,*.elm set colorcolumn=73,80,100
autocmd BufEnter,BufRead *.ex,*.exs,*.yml,*.html,*.feature,*.js,*.coffee,*.less,*.css,*.sass,*.scss set shiftwidth=2 softtabstop=2 colorcolumn=80,100
autocmd BufRead,BufNewFile *.json set filetype=json
autocmd BufRead,BufNewFile,BufEnter *.hbs set ft=mustache
autocmd BufEnter,BufRead *.md,*.markdown set wrap


" source ~/Archive/vim-htmlbars-inline-syntax/plugin/htmlbars_inline_syntax.vim
" autocmd BufRead,BufNewFile *.js HighlightInlineHbs

augroup my_neomake_signs
    au!
    autocmd ColorScheme *
                \ hi clear NeomakeErrorSignDefault
augroup END

map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
            \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
            \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

" Override and use file_rec/git instead of file_rec/async (it is much faster)
nnoremap <Leader>ff :Unite file file_rec/git -start-insert -buffer-name=files -winheight=18<CR>

" ???
let g:startify_custom_header = ['']
" Position cursor between to braces/parens on return...?
let g:delimitMate_expand_cr = 0

" attempt to disable plugins?
" call dein#disable(g:exclude)
" call dein#add('davidhalter/jedi-vim', {'if': 0})

" Make passive mode the default... so I don't punch my computer.
let g:syntastic_mode_map = {
    \ "mode": "passive",
    \ "active_filetypes": ["ruby", "php"],
    \ "passive_filetypes": ["puppet"] }

" Not-so-hardtime
let g:hardtime_maxcount = 1000

" Use eslint for JS linting instead of jshint
let g:syntastic_javascript_checkers = ['eslint']

" Define alternative filetype names for markdown syntax highlighting
let g:vim_markdown_fenced_languages = ['js=javascript']

" Use neomake instead of syntastic

" Missing html tags (html5 + flexi)
autocmd BufEnter *.js,*.hbs syn keyword htmlTagName contained section article screen page box vbox hbox centered fill grid container

" Tagbar
noremap <Leader>tt :TagbarOpenAutoClose<CR>


" ctags
set tags=./.tags,.tags


" Elm ctags
function! ElmAutoTag()
    exe 'silent !rm -rf ctags'
    exe 'silent !ctags -Rf .tags --languages=-all,+Elm'
    exe 'redraw!'
endfunction

augroup autotag
    au!
    autocmd BufWritePost,FileWritePost *.elm call ElmAutoTag ()
augroup END

if has("nvim")
    let g:python3_host_prog = '/usr/local/bin/python3'
endif
