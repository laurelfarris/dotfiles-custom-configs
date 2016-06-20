set cursorline
set nu
"map <ENTER> a<ENTER><ESC>
":echo synIDattr(synID(line("."), col("."), 1), "name"))))
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

syn region pythonString start=+[uU]\=\z('''\|"""\)+ end="\z1" keepend

"syn region pythonDocstring start=+^\s*[uU]\?[rR]\?"""+ end=+"""+ keepend excludenl
"syn region pythonDocstring start=+^\s*[uU]\?[rR]\?'''+ end=+'''+ keepend excludenl
"hi def link pythonDocstring pythonComment
"
"syn region pythonString start=+[uU]\=\z('''\|"""\)+ end="\z1" keepend
"syn region Comment start=/"""/ end=/"""/

hi bibKey ctermfg=215
hi ColorColumn ctermbg=234
hi Conditional ctermfg=210
hi CursorLine ctermbg=234
hi CursorLineNr ctermfg=yellow ctermbg=233
hi Define ctermfg=200
hi Delimiter ctermfg=60
hi Error ctermbg=none ctermfg=none cterm=none
hi Function ctermfg=175
hi Keyword ctermfg=208
hi LineNr ctermbg=black
hi MatchParen ctermfg=226
hi NonText ctermbg=black
hi Operator ctermfg=68
hi PreProc ctermfg=215
hi Special ctermfg=60
hi Statement ctermfg=147
"hi String ctermfg=116
hi Todo cterm=none ctermbg=none ctermfg=243
hi Type ctermfg=78
hi vimNotation ctermfg=80
hi vimMapModKey ctermfg=215
hi zshCommands ctermfg=87
hi zshDelimiter ctermfg=147
hi zshKeyword ctermfg=215
hi zshTypes ctermfg=147

hi PythonBuiltIn ctermfg=147
hi PythonConditional ctermfg=215
"hi PythonFunction ctermfg=78
hi PythonFunction ctermfg=44
hi PythonInclude ctermfg=210
hi PythonNumber ctermfg=75
hi PythonOperator ctermfg=215
hi PythonQuotes ctermfg=247
hi PythonRepeat ctermfg=215
hi PythonStatement ctermfg=215
hi PythonString ctermfg=247
hi PythonTripleQuotes ctermfg=247

hi texBeginEnd ctermfg=215
hi texBeginEndName ctermfg=78
hi texDoctype ctermfg=174
hi texDoctypeArgs ctermfg=81
hi texInputfile ctermfg=78
hi texInputfileopt ctermfg=81
hi texLength ctermfg=81
"hi texMatcher ctermfg=78
"hi texParen ctermfg=65
hi texRefZone ctermfg=147
hi texSection ctermfg=174
hi texSpecialChar ctermfg=60
hi texStatement ctermfg=37
hi texString cterm=bold ctermfg=65
hi texTypeStyle ctermfg=37
hi texZone ctermfg=250

hi texGreek ctermfg=81
hi texMathMatcher ctermfg=81
hi texMathOper ctermfg=215
hi texMathSymbol ctermfg=215
hi texMathZoneAS ctermfg=81
hi texMathZoneX ctermfg=81
hi texMathZoneY ctermfg=81
hi texMathZoneE ctermfg=81
hi texSuperscript ctermfg=81

hi htmlArg ctermfg=79
hi htmlEndTag ctermfg=117
hi htmlItalic ctermfg=217 ctermbg=none cterm=none
hi htmlString ctermfg=255
hi htmlSpecialChar ctermfg=79
hi htmlTag ctermfg=117
hi htmlTagName ctermfg=117
hi htmlValue ctermfg=216

hi cssBraces ctermfg=60
hi cssUnitDecorators ctermfg=60

hi cssCommonAttr ctermfg=255
hi cssBackgroundAttr ctermfg=255
hi cssBorderAttr ctermfg=255
hi cssPositioningAttr ctermfg=255
hi cssFontAttr ctermfg=255
hi cssUIAttr ctermfg=255
hi cssColor ctermfg=255
hi cssValueLength ctermfg=255
hi cssValueNumber ctermfg=255

hi cssTagName ctermfg=229
hi cssIdentifier ctermfg=255
hi cssPseudoClassID ctermfg=255

hi cssBackgroundProp ctermfg=210
hi cssBorderProp ctermfg=35
hi cssBoxProp ctermfg=81
hi cssDimensionProp ctermfg=32
hi cssFontProp ctermfg=79
hi cssListProp ctermfg=215
hi cssPositioningProp ctermfg=45
hi cssTextProp ctermfg=147


autocmd BufEnter,BufRead *.py set colorcolumn=73,80,100
autocmd BufEnter,BufRead *.ex,*.html,*.feature,*.js,*.coffee,*.less,*.css,*.sass,*.scss set shiftwidth=2 softtabstop=2 colorcolumn=80,100

let g:startify_custom_header = ['']

" Position cursor between to braces/parens on return
let g:delimitMate_expand_cr = 0

" Override and use file_rec/git instead of file_rec/async (it is much faster)
nnoremap <Leader>ff :Unite file file_rec/git -start-insert -buffer-name=files -winheight=18<CR>

" Not-so-hardtime
let g:hardtime_maxcount = 1000

let g:jedi#popup_on_dot = 0
let g:jedi#auto_initialization = 0
