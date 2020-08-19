" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugged') 

" Python

" Curses PYthon Variable and Kerne Explorer
" in terminal ==> cpyvke | in terminal ==> cpyvke-launch-ipython
Plug 'ipselium/cpyvke'
Plug 'a-elhag/vim-cpyvke'
" Semshi (Adds good highlighting and replacing)
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
" Git/mercurial/others diff icons on the side of the file lines
Plug 'mhinz/vim-signify'
" Autocomplete kinda
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" do not forget to install jedi
" Plug 'deoplete-plugins/deoplete-jedi'
" Going to help files
" Plug 'davidhalter/jedi-vim'
" MultiLine Indent
Plug 'vim-scripts/indentpython.vim'
" Python Flake8 (<F7>)
Plug 'nvie/vim-flake8'
" Debugger
" Plug 'puremourning/vimspector'
" Python Error Checker 
" Plug 'vim-syntastic/syntastic'


" Tim Pope

" Surround
Plug 'tpope/vim-surround'
" Git command line
Plug 'tpope/vim-fugitive'
" Replace <q> </q> to ' ', with simple key presses
" Plug 'tpope/vim-surround'

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
" Register Viewer
Plug 'junegunn/vim-peekaboo'
" Close Buffer without Closing Window
Plug 'rbgrouleff/bclose.vim'
" Undo Tree
Plug 'mbbill/undotree'

" Windows

" Choosing windows
Plug 't9md/vim-choosewin'
" Animation
Plug 'camspiers/animate.vim'
" Smooth Scrolling
Plug 'psliwka/vim-smoothie'

" Looks

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
" HighlightedYank
Plug 'machakann/vim-highlightedyank'
" Color 
Plug 'lilydjwg/colorizer'

" Theme

Plug 'kyoz/purify', { 'rtp': 'vim' } " rtp means repository to use (subdirectory)
Plug 'joshdick/onedark.vim'

"  Will do

" Jupyter Console
" Plug 'jupyter-vim/jupyter-vim'
" Class/module browser
" Plug 'majutsushi/tagbar'

call plug#end()


