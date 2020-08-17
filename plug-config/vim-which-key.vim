" Map leader to which_key
nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'
" default is timeoutlen=1000
set timeoutlen=200

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
" EasyMotion
let g:which_key_map[' '] = {
      \ 'name' : '+easy' ,
      \ 'f' : ['<plug>(easymotion-prefix)f' , 'find {char} to the right'],
      \ 'F' : ['<plug>(easymotion-prefix)F' , 'find {char} to the left'],
      \ 't' : ['<plug>(easymotion-prefix)t' , 'till before the {char} to the right'],
      \ 'T' : ['<plug>(easymotion-prefix)T' , 'till after the {char} to the left'],
      \ 'w' : ['<plug>(easymotion-prefix)w' , 'beginning of word forward'],
      \ 'W' : ['<plug>(easymotion-prefix)W' , 'beginning of WORD forward'],
      \ 'b' : ['<plug>(easymotion-prefix)b' , 'beginning of word backward'],
      \ 'B' : ['<plug>(easymotion-prefix)B' , 'beginning of WORD backward'],
      \ 'e' : ['<plug>(easymotion-prefix)e' , 'end of word forward'],
      \ 'E' : ['<plug>(easymotion-prefix)E' , 'end of WORD forward'],
      \ 'g' : {
        \ 'name' : '+Backwards ' ,
        \ 'e' : ['<plug>(easymotion-prefix)ge' , 'end of word backward'],
        \ 'E' : ['<plug>(easymotion-prefix)gE' , 'end of WORD backward'],
        \ },
      \ 'j' : ['<plug>(easymotion-prefix)j' , 'line downward'],
      \ 'k' : ['<plug>(easymotion-prefix)k' , 'line upward'],
      \ 'n' : ['<plug>(easymotion-prefix)n' , 'jump to latest "/" or "?" forward'],
      \ 'N' : ['<plug>(easymotion-prefix)N' , 'jump to latest "/" or "?" backward.'],
      \ 's' : ['<plug>(easymotion-prefix)s' , 'find(search) {char} forward and backward.'],
      \ }

" Single mappings
let g:which_key_map['q'] = [ ':q'                     , 'quit']

nnoremap <silent> <leader>a :noh<CR>
let g:which_key_map.a = 'noh'


" Opening full on stuff
let g:which_key_map.o = {
      \ 'name' : '+open' ,
      \ 'i' : [':PlugInstall'															   , 'plug install'],
      \ 'c' : [':PlugClean'															       , 'plug clean'],
      \ 'h' : [':tabnew|:lcd /home/linux5mon/Projects/Help|:TabooRename Help'              , 'help'],
      \ 'v' : [':tabnew|e $MYVIMRC|:lcd %:p:h|:TabooRename VIMRC'                          , 'vimrc'],
      \ 'z' : [':tabnew|e ~/.zshrc|:lcd %:p:h|:TabooRename ZSH' 			               , 'zsh'],
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

" f is for floaterterm
let g:which_key_map.t = {
      \ 'name' : '+terminal' ,
      \ ';' : [':FloatermNew --wintype=popup --height=6'        , 'terminal'],
      \ 'f' : [':FloatermNew fzf'                               , 'fzf'],
      \ 'g' : [':FloatermNew lazygit'                           , 'lazygit'],
      \ 'p' : [':FloatermNew python'                            , 'python'],
      \ 'i' : [':FloatermNew ipython'                           , 'ipython'],
      \ 'r' : [':RnvimrToggle'                                  , 'ranger'],
      \ 't' : [':FloatermToggle'                                , 'toggle'],
      \ 'y' : [':FloatermNew ytop'                              , 'ytop'],
      \ 'j' : [':new|te'		   					            , 'term down'],
      \ 'l' : [':vnew|te'					                    , 'term right'],
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

" nnoremap <silent> <leader>wo :TabooOpen 
" let g:which_key_map.w.o = 'tab open'
" nnoremap <silent> <leader>wr :TabooRename 
" let g:which_key_map.w.r = 'tab rename'

" Register which key map
call which_key#register('<Space>', "g:which_key_map")
