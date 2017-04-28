set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

"syntax keyword IDLangConditional foreach endforeach

let g:colors_name = "laurel_colors"

hi Boolean ctermfg=67 ctermbg=NONE cterm=NONE
hi Character ctermfg=67 ctermbg=NONE cterm=NONE
hi ColorColumn ctermfg=NONE ctermbg=234 cterm=NONE
hi Comment ctermfg=245 ctermbg=NONE cterm=NONE
hi Conditional ctermfg=180
hi Constant ctermfg=68 ctermbg=NONE cterm=NONE

" Cursor seems to have no effect...
hi Cursor ctermfg=none ctermbg=none cterm=underline
hi LineNr ctermfg=102 ctermbg=0 cterm=none

hi CursorLineNr ctermfg=228 ctermbg=233 cterm=none
hi CursorColumn ctermfg=NONE ctermbg=23 cterm=NONE
hi CursorLine ctermfg=NONE ctermbg=233 cterm=NONE
hi Visual ctermfg=NONE ctermbg=240 cterm=NONE

hi IncSearch ctermfg=none ctermbg=234 cterm=inverse
hi Search ctermfg=none ctermbg=234 cterm=inverse

hi SpellBad ctermfg=none ctermbg=none cterm=underline
hi SpellCap ctermfg=none ctermbg=none cterm=none
hi SpellRare ctermfg=15 ctermbg=none cterm=none

hi MatchParen ctermfg=228 ctermbg=NONE cterm=underline

hi Define ctermfg=180 ctermbg=NONE cterm=NONE
hi Define ctermfg=200
hi DiffAdd ctermfg=231 ctermbg=64 cterm=bold
hi DiffChange ctermfg=231 ctermbg=23 cterm=NONE
hi DiffDelete ctermfg=88 ctermbg=NONE cterm=NONE
hi DiffText ctermfg=231 ctermbg=24 cterm=bold
hi Directory ctermfg=68 ctermbg=NONE cterm=NONE
hi Error ctermbg=white ctermfg=65 cterm=none
hi ErrorMsg ctermfg=NONE ctermbg=NONE cterm=NONE
hi Float ctermfg=68 ctermbg=NONE cterm=NONE
hi Folded ctermfg=247 ctermbg=16 cterm=NONE
hi Function ctermfg=107
hi Identifier ctermfg=white ctermbg=NONE cterm=NONE
hi Keyword ctermfg=180 ctermbg=NONE cterm=NONE
hi Label ctermfg=107 ctermbg=NONE cterm=NONE
hi NonText ctermfg=59 ctermbg=black cterm=NONE
hi Normal ctermfg=231 ctermbg=16 cterm=NONE
hi Number ctermfg=67 ctermbg=NONE cterm=NONE
hi Operator ctermfg=67 ctermbg=NONE cterm=NONE
hi Pmenu ctermfg=153 ctermbg=NONE cterm=NONE
hi PmenuSel ctermfg=NONE ctermbg=59 cterm=NONE
hi PreProc ctermfg=238 ctermbg=NONE cterm=NONE
hi Readlineinclude ctermfg=white ctermbg=NONE cterm=NONE
hi Special ctermfg=white ctermbg=NONE cterm=NONE
hi SpecialKey ctermfg=59 ctermbg=23 cterm=NONE
hi Statement ctermfg=107 ctermbg=NONE cterm=NONE
hi StatusLine ctermfg=231 ctermbg=59 cterm=bold
hi StatusLineNC ctermfg=231 ctermbg=59 cterm=NONE
hi StorageClass ctermfg=113 ctermbg=NONE cterm=NONE
hi String ctermfg=231 ctermbg=NONE cterm=NONE
hi Tag ctermfg=153 ctermbg=NONE cterm=NONE
hi Title ctermfg=231 ctermbg=NONE cterm=bold
hi Todo ctermfg=247 ctermbg=NONE cterm=inverse,bold
hi Type ctermfg=153 ctermbg=NONE cterm=NONE
hi Type ctermfg=white
hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi VertSplit ctermfg=59 ctermbg=59 cterm=NONE
hi WarningMsg ctermfg=NONE ctermbg=NONE cterm=NONE

"hi vimCommentString ctermfg=243
"hi vimCommentTitle ctermfg=243
hi vimEnvvar ctermfg=white
hi vimFgBgAttrib ctermfg=180
hi vimFuncName ctermfg=180
hi vimHiAttrib ctermfg=180
hi vimLineComment ctermfg=245
hi vimNotation ctermfg=180
hi vimMapModKey ctermfg=180
hi vimOption ctermfg=180
hi vimSynContains ctermfg=180
hi vimSynRegOpt ctermfg=180
hi vimVar ctermfg=180

hi zshCommands ctermfg=107
hi zshDelimiter ctermfg=147
hi zshKeyword ctermfg=180
hi zshOptions ctermfg=180
hi zshTypes ctermfg=147

hi bashSpecialVariables ctermfg=107
hi bashStatement ctermfg=white

hi shAlias ctermfg=white
hi shComment ctermfg=245
hi shConditional ctermfg=180
hi shDerefSimple ctermfg=white
hi shDerefSpecial ctermfg=white
hi shDerefVar ctermfg=white
hi shDoubleQuote ctermfg=white
hi shFunctionKey ctermfg=107
hi shFunctionOne ctermfg=180
hi shFunction ctermfg=180
hi shLoop ctermfg=180
hi shParen ctermfg=231
hi shQuote ctermfg=white
hi shRepeat ctermfg=white
hi shSingleQuote ctermfg=white
hi shSetList ctermfg=180
hi shStatement ctermfg=107
hi shTestOpr ctermfg=white
hi shVariable ctermfg=107

hi cshDblQuote ctermfg=67
hi tcshDQuote ctermfg=67
hi tcshSQuote ctermfg=67

hi bibKey ctermfg=180

hi texComment ctermfg=245
hi texDoctype ctermfg=186
hi texDoctypeArgs ctermfg=67

hi texNewCmd ctermfg=186
hi texCmdName ctermfg=186
hi texCmdBody ctermfg=180
hi texCmdArgs ctermfg=67
hi texNewEnv ctermfg=186
hi texEnvName ctermfg=186
hi texDefParm ctermfg=186

hi texSection ctermfg=67
hi texBeginEnd ctermfg=107
hi texBeginEndName ctermfg=180
hi texStatement ctermfg=107
hi texInputfile ctermfg=180
hi texInputfileopt ctermfg=67

hi texAccent ctermfg=103
hi texTypeStyle ctermfg=103
hi texTypeSize ctermfg=67
hi texLength ctermfg=67

hi texCite ctermfg=103
hi texRefZone ctermfg=103
"hi texParen ctermfg=200
" All verbatim text?
hi texZone ctermfg=245
hi texString ctermfg=250
hi texSpecialKey ctermfg=131

hi Delimiter ctermfg=240
hi texSpecialChar ctermfg=240

hi texGreek ctermfg=107
hi texSuperscript ctermfg=white
hi texSubscript ctermfg=white
hi texMathSymbol ctermfg=67
hi texMathOper ctermfg=white
hi texMathMatcher ctermfg=white
hi texMathZoneAS ctermfg=white
hi texMathZoneE ctermfg=white
hi texMathZoneW ctermfg=white
hi texMathZoneX ctermfg=white
hi texMathZoneY ctermfg=white
hi texOnlyMath ctermfg=none ctermbg=none cterm=bold

" Latex things I probably won't use
"hi texDocZone ctermfg=white  \url{texDocZone}


" HTML
hi htmlArg ctermfg=79
hi htmlEndTag ctermfg=117
hi htmlItalic ctermfg=217 ctermbg=none cterm=none
hi htmlString ctermfg=white
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


" IDL
hi IDLangComment ctermfg=245
hi IDLangContinueLine cterm=none ctermbg=none ctermfg=240
hi IDLangImportant ctermfg=131
hi IDLangSSW ctermfg=229

hi IDLangRoutine ctermfg=180
hi IDLangConditional ctermfg=96
hi IDLangStatement ctermfg=65
hi IDLangSystem ctermfg=144

hi IDLangKeyword ctermfg=white
hi IDLangStrucvar ctermfg=white

hi IDLangNumber ctermfg=67
hi IDLangRealNumber ctermfg=67
hi IDLangOperator ctermfg=67
hi IDLangString ctermfg=67


hi pythonBuiltIn ctermfg=65
hi pythonConditional ctermfg=180
hi pythonDocstring ctermfg=245
hi pythonExceptions ctermfg=131
hi pythonFunction ctermfg=222
hi pythonInclude ctermfg=109
hi pythonNumber ctermfg=67
hi pythonOperator ctermfg=180
hi pythonQuotes ctermfg=white
hi pythonRepeat ctermfg=180
hi pythonStatement ctermfg=65
hi pythonString ctermfg=67
"   winners:        109 110 152 153 188 195
"   others:         4 25 32 68 69 74 111 116 117
hi pythonTripleQuotes ctermfg=248

" Colors!

" Black
"   others: 0 16
"
" Blue/cyan/green
"    69 81 87 123 159 6 14 23 24 30 31 37 38 43 44 50 79 80 86 115 122
"   12 66 73 67 68 74 75 109 110 111 116 117 152 153
"   65 72 107 108 150 151 157 158
"   64 107 144 149 192 188 193 194 195
"     108 is nice. Use this for something :)
"   106 113 120 191
"   22 28 35 58 101 114 119 121 142 143 148 154 155 156
"
" Purple
"   winners:
"   189 146 183 103 60 182 139 96 183
"   others:    53 54 55 56 57 62 63 92 93 97 98 99 104 105 129 134 135 140 141 147 176 177 219
"
" Pink/peach
"   orange:     137 173 180 223 216
"   peach:      95 131 167 138   174(complements 180)  181 217
"   pink:       132 139 168 175 218
"   pale:       224 225
"   others:     203 204 205 206 209 210 211 125 126 169 197 198 212 213 231
"
" Red      01 09 52 88 160 196 124
" Magenta  133 170 207
"    bright: 161 162 163 171 199
"
" Yellow
"   winners:    227 228 229 230
"   others:     11 178 179 184 185 186 187 220
"
" Orange        130 166 172 202 208 214 215 221 222
"
" Gray
"   winners:    145
"   others:     7 8 15 59 102 232-->256
