source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/themes/onedark.vim
source $HOME/.config/nvim/themes/papercolor.vim

" Startup Time (at the beginning)
" --startuptime log.txt

" pep8
au BufNewFile,BufRead *.py
    \ set textwidth=120 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix 

let g:python3_host_prog = '/usr/bin/python3'

" Disable Netrw
let g:loaded_netrw       = 1
let g:loaded_netrwPlugin = 1

" Taboo (rename tabs)
set guioptions-=e
set sessionoptions+=tabpages,globals

" Nerd Tree
nmap gk :NERDTreeToggle<CR> 

" enable line numbers
let NERDTreeShowLineNumbers=1 
" make sure relative line numbers are used
autocmd FileType nerdtree setlocal relativenumber 

" Deoplete
let g:deoplete#enable_at_startup = 1
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Jedi-vim ------------------------------

" Disable autocompletion (using deoplete instead)
let g:jedi#completions_enabled = 0

" All these mappings work only for python code:
" Go to definition
let g:jedi#goto_command = ',d'
" Find ocurrences
let g:jedi#usages_command = ',o'
" Find assignments
let g:jedi#goto_assignments_command = ',a'
" Go to definition in new tab
nmap ,D :tab split<CR>:tabm -1<CR>:call jedi#goto()<CR>

" Rainbow Parenthesises (luochen1990/rainbow)
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle
