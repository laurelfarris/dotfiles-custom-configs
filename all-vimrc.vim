colorscheme laurel_colors
"colorscheme codeschool
" source ./colors/laurel_colors

filetype plugin on
syntax on "Activates syntax highlighting

"set background=dark
"
let g:tex_flavor = "latex"

" 01 November 2018
set formatoptions=tcqro

"--------------------------------------------------------------------------
" 27 November 2018
" http://vim.wikia.com/wiki/Comment_Lines_according_to_a_given_filetype
" comment out highlighted lines according to file type
"  (different filetypes have different comment symbols)
" put a line like the following in your ~/.vim/filetype.vim file
" and remember to turn on filetype detection: filetype on
" au! BufRead,BufNewFile *.sh,*.tcl,*.php,*.pl let Comment="#"
" if the comment character for a given filetype happens to be @
" then use let Comment="\@" to avoid problems...
"
" Commenting this out because it is defined elsewhere - Dustin 2018-12-27
" Uncommenting because this function stopped working when commented here
"   (not sure where else it's defined, or how to use it otherwise).
"   - Laurel 2019-04-21
 function CommentLines()
   "let Comment="#" " shell, tcl, php, perl
   "  NOTE: the above line was commented in the source text (vim wiki).
   exe ":s@^@".g:Comment."@g"
   exe ":s@$@".g:EndComment."@g"
 endfunction
" map visual mode keycombo 'co' to this function
vmap co :call CommentLines()<CR>

" filetype.vim -- could move these lines to separate file, tho not sure what
" the benefit would be other than de-cluttering vimrc.vim
"    (16 July 2019)
au BufRead,BufNewFile *.pro set filetype=idlang | let Comment=";" | let EndComment=""
au BufRead,BufNewFile *.tex set filetype=tex | let Comment="%" | let EndComment=""
au BufRead,BufNewFile *.vim set filetype=vim | let Comment="\"" | let EndComment=""
au BufRead,BufNewFile *.sh set filetype=sh | let Comment="#" | let EndComment=""
"--------------------------------------------------------------------------

set autoindent "if previous line is indented, indent next line
set autoread "Read open files again when changed outside vim
set cmdheight=2 "space for displaying messages
set cmdwinheight=10 "space for displaying messages in q:
set conceallevel=0 "Don't collapse my shit
set cursorline  "Allows syntax highlighting of current line number and background
set cursorcolumn "Cursor in crosshairs
set ignorecase "better for searching
set incsearch "Move to string as you type it
set nojoinspaces "Don't add extra space between sentences for 'J' and 'gq' commands
set noswapfile "Ain't nobody got time for swap files

" NOTE: setting textwidth also turns on wrap... bleh.
"set textwidth=70
set nowrap "long lines continue off screen instead of wrapping

set number "enable line numbering
"set nuw=6  " number of columns allotted to line numbers
set pastetoggle=<F3>
set report=2  "display message when change is applied to at least 0 lines
set scrolloff=0 "number of lines visible on screen above/below cursor
set sidescroll=1 "move one column at a time for long lines that go off screen
set splitbelow " 'new' opens file at bottom half of screen, not top
set splitright " 'vsplit' opens file to the right, not to the left

set expandtab "do this when writing out file
set shiftwidth=4 "move 4 spaces using '>>' or 'V'+'>'
set tabstop=4 "tab 4 spaces, not 8


" Vertically center search results 07/05/17 12:26
":nnoremap n nzz
":nnoremap N Nzz
":nnoremap * *zz
":nnoremap # #zz
":nnoremap g* g*zz
":nnoremap g# g#zz

" Set K and Y to be natural counterparts of J and D, respectively
nnoremap K i<CR><ESC>
nnoremap Y y$

" Make command to insert current date and/or time into document
:command! Date :r !date +"\%D \%k:\%M"

" Put 'last modified' date at top of codes.
func! MyDate()
    ":undojoin | put! =';; Last modified:   ' . strftime('%d %B %Y %T') | 2d
    "
    ":put! =';; Last modified:   ' . strftime('%d %B %Y %T') | 2d
    " Removing time for now
    :put! =';; Last modified:   ' . strftime('%d %B %Y') | 2d

endf
func! LastModified()
    let l:winview = winsaveview()
    :normal mk
    :1 | normal D
    :call MyDate()
    :normal `k
    call winrestview(l:winview)
endf
"autocmd BufNewFile *.pro :call MyDate()

"Changing BufWrite to BufLeave to only update 'Last modified'
"  after exiting, not every time I do ':w' (22 Feb 2018)
"autocmd BufLeave *.pro :call LastModified()
" NOTE: this was called every time I opened a DIFFERENT file using
"  the :new command... which is not what I wanted.


" Jump sections in latex files
map <silent> ]] :/^\\section\s*{<CR> :noh<CR>
map <silent> [[ :?^\\section\s*{<CR> :noh<CR>
"map <silent> ]s :/\\\(sub\)\{,2}section\s*{<CR> :noh<CR>
"map <silent> [s :?\\\(sub\)\{,2}section\s*{<CR> :noh<CR>


autocmd BufEnter,BufRead *.ex,*.html,*.feature,*.js,*.coffee,*.less,*.css,*.sass,*.scss set shiftwidth=2 softtabstop=2 colorcolumn=80,100

" BufEnter OR BufRead? Need both?
autocmd BufEnter,BufRead *.pro syntax keyword IDLangConditional foreach FOREACH endforeach ENDFOREACH
autocmd BufRead *.pro syntax keyword IDLangRoutine file_search array_indices
autocmd BufRead *.pro syntax keyword IDLangRoutine plot2 image2 axis2 text2 contour2
autocmd BufRead *.pro syntax keyword IDLangSSW read_sdo &


set spellfile=${HOME}/Dropbox/en.utf-8.add "list where words are ADDED for zg (add to word list) and zw commands

" set spellcheck for .tex files
"autocmd BufEnter,BufRead *.tex set spell


autocmd BufEnter,BufRead *.tex hi clear texItalStyle
autocmd BufEnter,BufRead *.tex hi clear texBoldStyle
autocmd BufEnter,BufRead *.tex hi clear texItalBoldStyle
autocmd BufEnter,BufRead *.tex hi clear texBoldItalStyle


" Highlight docstrings as comments, not strings
autocmd BufEnter,BufRead *.py syn region pythonDocstring  start=+"""+ end=+"""+ keepend excludenl "contains=pythonEscape,@Spell,pythonDoctest,pythonDocTest2,pythonSpaceError
autocmd BufEnter,BufRead *.py syn region pythonDocstring  start=+'''+ end=+'''+ keepend excludenl "contains=pythonEscape,@Spell,pythonDoctest,pythonDocTest2,pythonSpaceError
"autocmd BufEnter,BufRead hi link pythonDocString Comment
"OR
"autocmd BufEnter, BufRead *.py syn region pythonDocstring start=+^\s*[uU]\?[rR]\?"""+ end=+"""+ keepend excludenl
"autocmd BufEnter, BufRead *.py syn region pythonDocstring start=+^\s*[uU]\?[rR]\?'''+ end=+'''+ keepend excludenl
"autocmd BufEnter, BufRead hi def link pythonDocstring pythonComment

autocmd BufEnter,BufRead *.py set colorcolumn=73,80,100

" Persistent undo
"set undofile
"set undodir=${HOME}/.vim/undo
"set undolevels=1000
"set undoreload=10000

":echo synIDattr(synID(line("."), col("."), 1), "name"))))
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>
