" Map leader to which_key
nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'
" default is timeoutlen=1000
set timeoutlen=100

" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0

" Change the colors if you want
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

" =================================================
" This has to be first
call which_key#register('<Space>', 'g:which_key_map')
nmap <silent> <Leader><SPACE>x :bp<CR>
let g:which_key_map =  {
	   \'x': ['bp', 'title' ]
	   \}

" Single mappings
let g:which_key_map['q'] = [ ':q'                     , 'quit']

nnoremap <silent> <leader>a :noh <CR>
let g:which_key_map.a = 'noh'

" f is for floaterterm
let g:which_key_map.t = {
      \ 'name' : '+terminal' ,
      \ ';' : [':FloatermNew --wintype=popup --height=6'        , 'terminal'],
      \ 'f' : [':FloatermNew fzf'                               , 'fzf'],
      \ 'g' : [':FloatermNew tig'                               , 'tig'],
      \ 'l' : [':FloatermNew lazygit'                           , 'lazygit'],
      \ 'p' : [':FloatermNew python'                            , 'python'],
      \ 'i' : [':FloatermNew ipython'                           , 'ipython'],
      \ 'r' : [':RnvimrToggle'                                  , 'ranger'],
      \ 't' : [':FloatermToggle'                                , 'toggle'],
      \ 'y' : [':FloatermNew ytop'                              , 'ytop'],
      \ }

" for python
let g:which_key_map.p = {
      \ 'name' : '+python' ,
      \ 'r' : [':Semshi rename'                       , 'rename all'],
      \ 'b' : [':RainbowToggle'                       , 'rainbow'],
      \ }

" Go to definition in new tab
nmap <leader>pg :tab split<CR>:tabm -1<CR>:call jedi#goto()<CR>
let g:which_key_map.p.g = 'goto'

" s is for search
let g:which_key_map.s = {
      \ 'name' : '+search' ,
      \ '/' : [':History/'     , 'history'],
      \ ';' : [':Commands'     , 'commands'],
      \ 'a' : [':Ag'           , 'text Ag'],
      \ 'b' : [':BLines'       , 'current buffer'],
      \ 'B' : [':Buffers'      , 'open buffers'],
      \ 'c' : [':Commits'      , 'commits'],
      \ 'C' : [':BCommits'     , 'buffer commits'],
      \ 'f' : [':Files'        , 'files'],
      \ 'g' : [':GFiles'       , 'git files'],
      \ 'G' : [':GFiles?'      , 'modified git files'],
      \ 'h' : [':History'      , 'file history'],
      \ 'H' : [':History:'     , 'command history'],
      \ 'l' : [':Lines'        , 'lines'] ,
      \ 'm' : [':Marks'        , 'marks'] ,
      \ 'M' : [':Maps'         , 'normal maps'] ,
      \ 'p' : [':Helptags'     , 'help tags'] ,
      \ 'P' : [':Tags'         , 'project tags'],
      \ 's' : [':Snippets'     , 'snippets'],
      \ 'S' : [':Colors'       , 'color schemes'],
      \ 't' : [':Rg'           , 'text Rg'],
      \ 'T' : [':BTags'        , 'buffer tags'],
      \ 'w' : [':Windows'      , 'search windows'],
      \ 'y' : [':Filetypes'    , 'file types'],
      \ 'z' : [':FZF'          , 'FZF'],
      \ }

" Opening full on stuff
let g:which_key_map.o = {
      \ 'name' : '+shortcuts' ,
      \ 'd' : [':new|te'														           , 'term down'],
      \ 'r' : [':vnew|te'												                   , 'term right'],
      \ 'i' : ['iipython -i '															   , 'ipython'],
      \ 'q' : ['iexit <CR><ESC>:q'															   , 'quit'],
      \ 'h' : [':tabnew|:lcd /home/linux5mon/Projects/Help|:TabooRename Help'              , 'help'],
      \ 'v' : [':tabnew|e $MYVIMRC|:lcd %:p:h|:TabooRename VIMRC'                          , 'vimrc'],
      \ }


" To do with tabs
let g:which_key_map.w = {
      \ 'name' : '+windows' ,
      \ 'c' : [':tabclose'									    , 'close'],
      \ 'h' : ['<C-w>H'                                         , 'move left'],
      \ 'j' : ['<C-w>J'                                         , 'move down'],
      \ 'k' : ['<C-w>K'                                         , 'move up'],
      \ 'l' : ['<C-w>L'                                         , 'move right'],
      \ 'w' : [':ChooseWin'                                     , 'choose win'],
      \ 's' : [':ChooseWinSwap'                                 , 'swap win'],
      \ 't' : [':ChooseWinSwapStay'                             , 'swap stay win'],
      \ }

nnoremap <silent> <leader>wo :TabooOpen 
let g:which_key_map.w.o = 'tab open'
nnoremap <silent> <leader>wr :TabooRename 
let g:which_key_map.w.r = 'tab rename'

" Register which key map
call which_key#register('<Space>', "g:which_key_map")
