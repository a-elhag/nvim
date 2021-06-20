" Auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugged') 


" Git Plugins

" Git diff icons on the side of the file lines
Plug 'mhinz/vim-signify'
" Git command line
Plug 'tpope/vim-fugitive'

" Looks

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Colorize any text in rgb format (#00cd90)
Plug 'lilydjwg/colorizer'
" Theme
Plug 'joshdick/onedark.vim'

" Markdown Plugins

Plug 'godlygeek/tabular' | Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }

" Misc
" Rename Tabs 
Plug 'gcmt/taboo.vim'
" Rainbow parenthesises
Plug 'luochen1990/rainbow'
" Ranger
Plug 'kevinhwang91/rnvimr'
" Choosing windows
Plug 't9md/vim-choosewin'
" Easy Motion
Plug 'easymotion/vim-easymotion'
" HighlightedYank
Plug 'machakann/vim-highlightedyank'
" Better language packs
Plug 'sheerun/vim-polyglot'
" Smooth Scrolling
Plug 'psliwka/vim-smoothie'
" EMACS (shh)
Plug 'liuchengxu/vim-which-key'
" Show Color Table :XtermColorTable
Plug 'guns/xterm-color-table.vim'

" Python
" MultiLine Indent
Plug 'vim-scripts/indentpython.vim'

" Jupyter mine
" Plug 'a-elhag/jupyter-vim'
" Syntax
" Plug 'vim-python/python-syntax'
" Jupytext
" Plug 'goerz/jupytext.vim'

" => Python AutoCompletion
" This is required for the whole shebangabang to go down
Plug 'roxma/nvim-yarp' " 

" The actual plugin
Plug 'ncm2/ncm2'

" Won't see anything without these
Plug 'ncm2/ncm2-bufword' " => Autocomplete for previously written
Plug 'ncm2/ncm2-path'    " => Autocomplete for path
Plug 'ncm2/ncm2-jedi'    " => AUtocomplete for python

" Terminal
" Floaterm
Plug 'voldikss/vim-floaterm'

"  Will do

" Debugger
" Plug 'puremourning/vimspector'

" Python Error Checker 
" Plug 'vim-syntastic/syntastic'

" Table Creator
" Plug 'dhruvasagar/vim-table-mode'

" Class/module browser
" Plug 'majutsushi/tagbar'

" Surround
" Plug 'tpope/vim-surround'

" Fuzzy Finder
" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Plug 'junegunn/fzf.vim'

call plug#end()
