" set leader key
let g:mapleader = "\<Space>"

syntax enable                           " Enables syntax highlighing
set nowrap                              " Display long lines as just one line
set encoding=utf-8                      " The encoding displayed
set fileencoding=utf-8                  " The encoding written to file
set pumheight=10                        " Makes popup menu smaller
" set cmdheight=2                         " More space for displaying messages
set ruler         			            " Show the cursor position all the time
set iskeyword+=-                      	" treat dash separated words as a word text object"
" set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set number                              " Line numbers
set cursorline                          " Enable highlighting of the current line
set clipboard=unnamedplus               " Copy paste between vim and everything else

au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC

set relativenumber      " Show relative line number
set inccommand=nosplit " Live Substitution

" Disable annoying beeping
set noerrorbells
set belloff=all

" standard
set tabstop=4
set softtabstop=4
set shiftwidth=4
set backspace=indent,eol,start " backspace over everything in insert mode

" Show history
set history=50

" Learn more about these commands
" set hidden                              " Required to keep multiple buffers open multiple buffers
" set conceallevel=0                      " So that I can see `` in markdown files
" set smartindent                         " Makes indenting smart
" set autoindent                          " Good auto indent
" set laststatus=0                        " Always display the status line
" set background=dark                     " tell vim what the background color looks like
" set showtabline=2                       " Always show tabs
" set noshowmode                          " We don't need to see things like -- INSERT -- anymore
" set formatoptions-=cro                  " Stop newline continution of comments
"set autochdir                           " Your working directory will always be the same as your working directory


" You can't stop me
" cmap w!! w !sudo tee %
