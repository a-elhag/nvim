" ==> Auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugged') 

" ==> Git Plugins
Plug 'idanarye/vim-merginal' " Git merginal
Plug 'mhinz/vim-signify'     " Git diff icons on the side of the file lines
Plug 'tpope/vim-fugitive'    " Git command line
Plug 'tpope/vim-rhubarb'     " Go to github

" ==> Looks
Plug 'joshdick/onedark.vim' " Theme
Plug 'lilydjwg/colorizer'   " Colorize any text in rgb format (#00cd90)
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" ==> Markdown Plugins
Plug 'godlygeek/tabular' | Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }

" ==> Junegunn
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/gv.vim'       " Git commit browser
Plug 'junegunn/vim-peekaboo'              " See the register

" ==> Misc
Plug 'easymotion/vim-easymotion'          " Easy Motion
Plug 'haya14busa/vim-easyoperator-phrase' " More easy motion
Plug 'gcmt/taboo.vim'                     " Rename Tabs
Plug 'guns/xterm-color-table.vim'         " Show Color Table :XtermColorTable
Plug 'junegunn/vim-easy-align'            " Aligning
Plug 'kevinhwang91/rnvimr'                " Ranger
Plug 'liuchengxu/vim-which-key'           " EMACS (shh)
Plug 'luochen1990/rainbow'                " Rainbow parenthesises
Plug 'machakann/vim-highlightedyank'      " HighlightedYank
Plug 'mbbill/undotree'                    " Exposes vims undo tree
Plug 'psliwka/vim-smoothie'               " Smooth Scrolling
Plug 'sheerun/vim-polyglot'               " Better language packs
Plug 't9md/vim-choosewin'                 " Choosing windows

" ==> Python
Plug 'vim-scripts/indentpython.vim' " MultiLine Indent
Plug 'dense-analysis/ale'           " ALE
" Plug 'a-elhag/jupyter-vim'        " Jupyter mine
" Plug 'goerz/jupytext.vim'         " Jupytext
" Plug 'vim-python/python-syntax'   " Syntax

" ==> Terminal
Plug 'voldikss/vim-floaterm' " Floaterm
Plug 'mcchrish/nnn.vim'      " NNN

" ==> Will do

" Plug 'dhruvasagar/vim-table-mode'                   " Table Creator
" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " Fuzzy Finder
" Plug 'junegunn/fzf.vim'
" Plug 'majutsushi/tagbar'                            " Class/module browser
" Plug 'puremourning/vimspector'                      " Debugger
" Plug 'tpope/vim-commentary'                         " Commenting
" Plug 'tpope/vim-surround'                           " Surround
" Plug 'vim-syntastic/syntastic'                      " Python Error Checker

call plug#end()
