"===============================================================================
" Plugin source
"===============================================================================
"'neomake/neomake'

"===============================================================================
" Plugin Configurations
"===============================================================================
" let g:neomake_javascript_enabled_makers = ['eslint']
"
" Disabling *.ex files because it keeps throwing errors :(
autocmd! BufWritePost,BufEnter *.js,*.elm silent NeomakeFile

"===============================================================================
" Plugin Keymappings
"===============================================================================

"===============================================================================
" Unite Keymap Menu Item(s)
"===============================================================================
