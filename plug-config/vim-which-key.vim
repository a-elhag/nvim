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
      \ 'f' : ['<plug>(easymotion-prefix)f' , ''],
      \ 'F' : ['<plug>(easymotion-prefix)F' , ''],
      \ 't' : ['<plug>(easymotion-prefix)t' , ''],
      \ 'T' : ['<plug>(easymotion-prefix)T' , ''],
      \ 'w' : ['<plug>(easymotion-prefix)w' , ''],
      \ 'W' : ['<plug>(easymotion-prefix)W' , ''],
      \ 'b' : ['<plug>(easymotion-prefix)b' , ''],
      \ 'B' : ['<plug>(easymotion-prefix)B' , ''],
      \ 'e' : ['<plug>(easymotion-prefix)e' , ''],
      \ 'E' : ['<plug>(easymotion-prefix)E' , ''],
      \ 'g' : {
        \ 'name' : '+Backwards ' ,
        \ 'e' : ['<plug>(easymotion-prefix)ge' , 'end of word backward'],
        \ 'E' : ['<plug>(easymotion-prefix)gE' , 'end of WORD backward'],
        \ },
      \ 'j' : ['<plug>(easymotion-prefix)j' , ''],
      \ 'k' : ['<plug>(easymotion-prefix)k' , ''],
      \ 'n' : ['<plug>(easymotion-prefix)n' , ''],
      \ 'N' : ['<plug>(easymotion-prefix)N' , ''],
      \ 's' : ['<plug>(easymotion-prefix)s' , 'search'],
      \ }

" Single mappings
let g:which_key_map['q'] = [ ':q'                     , 'quit']

nnoremap <silent> <leader>a :noh<CR>
let g:which_key_map.a = 'noh'

" b ==> +buffers
let g:which_key_map.b = {
      \ 'name' : '+buffers' ,
      \ 'p' : [':bprevious' 									    			   , 'previous'],
      \ 'n' : [':bnext' 									        			   , 'next'],
      \ 'c' : [':lcd %:p:h' 									    			   , 'change dir'],
      \ 'q' : [':Bclose'														   , 'close'],
      \ }
" go to buffer
nnoremap <leader>bt :buffers<CR>:buffer
let g:which_key_map.b.t = 'go to'
nnoremap <leader>bd :buffers<CR>:bdelete
let g:which_key_map.b.d = 'delete'
nnoremap <leader>bp :pwd<CR>
let g:which_key_map.b.p = 'print dir'

" c ==> +coc
let g:which_key_map.c = {
      \ 'name' : '+coc' ,
      \ 'a' : [':CocAction'	                                       , 'action'],
      \ 'c' : [':CocCommand'							           , 'command'],
      \ 'g' : [':CocConfig'  							           , 'config'],
      \ 'm' : [':CocList marketplace'					           , 'market place'],
      \ }

" d ==> +debug
let g:which_key_map.d = {                                                                               
      \ 'name' : '+debug ipython' ,                                                                           
      \ 'a' : [':FloatermSend a'         , 'argument'],                              
      \ 'b' : [':FloatermSend b'         , 'break'],                              
      \ 'c' : [':FloatermSend c'         , 'continue'],                              
      \ 'd' : [':FloatermSend d'         , 'down'],                              
      \ 'e' : [':FloatermSend exit'      , 'exit'],                              
      \ 'h' : [':FloatermSend h'         , 'help'],                              
      \ 'i' : [':FloatermSend i'         , 'interact'],                              
      \ 'l' : [':FloatermSend l'         , 'clear'],                              
      \ 'm' : [':FloatermSend %debug'    , 'post-mortem'],                              
      \ 'n' : [':FloatermSend n'         , 'next'],                              
      \ 'r' : [':FloatermSend r'         , 'restart'],                              
      \ 'R' : [':FloatermSend R'         , 'run'],                              
      \ 's' : [':FloatermSend s'         , 'step'],                              
      \ 'u' : [':FloatermSend u'         , 'up'],                              
      \ 'w' : [':FloatermSend w'         , 'where'],                              
      \ }

nnoremap <silent> <leader>dp :FloatermSend p  
let g:which_key_map.d.p = 'print'
nnoremap <silent> <leader>dP :FloatermSend pp 
let g:which_key_map.d.P = 'pprint'
nnoremap <silent> <leader>dq :FloatermSend pygame.display.quit()<CR>
let g:which_key_map.d.q = 'pygame quit'

" g ==> +git
let g:which_key_map.g = {
      \ 'name' : '+git',
      \ 's' : [':!git status'         , 'status'],                              
      \ }

nnoremap <silent> <leader>gs :!git status<CR>
let g:which_key_map.g.s = 'status'

" i ==> +ipython                                                                                        
let g:which_key_map.i = {                                                                               
      \ 'name' : '+ipython' ,                                                                           
      \ 'd' : [':FloatermSend cd %:p:h'	  , 'cd'],
      \ 'D' : [':FloatermSend pwd'   	  , 'pwd'],
      \ 'o' : [':call IpythonOpen()'   	  , 'open'],
      \ 'l' : [':FloatermSend'            , 'send line'],                              
      \ 'm' : [':MatlabBlock'			  , 'yank matlab'],
      \ 'p' : [':FloatermSend paste'      , 'paste'],                           
      \ 'r' : [':FloatermSend reset -f'	  , 'reset'],
      \ 'w' : [':FloatermSend whos'		  , 'whos'],
      \ }


nnoremap <leader>ia gg^yGzz
let g:which_key_map.i.a = 'yank all'
nnoremap <silent> <leader>ig iimport ipdb; ipdb.set_trace()<Esc>
let g:which_key_map.i.g = 'debug'
nnoremap <silent> <leader>if :w<CR>:execute ':FloatermSend run' expand('%:p')<CR>
let g:which_key_map.i.f = 'run file'
nnoremap <silent> <leader>iv 0yiwo<Esc>p:FloatermSend<CR>ddk
let g:which_key_map.i.v = 'send variable'
nnoremap <silent> <leader>iV 0yiwo<Esc>pa
let g:which_key_map.i.V = 'print variable'
nnoremap <silent> <leader>iW :FloatermSend whos 
let g:which_key_map.i.W = 'Whos'

function! IpythonOpen()
	FloatermNew --wintype=normal --position=right --width=0.5
	normal h
	normal 
	FloatermSend (cd %:p:h ; ipython --no-autoindent; clear)
	" brackets necessary above, runs a minishell
	call feedkeys("\<Esc>")
endfunction

" j ==> +juypter                                                                                        
let g:which_key_map.j = {                                                                               
      \ 'name' : '+jupyter' ,                                                                           
      \ 'a' : [':JupyterRunFile'    						, 'run file'],
      \ 'c' : [':JupyterClear'      						, 'clear'],
      \ 'e' : [':JupyterNewLine'    						, 'enter'],
      \ 'l' : [':JupyterSendRange'				            , 'send line'],
      \ 'm' : [':JupyterMatplot'                    		, 'matlab'],
      \ 'r' : [':JupyterReset'              		        , 'reset'],
      \ 'w' : [':JupyterWhos'           		            , 'whos'],
      \ 'v' : [':JupyterSendVariable'      		            , 'send variable'],
      \ 'y' : [':JupyterSendCell'						    , 'send cell'],
      \ }

vnoremap <silent> <leader>jg :'<,'>JupyterSendRange<CR>
let g:which_key_map.j.g = 'send range'
nnoremap <silent> <leader>jp :JupyterSendCode "<C-r>""<CR> 
let g:which_key_map.j.p = 'paste'
nnoremap <silent> <leader>jD :JupyterSendCode "%pwd"<CR>
let g:which_key_map.j.D = 'pwd'
nnoremap <silent> <leader>jd :JupyterCd %:p:h<CR>
let g:which_key_map.j.d = 'change dir'
nnoremap <leader>jo :JupyterConnect<CR>
let g:which_key_map.j.o = 'connect'
nnoremap <silent> <leader>jL :PythonUncomment<CR>yy:JupyterSendCode "<C-r>""<CR>:PythonComment<CR>
let g:which_key_map.j.L = 'send commented line'

" l ==> +languages                                                                                        
let g:which_key_map.l = {                                                                               
      \ 'name' : '+languages' ,                                                                           
      \ 'b' : [':RainbowToggle'                 , 'rainbow'],
      \ 'c' : [':FloatermSend clear'            , 'clear'],
      \ 'f' : [':FloatermSend ./%:r'            , 'file'],
      \ 'p' : [':FloatermSend pytest'            , 'pytest'],
      \ }

nnoremap <leader>lg :w <CR>:FloatermSend mygcc % -o %:r<CR>
let g:which_key_map.l.g = 'compile'
nnoremap <leader>lt :FloatermSend python3 setup.py install<CR>:FloatermSend python3 test.py<CR>
let g:which_key_map.l.t = 'temp'
nnoremap <leader>li :FloatermSend python setup.py build_ext -i -j 6<CR>
let g:which_key_map.l.i = 'install'
nnoremap <leader>lF :FloatermSend ./%:r 
let g:which_key_map.l.F = 'file no send'
nnoremap <silent> <leader>ls :FloatermSend 
let g:which_key_map.l.s = 'send custom line'

" nnoremap <leader>la :w <CR> :!as % -o %<.o
" let g:which_key_map.l.a = 'assemble code'
" nnoremap <leader>lA :!ld %<.o -o %<
" let g:which_key_map.l.A = 'link assembly'
" nnoremap <leader>lC :w <CR> :!gcc % -o %< && ./%<
" let g:which_key_map.l.C = 'compile + run c'
" nnoremap <leader>lh :%!xxd
" let g:which_key_map.l.h = 'hex'
" nnoremap <leader>lr :FloatermSend ./%<
" let g:which_key_map.l.R = 'run'
" nnoremap <leader>lt :!gcc % -S
" let g:which_key_map.l.t = 'assembly'
" nnoremap <leader>lp :call AutoPairsToggle()<CR>
" let g:which_key_map.l.p = 'toggle auto-pairs'
" nnoremap <leader>lc :w <CR> :!gcc -o %< % <CR>
" let g:which_key_map.l.c = 'compile c'

" o ==> +open
let g:which_key_map.o = {
      \ 'name' : '+open' ,
      \ 'i' : [':PlugInstall'															   , 'plug install'],
      \ 'c' : [':PlugClean'															       , 'plug clean'],
      \ 'j' : [':call TeJupytextHTML()'											           , 'jupytext html'],
      \ 'h' : [':tabnew|:lcd ~/Documents/help|:TabooRename Help'                           , 'help'],
      \ 'm' : [':MarkdownPreview'														   , 'md preview'],
      \ 'M' : [':MarkdownPreviewStop'												       , 'md stop'],
      \ 's' : [':so %'						                                               , 'source'],
      \ 'v' : [':tabnew|e $MYVIMRC|:lcd %:p:h|:TabooRename VIMRC'                          , 'vimrc'],
      \ 'x' : [':XtermColorTable'                                                          , 'xterm'],
      \ 'z' : [':tabnew|e ~/.zshrc|:lcd %:p:h|:TabooRename zsh' 			               , 'zsh'],
      \ 'V' : [':tabnew|e ~/.config/nvim/plug-config/vim-which-key.vim |:lcd %:p:h|:TabooRename which-key'       , 'which-key'],
      \ }                                                                                               

nnoremap <silent> <leader>op :!sphinx-build -b html source build<CR>
let g:which_key_map.o.p = 'sphinx noshow'
nnoremap <leader>oP :FloatermNew --wintype=floating<CR>sphinx-build -b html source build<CR>
let g:which_key_map.o.P = 'sphinx show'

function! TeJupytextHTML() abort
  FloatermNew --wintype=normal --position=bottom --height=0.01
  wincmd J | resize 1
  call animate#window_percent_height(0.40)

  normal k
  normal 
  FloatermSend (jupytext %:p --execute --to ipynb -o -| 
			  \ jupyter nbconvert --to html --stdin --output %:r)
  " Send window to bottom and start with small height
  " Animate height to 66%
  call feedkeys("\<Esc>")
  normal k
  normal k

endfunction

" p ==> +python
let g:which_key_map.p = {
      \ 'name' : '+python' ,
      \ 't' : [':Semshi toggle'                       , 'semshi toggle'],
      \ 's' : [':Semshi rename'                       , 'rename all'],
      \ 'u' : [':PythonUncomment'				      , 'uncomment'],
      \ 'c' : [':PythonComment'					      , 'comment'],
      \ 'n' : [':Semshi goto name next'               , 'goto name next'],
      \ 'N' : [':Semshi goto name prev'               , 'goto name prev'],
      \ 'f' : [':Semshi goto function next'           , 'goto func next'],
      \ 'F' : [':Semshi goto function prev'           , 'goto func prev'],
      \ }

nnoremap <silent> <leader>pr :w !python3<CR>
let g:which_key_map.p.r = 'run python'
nnoremap <silent> <leader>pv 0yiw
let g:which_key_map.p.v = 'copy variable'
nnoremap <silent> <leader>pV 0yiwo<Esc>pa
let g:which_key_map.p.V = 'paste variable'

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
      \ 'f' : [':FloatermNew fzf'                              					 , 'fzf'],
      \ 'g' : [':FloatermNew lazygit'                          					 , 'lazygit'],
      \ 'r' : [':RnvimrToggle'                                 					 , 'ranger'],
      \ 'y' : [':FloatermNew ytop'                             					 , 'ytop'],
      \ ';' : [':FloatermNew --wintype=popup --height=8'						 , 'terminal'],
      \ 'j' : [':FloatermNew --wintype=normal --position=bottom --height=0.5'    , 'term down'],
      \ 'l' : [':call TerminalOpen()'                                            , 'term right'],
      \ 'n' : [':FloatermNew'                                  					 , 'new'],
      \ 'k' : [':FloatermKill'                                 					 , 'kill'],
      \ 't' : [':FloatermToggle'                               					 , 'toggle'],
      \ 'L' : [':FloatermNext'                             					     , 'next'],
      \ 'H' : [':FloatermPrev'                             					     , 'prev'],
      \ }

nmap <leader>tc :set scrollback=25 \| sleep 100m \| set scrollback=100<cr>
let g:which_key_map.t.c = 'clear'

function! TerminalOpen()
	cd %:p:h
	FloatermNew --wintype=normal --position=right --width=0.5
	normal h
	normal 
	FloatermSend (cd %:p:h ;clear)
	" brackets necessary above, runs a minishell
	call feedkeys("\<Esc>")
endfunction

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

" z ==> +zsh                                                                                        
let g:which_key_map.z = {
      \ 'name' : '+zsh' ,
      \ 'D' : [':cd %:p:h'							       , 'cwd'],
      \ }                                                                                               

nnoremap <silent> <leader>zv :which python<CR>
let g:which_key_map.z.v = 'venv'
nnoremap <silent> <leader>zd :pwd<CR>
let g:which_key_map.z.d = 'pwd'
nnoremap <silent> <leader>zp :echo $PATH<CR>
let g:which_key_map.z.p = '$PATH L1'
nnoremap <silent> <leader>zP :!echo $PATH<CR>
let g:which_key_map.z.P = '$PATH L2'
nnoremap <silent> <leader>zl :echo $SHLVL<CR>
let g:which_key_map.z.l = '$SHLVL L1'
nnoremap <silent> <leader>zL :!echo $SHLVL<CR>
let g:which_key_map.z.L = '$SHLVL L2'

" extras
" nnoremap <silent> <leader>wo :TabooOpen 
" let g:which_key_map.w.o = 'tab open'
" nnoremap <silent> <leader>wr :TabooRename 
" let g:which_key_map.w.r = 'tab rename'
