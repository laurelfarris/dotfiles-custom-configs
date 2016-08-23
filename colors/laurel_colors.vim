set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "laurel_colors"

hi bibKey ctermfg=180
hi Boolean ctermfg=67 ctermbg=NONE cterm=NONE guifg=#3c98d9 guibg=NONE gui=NONE
hi Character ctermfg=67 ctermbg=NONE cterm=NONE guifg=#3c98d9 guibg=NONE gui=NONE
hi ColorColumn ctermfg=NONE ctermbg=234 cterm=NONE guifg=NONE guibg=#2e373b gui=NONE
hi Comment ctermfg=243 ctermbg=NONE cterm=NONE guifg=#9a9a9a guibg=NONE gui=italic
hi Conditional ctermfg=180
hi Constant ctermfg=68 ctermbg=NONE cterm=NONE guifg=#3c98d9 guibg=NONE gui=NONE
hi Cursor ctermfg=16 ctermbg=145 cterm=NONE guifg=#182227 guibg=#9ea7a6 gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=23 cterm=NONE guifg=NONE guibg=#2e373b gui=NONE
hi CursorLine ctermfg=NONE ctermbg=235 cterm=NONE guifg=NONE guibg=#2e373b gui=NONE
"hi CursorLine ctermfg=None ctermbg=233 cterm=None

hi CursorLineNr ctermfg=186
"ctermbg=233

hi Define ctermfg=180 ctermbg=NONE cterm=NONE guifg=#dda790 guibg=NONE gui=NONE
hi Define ctermfg=200
hi Delimiter ctermfg=60
hi DiffAdd ctermfg=231 ctermbg=64 cterm=bold guifg=#f0f0f0 guibg=#43820d gui=bold
hi DiffChange ctermfg=231 ctermbg=23 cterm=NONE guifg=#f0f0f0 guibg=#1c3657 gui=NONE
hi DiffDelete ctermfg=88 ctermbg=NONE cterm=NONE guifg=#880708 guibg=NONE gui=NONE
hi DiffText ctermfg=231 ctermbg=24 cterm=bold guifg=#f0f0f0 guibg=#204a87 gui=bold
hi Directory ctermfg=68 ctermbg=NONE cterm=NONE guifg=#3c98d9 guibg=NONE gui=NONE
hi Error ctermbg=none ctermfg=none cterm=none
hi ErrorMsg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Float ctermfg=68 ctermbg=NONE cterm=NONE guifg=#3c98d9 guibg=NONE gui=NONE
hi Folded ctermfg=247 ctermbg=16 cterm=NONE guifg=#9a9a9a guibg=#182227 gui=NONE
hi Function ctermfg=107
hi Identifier ctermfg=255 ctermbg=NONE cterm=NONE guifg=#99cf50 guibg=NONE gui=NONE
hi IncSearch ctermfg=black ctermbg=107 cterm=NONE guifg=#182227 guibg=#8bb664 gui=NONE
hi Keyword ctermfg=180 ctermbg=NONE cterm=NONE guifg=#dda790 guibg=NONE gui=NONE
hi Label ctermfg=107 ctermbg=NONE cterm=NONE guifg=#8bb664 guibg=NONE gui=NONE
hi LineNr ctermfg=102 ctermbg=0 cterm=NONE guifg=#84898c guibg=#2a343a gui=NONE
hi MatchParen ctermfg=227 ctermbg=NONE cterm=underline guifg=#dda790 guibg=NONE gui=underline
hi NonText ctermfg=59 ctermbg=black cterm=NONE guifg=#414e58 guibg=#232c31 gui=NONE
"hi Normal ctermfg=231 ctermbg=16 cterm=NONE guifg=#f0f0f0 guibg=#252c31 gui=NONE
hi Number ctermfg=67 ctermbg=NONE cterm=NONE guifg=#3c98d9 guibg=NONE gui=NONE
hi Operator ctermfg=67 ctermbg=NONE cterm=NONE guifg=#dda790 guibg=NONE gui=NONE
hi Pmenu ctermfg=153 ctermbg=NONE cterm=NONE guifg=#bcdbff guibg=NONE gui=NONE
hi PmenuSel ctermfg=NONE ctermbg=59 cterm=NONE guifg=NONE guibg=#3f4b52 gui=NONE
hi PreProc ctermfg=060 ctermbg=NONE cterm=NONE guifg=#dda790 guibg=NONE gui=NONE
hi Search ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi Special ctermfg=255 ctermbg=NONE cterm=NONE guifg=#f0f0f0 guibg=NONE gui=NONE
hi SpecialKey ctermfg=59 ctermbg=23 cterm=NONE guifg=#414e58 guibg=#252c31 gui=NONE
hi Statement ctermfg=107 ctermbg=NONE cterm=NONE guifg=#dda790 guibg=NONE gui=NONE
hi StatusLine ctermfg=231 ctermbg=59 cterm=bold guifg=#f0f0f0 guibg=#575e61 gui=bold
hi StatusLineNC ctermfg=231 ctermbg=59 cterm=NONE guifg=#f0f0f0 guibg=#575e61 gui=NONE
hi StorageClass ctermfg=113 ctermbg=NONE cterm=NONE guifg=#99cf50 guibg=NONE gui=NONE
hi String ctermfg=231 ctermbg=NONE cterm=NONE guifg=#8bb664 guibg=NONE gui=NONE
hi Tag ctermfg=153 ctermbg=NONE cterm=NONE guifg=#bcdbff guibg=NONE gui=NONE
hi Title ctermfg=231 ctermbg=NONE cterm=bold guifg=#f0f0f0 guibg=NONE gui=bold
hi Todo ctermfg=247 ctermbg=NONE cterm=inverse,bold guifg=#9a9a9a guibg=NONE gui=inverse,bold,italic
hi Type ctermfg=153 ctermbg=NONE cterm=NONE guifg=#b5d8f6 guibg=NONE gui=NONE
hi Type ctermfg=255
hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi VertSplit ctermfg=59 ctermbg=59 cterm=NONE guifg=#252c31 guibg=#252c31 gui=NONE
hi Visual ctermfg=NONE ctermbg=59 cterm=NONE guifg=NONE guibg=#3f4b52 gui=NONE
hi WarningMsg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE

"hi vimCommentString ctermfg=243
"hi vimCommentTitle ctermfg=243
hi vimFgBgAttrib ctermfg=180
hi vimFuncName ctermfg=180
hi vimNotation ctermfg=180
hi vimMapModKey ctermfg=180
hi vimOption ctermfg=180
hi vimSynContains ctermfg=180
hi vimSynRegOpt ctermfg=180

hi zshCommands ctermfg=107
hi zshDelimiter ctermfg=147
hi zshKeyword ctermfg=180
hi zshOptions ctermfg=180
hi zshTypes ctermfg=147

hi shAlias ctermfg=255
hi shConditional ctermfg=180
hi shDerefSimple ctermfg=186
hi shDerefVar ctermfg=231
hi shDoubleQuote ctermfg=255
hi shFunctionKey ctermfg=107
hi shFunction ctermfg=180
hi shParen ctermfg=231
hi shQuote ctermfg=255
hi shSingleQuote ctermfg=255
hi shSetList ctermfg=180
hi shVariable ctermfg=81

hi cshDblQuote ctermfg=67
hi tcshDQuote ctermfg=67
hi tcshSQuote ctermfg=67

hi texSpecialChar ctermfg=60
hi texDoctype ctermfg=186
hi texDoctypeArgs ctermfg=74

hi texNewCmd ctermfg=186
hi texCmdName ctermfg=186
hi texCmdBody ctermfg=180
hi texCmdArgs ctermfg=74
hi texNewEnv ctermfg=186
hi texEnvName ctermfg=186
hi texDefParm ctermfg=186

hi texSection ctermfg=67
hi texBeginEnd ctermfg=107
hi texBeginEndName ctermfg=180
hi texStatement ctermfg=107
hi texInputfile ctermfg=180
hi texInputfileopt ctermfg=74

hi texTypeStyle ctermfg=139
hi texTypeSize ctermfg=67
hi texLength ctermfg=74

hi texCite ctermfg=180
hi texRefZone ctermfg=107
"hi texParen ctermfg=200
" All verbatim text?
hi texZone ctermfg=245
hi texString ctermfg=250

hi texGreek ctermfg=255
hi texSuperscript ctermfg=250
hi texSubscript ctermfg=250
hi texMathSymbol ctermfg=67
hi texMathOper ctermfg=67
hi texMathMatcher ctermfg=255
hi texMathZoneY ctermfg=255
hi texMathZoneX ctermfg=255
hi texMathZoneAS ctermfg=255
hi texMathZoneE ctermfg=255

" Latex things I probably won't use
"hi texDocZone ctermfg=255  \url{texDocZone}


" HTML
hi htmlArg ctermfg=79
hi htmlEndTag ctermfg=117
hi htmlItalic ctermfg=217 ctermbg=none cterm=none
hi htmlString ctermfg=255
hi htmlSpecialChar ctermfg=79
hi htmlTag ctermfg=182
hi htmlTagName ctermfg=117
hi htmlValue ctermfg=216
hi htmlTag ctermfg=111 ctermbg=NONE cterm=NONE guifg=#89bdff guibg=NONE gui=NONE
hi htmlEndTag ctermfg=111 ctermbg=NONE cterm=NONE guifg=#89bdff guibg=NONE gui=NONE
hi htmlTagName ctermfg=111 ctermbg=NONE cterm=NONE guifg=#89bdff guibg=NONE gui=NONE
hi htmlArg ctermfg=111 ctermbg=NONE cterm=NONE guifg=#89bdff guibg=NONE gui=NONE
hi htmlSpecialChar ctermfg=68 ctermbg=NONE cterm=NONE guifg=#3c98d9 guibg=NONE gui=NONE

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
hi cssURL ctermfg=74 ctermbg=NONE cterm=NONE guifg=#68a9eb guibg=NONE gui=NONE
hi cssFunctionName ctermfg=186 ctermbg=NONE cterm=NONE guifg=#dad085 guibg=NONE gui=NONE
hi cssColor ctermfg=68 ctermbg=NONE cterm=NONE guifg=#3c98d9 guibg=NONE gui=NONE
hi cssPseudoClassId ctermfg=153 ctermbg=NONE cterm=NONE guifg=#bcdbff guibg=NONE gui=NONE
hi cssClassName ctermfg=153 ctermbg=NONE cterm=NONE guifg=#bcdbff guibg=NONE gui=NONE
hi cssValueLength ctermfg=68 ctermbg=NONE cterm=NONE guifg=#3c98d9 guibg=NONE gui=NONE
hi cssCommonAttr ctermfg=151 ctermbg=NONE cterm=NONE guifg=#a7cfa3 guibg=NONE gui=NONE
hi cssBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE

hi IDLangConditional ctermfg=180
hi IDLangContinueLine cterm=none ctermbg=none ctermfg=60
hi IDLangKeyword ctermfg=146
hi IDLangNumber ctermfg=67
hi IDLangRealNumber ctermfg=67
hi IDLangOperator ctermfg=180
hi IDLangRoutine ctermfg=107
hi IDLangStatement ctermfg=107
hi IDLangString ctermfg=67

hi pythonBuiltIn ctermfg=107
hi pythonConditional ctermfg=180
hi pythonDocstring ctermfg=243
hi pythonExceptions ctermfg=124
hi pythonFunction ctermfg=180
hi pythonInclude ctermfg=13
hi pythonNumber ctermfg=67
hi pythonOperator ctermfg=180
hi pythonQuotes ctermfg=67
hi pythonRepeat ctermfg=180
hi pythonStatement ctermfg=107
hi pythonString ctermfg=67
hi pythonTripleQuotes ctermfg=248

""" Colors! """
let g:colors_name = "testing_colors"

" Black
"   others: 0 16
"
" Blue
"   winners:        12 67 75 109 110 152 153 188 195
"   kinda bright:   159
"   others:         17 18 4 19 20 21 25 32 33 39 45 68 69 74 81 87 111 116 117 123

" Cyan
"   winners:        36 66 73 151 157 158
"   others:         6 14 23 24 30 31 37 38 43 44 50 61 79 80 86 115 122
"
" 'Seaweed'
"   winners:       29 65 71 72 107 108 150 193 194
"
" Green
"   winners:       64 107 144 149 192
"   too bright:    76 82 112 118 190
"   kinda bright:  70 77 78 83 84 85 106 113 120 191
"   others:        2 10 22 28 34 35 46 47 48 49 58 101 114 119 121 142 143 148 154 155 156
"
"
" Red
"   others:       01 09 52 88 160 196 124
"
" Magenta
"   others:         89 90 91 127 128 133 161 162 163 164 165 170 171 199 200 201 207
"
" Purple
"   dark winners:   5 13 60 96 103 139
"   light winners:  182 183 189
"   kinda bright:   97 104 141 147
"   others:         53 54 55 56 57 62 63 92 93 98 99 105 129 134 135 140 176 177 219
"
" Pink/peach
"   winners:    95 131 132 137 138 139 167 168 173 174 175 180 181 216 217 218 223 224 225
"   others:     203 204 205 206 209 210 211 125 126 169 197 198 212 213 231
"
" Yellow
"   winners:    227 228 229 230
"   icky:       3 94 100 226
"   others:     11 178 179 184 185 186 187 220
"
" Orange
"   winners:    221 222
"   others:     130 136 166 172 202 208 214 215
"
" Gray
"   winners:    145 146
"   others:     7 8 15 59 102 232-->256
