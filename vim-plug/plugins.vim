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
" Powerline
Plug 'Lokaltog/powerline'
" Color 
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
" Floaterm
Plug 'voldikss/vim-floaterm'
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
" Semshi (Adds good highlighting and replacing)
" Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
" MultiLine Indent
Plug 'vim-scripts/indentpython.vim'
" Python Flake8 (<F7>)
Plug 'nvie/vim-flake8'
" Jupyter mine
" Plug 'a-elhag/jupyter-vim'
" Syntax
" Plug 'vim-python/python-syntax'
" Jupytext
" Plug 'goerz/jupytext.vim'

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
