"[PlugInstall]
call plug#begin('~/.local/share/nvim/site/plugged') " See these later!!!

" -------------
" Python
" -------------
" Curses PYthon Variable and Kerne Explorer
" in terminal ==> cpyvke | in terminal ==> cpyvke-launch-ipython
Plug 'ipselium/cpyvke'
" Ctrl-c to auto connect
" F5 run the current buffer | F9 run the current line | F10 run the selected lines (visual mode)
Plug 'ipselium/vim-cpyvke'
" Semshi (Adds good highlighting and replacing)
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
" Git/mercurial/others diff icons on the side of the file lines
Plug 'mhinz/vim-signify'
" Autocomplete kinda
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" do not forget to install jedi
Plug 'deoplete-plugins/deoplete-jedi'
" Going to help files
Plug 'davidhalter/jedi-vim'
" MultiLine Indent
Plug 'vim-scripts/indentpython.vim'
" Python Flake8 (<F7>)
Plug 'nvie/vim-flake8'
" Python Error Checker 
" Plug 'vim-syntastic/syntastic'

" -------------
" Tim Pope
" -------------
" Surround
Plug 'tpope/vim-surround'
" NerdTree
Plug 'preservim/nerdtree'
" Git command line
Plug 'tpope/vim-fugitive'
" Replace <q> </q> to ' ', with simple key presses
" Plug 'tpope/vim-surround'

" -------------
" Misc
" -------------
" Better language packs
Plug 'sheerun/vim-polyglot'
" Completion from other opened files
Plug 'Shougo/context_filetype.vim'
" Rename Tabs 
Plug 'gcmt/taboo.vim'
" Smooth Scrolling
Plug 'psliwka/vim-smoothie'
" Rainbow parenthesises
Plug 'luochen1990/rainbow'
" Ranger file browser
Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'

" -------------
" Looks
" ------------

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Powerline
Plug 'Lokaltog/powerline'
" A lot of colors
Plug 'rafi/awesome-vim-colorschemes'
" Color Scheme Switcher <F8> <Shift-F8>
Plug 'xolox/vim-colorscheme-switcher'
Plug 'xolox/vim-misc'
" Show Color Table :XtermColorTable
Plug 'guns/xterm-color-table.vim'
" Paint css colors with the real color
Plug 'lilydjwg/colorizer'
" HighlightedYank
Plug 'machakann/vim-highlightedyank'
" Theme
Plug 'kyoz/purify', { 'rtp': 'vim' } " rtp means repository to use (subdirectory)

" ----------------
"  Will do
" ---------------

" Code and files fuzzy finder
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Plug 'junegunn/fzf.vim'
" Jupyter Console
" Plug 'jupyter-vim/jupyter-vim'
" Class/module browser
" Plug 'majutsushi/tagbar'

call plug#end()

" Startup Time (at the beginning)
" --startuptime log.txt

" Line Numbers
set number              " Show current line number
set relativenumber      " Show relative line number

" Live Substitution
set inccommand=nosplit

" Disable annoying beeping
set noerrorbells
set belloff=all

" Pretty Python (And turn off hightlighting whitespace)
syntax on
syn match   pythonSpaceError    display excludenl "\s\+$"

" New Split (:new/:vnew)
set splitright
set splitbelow

" clear search results
nnoremap <silent> // :noh<CR>

" standard
set tabstop=4
set softtabstop=4
set shiftwidth=4
set backspace=indent,eol,start " backspace over everything in insert mode
set encoding=utf-8 " Encoding

" Have Ctrl+Z do nothing
nnoremap <C-z> <nop> 
map ZZ <Nop>

" Terminal Shortcuts
tnoremap <Esc> <C-\><C-n>

" Show history
set history=50

" Allow clipboard to share
set clipboard+=unnamedplus

" Move between windows
tnoremap <C-h> <C-\><C-n><C-w>h
tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-k> <C-\><C-n><C-w>k
tnoremap <C-l> <C-\><C-n><C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <A-h> <C-w>H
nnoremap <A-j> <C-w>J
nnoremap <A-k> <C-w>K
nnoremap <A-l> <C-w>L
inoremap <C-h> <esc><C-w>h
inoremap <C-j> <esc><C-w>j
inoremap <C-k> <esc><C-w>k
inoremap <C-l> <esc><C-w>l
inoremap <A-h> <esc><C-w>H
inoremap <A-j> <esc><C-w>J
inoremap <A-k> <esc><C-w>K
inoremap <A-l> <esc><C-w>L


" tab navigation mappings
nnoremap g<C-k> :TabooOpen 
nnoremap g<C-j> :tabm 

" 256 colors 
let $NVIM_TUI_ENABLE_TRUE_COLOR=1 
set termguicolors
let g:impact_transbg=1
colorscheme PaperColor
" colorscheme onedark
set cursorline
let g:rainbow_active = 1
hi Normal guibg=NONE ctermbg=NONE

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
" nmap <F6> :NERDTreeToggle<CR> 
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
