" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugged') 

" Python
" Semshi (Adds good highlighting and replacing)
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
" Git diff icons on the side of the file lines
Plug 'mhinz/vim-signify'
" MultiLine Indent
Plug 'vim-scripts/indentpython.vim'
" Python Flake8 (<F7>)
Plug 'nvie/vim-flake8'
" Jupyter mine
Plug 'a-elhag/jupyter-vim'
" Conquer of Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Syntax
Plug 'vim-python/python-syntax'
" Jupytext
Plug 'goerz/jupytext.vim'

" Other Languages
Plug 'jiangmiao/auto-pairs'

" Markdown
Plug 'godlygeek/tabular' | Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }

" Tim Pope
" Surround
Plug 'tpope/vim-surround'
" Git command line
Plug 'tpope/vim-fugitive'

" Misc
" Better language packs
Plug 'sheerun/vim-polyglot'
" Completion from other opened files
Plug 'Shougo/context_filetype.vim'
" Rename Tabs 
Plug 'gcmt/taboo.vim'
" Rainbow parenthesises
Plug 'luochen1990/rainbow'
" Fuzzy Finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Plug 'airblade/vim-rooter'
" EMACS (shh)
Plug 'liuchengxu/vim-which-key'
" Floaterm
Plug 'voldikss/vim-floaterm'
" Ranger
Plug 'kevinhwang91/rnvimr'
" Easy Motion
Plug 'easymotion/vim-easymotion'
" Close Buffer without Closing Window
Plug 'rbgrouleff/bclose.vim'
" Animate windows
" Plug 'camspiers/animate.vim'

" Windows
" Choosing windows
Plug 't9md/vim-choosewin'
" Smooth Scrolling
Plug 'psliwka/vim-smoothie'

" Looks

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Powerline
Plug 'Lokaltog/powerline'
" Look further for this
Plug 'xolox/vim-misc'
" Show Color Table :XtermColorTable
Plug 'guns/xterm-color-table.vim'
" HighlightedYank
Plug 'machakann/vim-highlightedyank'
" Color 
Plug 'lilydjwg/colorizer'

" Theme
Plug 'joshdick/onedark.vim'

"  Will do

" Debugger
" Plug 'puremourning/vimspector'
" Python Error Checker 
" Plug 'vim-syntastic/syntastic'
" Table Creator
" Plug 'dhruvasagar/vim-table-mode'
" Class/module browser
" Plug 'majutsushi/tagbar'

call plug#end()
