" Taboo (rename tabs)
set guioptions-=e
set sessionoptions+=tabpages,globals

" Vim ChooseWin
let g:choosewin_overlay_enable = 1

" Deoplete
let g:deoplete#enable_at_startup = 1
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Disable autocompletion (using deoplete instead)
let g:jedi#completions_enabled = 0

" All these mappings work only for python code:
" Go to definition
let g:jedi#goto_command = ',d'
" Find ocurrences
let g:jedi#usages_command = ',o'
" Find assignments
let g:jedi#goto_assignments_command = ',a'
" Stop popup window
autocmd FileType python setlocal completeopt-=preview

" Rainbow
let g:rainbow_active = 1

" No remap
let g:no_plugin_maps = 1 "don't know
let g:colorizer_nomap = 1 "colorizer
let g:jedi#auto_initialization = 0 "deoplete+jedi
let g:bclose_no_plugin_maps = 1 "bclose
let g:ipy_perform_mappings = 0 "cpyvke
