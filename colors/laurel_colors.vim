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
hi CursorLineNr ctermfg=227 ctermbg=233
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

hi shAlias ctermfg=138
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
hi shVariable ctermfg=138

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

hi texRefZone ctermfg=180
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

hi pythonBuiltIn ctermfg=107
hi pythonConditional ctermfg=180
hi pythonDocstring ctermfg=243
hi pythonExceptions ctermfg=124
hi pythonFunction ctermfg=180
hi pythonInclude ctermfg=146
hi pythonNumber ctermfg=67
hi pythonOperator ctermfg=180
hi pythonQuotes ctermfg=67
hi pythonRepeat ctermfg=180
hi pythonStatement ctermfg=107
hi pythonString ctermfg=67
hi pythonTripleQuotes ctermfg=248

hi IDLangConditional ctermfg=180
hi IDLangContinueLine cterm=none ctermbg=none ctermfg=60
hi IDLangKeyword ctermfg=146
hi IDLangNumber ctermfg=67
hi IDLangRealNumber ctermfg=67
hi IDLangOperator ctermfg=180
hi IDLangRoutine ctermfg=107
hi IDLangStatement ctermfg=107
hi IDLangString ctermfg=67


""" Colors! """
let g:colors_name = "testing_colors"

" Black
"hi comment ctermfg=0
"hi comment ctermfg=16
" Blue
"hi comment ctermfg=4
"hi comment ctermfg=12
"hi comment ctermfg=17
"hi comment ctermfg=18
"hi comment ctermfg=19
"hi comment ctermfg=20
"hi comment ctermfg=21
"hi comment ctermfg=25
"hi comment ctermfg=26
"hi comment ctermfg=27
"hi comment ctermfg=32
"hi comment ctermfg=33
"hi comment ctermfg=39
"hi comment ctermfg=45
"hi comment ctermfg=51
"hi comment ctermfg=62
"hi comment ctermfg=63
"hi comment ctermfg=68
"hi comment ctermfg=69
"hi comment ctermfg=75
"hi comment ctermfg=81
"hi comment ctermfg=87
" Cyan
"hi comment ctermfg=6
"hi comment ctermfg=14
"hi comment ctermfg=23
"hi comment ctermfg=24
"hi comment ctermfg=30
"hi comment ctermfg=31
"hi comment ctermfg=37
"hi comment ctermfg=38
"hi comment ctermfg=43
"hi comment ctermfg=44
"hi comment ctermfg=50
"hi comment ctermfg=59
"hi comment ctermfg=60
"hi comment ctermfg=61
"hi comment ctermfg=66
"hi comment ctermfg=67
"hi comment ctermfg=73
"hi comment ctermfg=74
"hi comment ctermfg=79
"hi comment ctermfg=80
"hi comment ctermfg=86
"
" Green
"hi comment ctermfg=2
"hi comment ctermfg=10
"hi comment ctermfg=22
"hi comment ctermfg=28
"hi comment ctermfg=29
"hi comment ctermfg=34
"hi comment ctermfg=35
"hi comment ctermfg=36
"hi comment ctermfg=46
"hi comment ctermfg=47
"hi comment ctermfg=48
"hi comment ctermfg=49
"hi comment ctermfg=57
"hi comment ctermfg=58
"hi comment ctermfg=64
"hi comment ctermfg=65
"hi comment ctermfg=70
"hi comment ctermfg=71
"hi comment ctermfg=72
"hi comment ctermfg=76
"hi comment ctermfg=77
"hi comment ctermfg=78
"hi comment ctermfg=82
"hi comment ctermfg=83
"hi comment ctermfg=84
"hi comment ctermfg=85
" Red
"hi comment ctermfg=1
"hi comment ctermfg=9
"hi comment ctermfg=88
" Magenta
"hi comment ctermfg=52
"hi comment ctermfg=89
"hi comment ctermfg=90
"hi comment ctermfg=91
" Purple
"hi comment ctermfg=53
"hi comment ctermfg=54
"hi comment ctermfg=55
"hi comment ctermfg=56
"hi comment ctermfg=92
"hi comment ctermfg=93
"hi comment ctermfg=95
"hi comment ctermfg=96
"hi comment ctermfg=97
"hi comment ctermfg=98
"hi comment ctermfg=99
"hi comment ctermfg=101
"hi comment ctermfg=102
"hi comment ctermfg=103
"hi comment ctermfg=104
"hi comment ctermfg=105
" Pink
"hi comment ctermfg=5
"hi comment ctermfg=13
" Yellow
"hi comment ctermfg=3
"hi comment ctermfg=11
"hi comment ctermfg=94
"hi comment ctermfg=100
"hi comment ctermfg=106
"hi comment ctermfg=107
" Orange
" Gray
"hi comment ctermfg=7
"hi comment ctermfg=8
"hi comment ctermfg=15
"
"hi comment ctermfg=108
"hi comment ctermfg=109
"hi comment ctermfg=110
"hi comment ctermfg=111
"hi comment ctermfg=112
"hi comment ctermfg=113
"hi comment ctermfg=114
"hi comment ctermfg=115
"hi comment ctermfg=116
"hi comment ctermfg=117
"hi comment ctermfg=118
"hi comment ctermfg=119
"hi comment ctermfg=120
"hi comment ctermfg=121
"hi comment ctermfg=122
"hi comment ctermfg=123
"hi comment ctermfg=124
"hi comment ctermfg=125
"hi comment ctermfg=126
"hi comment ctermfg=127
"hi comment ctermfg=128
"hi comment ctermfg=129
"hi comment ctermfg=130
"hi comment ctermfg=131
"hi comment ctermfg=132
"hi comment ctermfg=133
"hi comment ctermfg=134
"hi comment ctermfg=135
"hi comment ctermfg=136
"hi comment ctermfg=137
"hi comment ctermfg=138
"hi comment ctermfg=139
"hi comment ctermfg=140
"hi comment ctermfg=141
"hi comment ctermfg=142
"hi comment ctermfg=143
"hi comment ctermfg=144
"hi comment ctermfg=145
"hi comment ctermfg=146
"hi comment ctermfg=147
"hi comment ctermfg=148
"hi comment ctermfg=149
"hi comment ctermfg=150
"hi comment ctermfg=151
"hi comment ctermfg=152
"hi comment ctermfg=153
"hi comment ctermfg=154
"hi comment ctermfg=155
"hi comment ctermfg=156
"hi comment ctermfg=157
"hi comment ctermfg=158
"hi comment ctermfg=159
"
"hi comment ctermfg=160
"hi comment ctermfg=161
"hi comment ctermfg=162
"hi comment ctermfg=163
"hi comment ctermfg=164
"hi comment ctermfg=165
"hi comment ctermfg=166
"hi comment ctermfg=167
"hi comment ctermfg=168
"hi comment ctermfg=169
"hi comment ctermfg=170
"hi comment ctermfg=171
"hi comment ctermfg=172
"hi comment ctermfg=173
"hi comment ctermfg=174
"hi comment ctermfg=175
"hi comment ctermfg=176
"hi comment ctermfg=177
"hi comment ctermfg=178
"hi comment ctermfg=179
"hi comment ctermfg=180
"hi comment ctermfg=181
"hi comment ctermfg=182
"hi comment ctermfg=183
"hi comment ctermfg=184
"hi comment ctermfg=185
"hi comment ctermfg=186
"hi comment ctermfg=187
"hi comment ctermfg=188
"hi comment ctermfg=189
"hi comment ctermfg=190
"hi comment ctermfg=191
"hi comment ctermfg=192
"hi comment ctermfg=193
"hi comment ctermfg=194
"hi comment ctermfg=195
"hi comment ctermfg=196
"hi comment ctermfg=197
"hi comment ctermfg=198
"hi comment ctermfg=199
"hi comment ctermfg=200
"hi comment ctermfg=201
"hi comment ctermfg=202
"hi comment ctermfg=203
"hi comment ctermfg=204
"hi comment ctermfg=205
"hi comment ctermfg=206
"hi comment ctermfg=207
"hi comment ctermfg=208
"hi comment ctermfg=209
"hi comment ctermfg=210
"hi comment ctermfg=211
"hi comment ctermfg=212
"hi comment ctermfg=213
"hi comment ctermfg=214
"hi comment ctermfg=215
"hi comment ctermfg=216
"hi comment ctermfg=217
"hi comment ctermfg=218
"hi comment ctermfg=219
"hi comment ctermfg=220
"hi comment ctermfg=221
"hi comment ctermfg=222
"hi comment ctermfg=223
"hi comment ctermfg=224
"hi comment ctermfg=225
"hi comment ctermfg=226
"hi comment ctermfg=227
"hi comment ctermfg=228
"hi comment ctermfg=229
"hi comment ctermfg=230
"hi comment ctermfg=231
"
"hi comment ctermfg=232
"hi comment ctermfg=233
"hi comment ctermfg=234
"hi comment ctermfg=235
"hi comment ctermfg=236
"hi comment ctermfg=237
"hi comment ctermfg=238
"hi comment ctermfg=239
"hi comment ctermfg=240
"hi comment ctermfg=241
"hi comment ctermfg=242
"hi comment ctermfg=243
"hi comment ctermfg=244
"hi comment ctermfg=245
"hi comment ctermfg=246
"hi comment ctermfg=247
"hi comment ctermfg=248
"hi comment ctermfg=249
"hi comment ctermfg=250
"hi comment ctermfg=251
"hi comment ctermfg=252
"hi comment ctermfg=253
"hi comment ctermfg=254
"hi comment ctermfg=255
"hi comment ctermfg=256
