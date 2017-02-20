"===============================================================================
" Plugin source
"===============================================================================
"'Shougo/deoplete.nvim'

"===============================================================================
" Plugin Configurations
"===============================================================================
let g:deoplete#enable_at_startup = 1

let g:deoplete#omni#functions = {}
let g:deoplete#sources = {}
let g:deoplete#sources._ = ['file', 'neosnippet']
let g:deoplete#omni#input_patterns = {}

" Elm
let g:deoplete#omni#functions.elm = ['elm#Complete']
let g:deoplete#omni#input_patterns.elm = '[^ \t]+'
let g:deoplete#sources.elm = ['omni'] + g:deoplete#sources._
"===============================================================================
" Plugin Keymappings
"===============================================================================

"===============================================================================
" Unite Keymap Menu Item(s)
"===============================================================================
