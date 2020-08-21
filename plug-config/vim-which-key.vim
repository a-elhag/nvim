" Initial Settings
" Map leader to which_key
nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Register which key map
call which_key#register('<Space>', "g:which_key_map")

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

" Space ==> Easy
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

" b ==> +buffers
let g:which_key_map.b = {
      \ 'name' : '+buffers' ,
      \ 'q' : [':Bclose'														   , 'close'],
      \ 'f' : [':bfirst'														   , 'first'],
      \ 'l' : [':blast'														       , 'last'],
      \ 'n' : [':bnext'															   , 'next'],
      \ 'p' : [':bprevious'														   , 'previous'],
      \ }

" go to buffer
nmap <leader>bt :buffers<CR>:buffer
let g:which_key_map.b.t = 'go to'
nmap <leader>bd :buffers<CR>:bdelete
let g:which_key_map.b.d = 'delete'

" c ==> +coc
let g:which_key_map.c = {
      \ 'name' : '+coc' ,
      \ 'd' : ['<Plug>(coc-diagnostic-next)'									   , 'diagnostic -next'],
      \ 'D' : ['<Plug>(coc-diagnostic-prev)'									   , 'diagnostic -prev'],
      \ 'g' : ['<Plug>(coc-definition)'											   , 'definition'],
      \ 't' : ['<Plug>(coc-type-definition)'									   , 'type definition'],
      \ 'i' : ['<Plug>(coc-implementation)'			 							   , 'implementation'],
      \ 'r' : ['<Plug>(coc-references)'											   , 'references'],
      \ 'n' : ['<Plug>(coc-rename)'												   , 'rename symbol'],
      \ 'm' : [':CocList marketplace'											   , 'marketplace'],
      \ 'p' : [':CocCommand python.setInterpreter'								   , 'set python interpreter'],
      \ }

" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.

" Use K to show documentation in preview window.
nnoremap <silent> <leader>cK :call <SID>show_documentation()<CR>
let g:which_key_map.c.K = 'show documentation'

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Formatting selected code.
xmap <leader>cf <Plug>(coc-format-selected)
nmap <leader>cf  <Plug>(coc-format-selected)
let g:which_key_map.c.f = 'format selected'

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>ca  <Plug>(coc-codeaction-selected)
nmap <leader>ca  <Plug>(coc-codeaction-selected)
let g:which_key_map.c.a = 'code action selected'

" o ==> +open
let g:which_key_map.o = {
      \ 'name' : '+open' ,
      \ 'i' : [':PlugInstall'															   , 'plug install'],
      \ 'c' : [':PlugClean'															       , 'plug clean'],
      \ 'h' : [':tabnew|:lcd /home/linux5mon/Projects/Help|:TabooRename Help'              , 'help'],
      \ 'v' : [':tabnew|e $MYVIMRC|:lcd %:p:h|:TabooRename VIMRC'                          , 'vimrc'],
      \ 'z' : [':tabnew|e ~/.zshrc|:lcd %:p:h|:TabooRename ZSH' 			               , 'zsh'],
      \ }                                                                                               
                                                                                                        
" i ==> +ipython                                                                                        
let g:which_key_map.i = {                                                                               
      \ 'name' : '+ipython' ,                                                                           
      \ 'l' : [':FloatermSend'                              , 'send line'],                              
      \ 'a' : [':%FloatermSend'                             , 'send buffer'],                           
      \ 'w' : [':FloatermSend whos'				            , 'whos'],
      \ 'r' : [':FloatermSend reset -f'				        , 'reset'],
      \ 's' : [':Semshi rename'							    , 'rename all'],
      \ }

nnoremap <silent> <leader>iL :FloatermSend<CR>
let g:which_key_map.i.L = 'send lines'
nnoremap <silent> <leader>iS :FloatermSend 
let g:which_key_map.i.S = 'send custom line'
tnoremap <silent> <F5> ipython --no-autoindent<CR>
nnoremap <silent> <leader>io :FloatermNew --wintype=normal --position=right --width=0.5<CR>ipython --no-autoindent<CR>
let g:which_key_map.i.o = 'open ipython'

" p ==> +python
let g:which_key_map.p = {
      \ 'name' : '+python' ,
      \ 'b' : [':RainbowToggle'                       , 'rainbow'],
      \ 's' : [':Semshi rename'                       , 'rename all'],
      \ 'n' : [':Semshi goto name next'               , 'goto name next'],
      \ 'N' : [':Semshi goto name prev'               , 'goto name prev'],
      \ 'c' : [':Semshi goto class next'              , 'goto class next'],
      \ 'C' : [':Semshi goto class prev'              , 'goto class prev'],
      \ 'f' : [':Semshi goto function next'           , 'goto func next'],
      \ 'F' : [':Semshi goto function prev'           , 'goto func prev'],
      \ }

" s ==> +search
let g:which_key_map.s = {
      \ 'name' : '+search' ,
      \ '/' : [':History/'     , 'history'],
      \ ';' : [':Commands'     , 'commands'],
      \ 'a' : [':Ag'           , 'text Ag'],
      \ 'B' : [':BLines'       , 'current buffer'],
      \ 'b' : [':Buffers'      , 'open buffers'],
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

" t ==> +terminal
let g:which_key_map.t = {
      \ 'name' : '+terminal' ,
      \ 'd' : [':Denite floaterm'                           					 , 'denite'],
      \ 'f' : [':FloatermNew fzf'                              					 , 'fzf'],
      \ 'g' : [':FloatermNew lazygit'                          					 , 'lazygit'],
      \ 'r' : [':RnvimrToggle'                                 					 , 'ranger'],
      \ 'y' : [':FloatermNew ytop'                             					 , 'ytop'],
      \ ';' : [':FloatermNew --wintype=popup --height=8'						 , 'terminal'],
      \ 'j' : [':FloatermNew --wintype=normal --position=bottom --height=0.5'    , 'term down'],
      \ 'l' : [':FloatermNew --wintype=normal --position=right --width=0.5'      , 'term right'],
      \ 'n' : [':FloatermNew'                                  					 , 'new'],
      \ 'k' : [':FloatermKill'                                 					 , 'kill'],
      \ 't' : [':FloatermToggle'                               					 , 'toggle'],
      \ 'L' : [':FloatermNext'                             					     , 'next'],
      \ 'H' : [':FloatermPrev'                             					     , 'prev'],
      \ }

nmap <leader>tc :set scrollback=15 \| sleep 100m \| set scrollback=10000<cr>
let g:which_key_map.t.c = 'clear'

" w ==> +windows
let g:which_key_map.w = {
      \ 'name' : '+windows' ,
      \ 'c' : [':tabclose'									    , 'tab close'],
      \ 'n' : [':tabnew'									    , 'tab new'],
      \ 'h' : ['<C-w>H'                                         , 'move left'],
      \ 'j' : ['<C-w>J'                                         , 'move down'],
      \ 'k' : ['<C-w>K'                                         , 'move up'],
      \ 'l' : ['<C-w>L'                                         , 'move right'],
      \ 'w' : [':ChooseWin'                                     , 'choose win'],
      \ 's' : [':ChooseWinSwap'                                 , 'choose swap'],
      \ 'u' : [':UndotreeToggle'                                , 'undotree'],
      \ 'o' : ['<C-W>o' 									    , 'full screen'],
      \ 't' : ['<C-W>T' 									    , 'window to new tab'],
      \ 'z' : ['<C-W>z' 									    , 'close preview window'],
      \ }

" extras
" nnoremap <silent> <leader>wo :TabooOpen 
" let g:which_key_map.w.o = 'tab open'
" nnoremap <silent> <leader>wr :TabooRename 
" let g:which_key_map.w.r = 'tab rename'
