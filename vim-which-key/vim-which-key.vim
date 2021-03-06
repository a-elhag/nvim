" ==> Initial Settings
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

" ==> Single mappings
let g:which_key_map['q'] = [ ':q', 'quit']

nnoremap <silent> <leader>a :noh<CR>
let g:which_key_map.a = 'noh'

" b ==> +buffers
let g:which_key_map.b = {
      \ 'name' : '+buffers',
      \ 'c' : [':tabclose',  'tab close'],
      \ 'l' : [':b#',        'last'],
      \ 'n' : [':bnext',     'next'],
      \ 'p' : [':bprev',     'prev'],
      \ 't' : [':tabnew',    'tab new'],
      \ }

nnoremap <silent> <leader>ba :%bd\|e#\|bd#<cr>\|'"
let g:which_key_map.b.a = 'd all'
nnoremap <leader>bg :ls<cr>:b 
let g:which_key_map.b.g = 'go to'
nnoremap <leader>bd :ls<cr>:bdelete 
let g:which_key_map.b.d = 'delete'
nnoremap <leader>bv :ls<cr>:b 
let g:which_key_map.b.v = 'go to'

" f ==> +fzf
let g:which_key_map.f = {
      \ 'name' : '+fzf',
      \ 'b' : [':Buffers',  'buffers'],
      \ 'c' : [':Commits',  'commits'],
      \ 'C' : [':BCommits', 'bcommits'],
      \ 'f' : [':Files',    'files'],
      \ 'g' : [':GFiles',   'gfiles'],
      \ 'G' : [':GFiles?',  'gstatus'],
      \ 'h' : [':History:', 'command'],
      \ 'H' : [':Helptags:', 'helptags'],
      \ 'L' : [':Lines',    'lines'],
      \ 'l' : [':BLines',   'blines'],
      \ 'm' : [':Marks',    'marks'],
      \ 'p' : [':Maps',    'maps'],
      \ 's' : [':History/', 'search'],
      \ 'T' : [':Btags',    'btags'],
      \ 't' : [':Tags',     'tags'],
      \ 'w' : [':Windows',  'windows'],
      \ }


" d ==> +debug
let g:which_key_map.d = {                                                                               
      \ 'name' : '+debug ipython',
      \ 'a' : [':FloatermSend a',      'argument'],
      \ 'b' : [':FloatermSend b',      'break'],
      \ 'c' : [':FloatermSend c',      'continue'],
      \ 'd' : [':FloatermSend d',      'down'],
      \ 'e' : [':FloatermSend exit',   'exit'],
      \ 'h' : [':FloatermSend h',      'help'],
      \ 'i' : [':FloatermSend i',      'interact'],
      \ 'l' : [':FloatermSend l',      'clear'],
      \ 'm' : [':FloatermSend %debug', 'post-mortem'],
      \ 'n' : [':FloatermSend n',      'next'],
      \ 'r' : [':FloatermSend r',      'restart'],
      \ 'R' : [':FloatermSend R',      'run'],
      \ 's' : [':FloatermSend s',      'step'],
      \ 'u' : [':FloatermSend u',      'up'],
      \ 'w' : [':FloatermSend w',      'where'],
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
      \ 'a' : [':Git add .',                                    'add'],
      \ 'b' : [':Git blame',                                    'blame'],
      \ 'c' : [':Git commit',                                   'commit'],
      \ 'd' : {
        \ 'name' : '+diff ',
        \ 'd' : [':Git diff',                                   'unstaged'],
        \ 's' : [':Git diff --staged',                          'staged'],
        \ },
      \ 'D' : [':Gcd',                                          'Gcd'],
      \ 'g' : [':tabnew|e ~/.gitconfig|:TabooRename GitConfig', 'config'],
      \ 'h' : [':GBrowse',                                      'github'],
      \ 'l' : [':Git log',                                      'log'],
      \ 'm' : [':MerginalToggle',                               'merginal'],
      \ 'p' : [':Git push',                                     'push'],
      \ 'P' : [':Git -c push.default=current push',             'Push'],
      \ 'r' : [':Git restore --staged .',                         'restore'],
      \ 's' : [':Gstatus',                                      'status'],
      \ 'v' : [':GV',                                           'commit browser'],
      \ }

" i ==> +ipython                                                                                        
let g:which_key_map.i = {                                                                               
      \ 'name' : '+ipython',
      \ 'd' : [':FloatermSend cd %:p:h', 'cd'],
      \ 'D' : [':FloatermSend pwd',      'pwd'],
      \ 'o' : [':call IpythonOpen()',    'open'],
      \ 'l' : [':FloatermSend',          'send line'],
      \ 'm' : [':MatlabBlock',           'yank matlab'],
      \ 'p' : [':FloatermSend paste',    'paste'],
      \ 'r' : [':FloatermSend reset -f', 'reset'],
      \ 'w' : [':FloatermSend whos',     'whos'],
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

" function! MatplotlibShow()
" 	plt.show(block=False)
" 	plt.pause(0.001)
" 	input("Hit [enter] to end\n")
" 	plt.close('all')
" endfunction

" j ==> +juypter                                                                                        
let g:which_key_map.j = {                                                                               
      \ 'name' : '+jupyter',
      \ 'a' : [':JupyterRunFile',      'run file'],
      \ 'c' : [':JupyterClear',        'clear'],
      \ 'e' : [':JupyterNewLine',      'enter'],
      \ 'l' : [':JupyterSendRange',    'send line'],
      \ 'm' : [':JupyterMatplot',      'matlab'],
      \ 'r' : [':JupyterReset',        'reset'],
      \ 'w' : [':JupyterWhos',         'whos'],
      \ 'v' : [':JupyterSendVariable', 'send variable'],
      \ 'y' : [':JupyterSendCell',     'send cell'],
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
      \ 'name' : '+languages',
      \ 'c' : [':FloatermSend clear',  'clear'],
      \ 'l' : [':!pdflatex %',         'pdflatex'],
      \ 'f' : [':FloatermSend ./%:r',  'file'],
      \ 'p' : [':FloatermSend pytest', 'pytest'],
      \ }

nnoremap <leader>lg :w <CR>:FloatermSend mygcc -Wall % -o %:r<CR>
let g:which_key_map.l.g = 'compile'
nnoremap <silent> <leader>ls :FloatermSend 
let g:which_key_map.l.s = 'send custom line'
nnoremap <leader>lb :w <CR>:FloatermSend gcc -Wall -g % -o %:r64<CR>
let g:which_key_map.l.b = '64 bit'
nnoremap <leader>lB :w <CR>:FloatermSend gcc -Wall -g -m32 % -o %:r32<CR>
let g:which_key_map.l.B = '32 bit'

" o ==> +open
let g:which_key_map.o = {
      \ 'name' : '+open',
      \ 'a' : [':EasyAlign',                                                                                'align'],
      \ 'i' : [':PlugInstall',                                                                              'plug install'],
      \ 'c' : [':PlugClean',                                                                                'plug clean'],
      \ 'f' : [':call FoldQuickly()',                                                                       'fold'],
      \ 'h' : [':tabnew|:lcd ~/Documents/etc/help|:TabooRename Help',                                       'help'],
      \ 'H' : [':checkhealth provider',                                                                     'health'],
      \ 'm' : [':MarkdownPreview',                                                                          'md preview'],
      \ 'M' : [':MarkdownPreviewStop',                                                                      'md stop'],
      \ 's' : [':so %',                                                                                     'source'],
      \ 'v' : [':tabnew|e $MYVIMRC|:lcd %:p:h|:TabooRename VIMRC',                                          'vimrc'],
      \ 'w' : [':TrimWhitespace',                                                                           'whitespace'],
      \ 'x' : [':XtermColorTable',                                                                          'xterm'],
      \ 'V' : [':tabnew|e ~/.config/nvim/plug-config/vim-which-key.vim |:lcd %:p:h|:TabooRename which-key', 'which-key'],
      \ }                                                                                               

xmap <silent> <leader>oa <Plug>(EasyAlign)
let g:which_key_map.o.a = 'align'
nmap <silent> <leader>oa <Plug>(EasyAlign)
let g:which_key_map.o.a = 'align'

" p ==> +python
let g:which_key_map.p = {
      \ 'name' : '+python',
      \ 'd' : [':ALEDisable',         'enable'],
      \ 'e' : [':ALEEnable',          'disable'],
      \ 'f' : [':ALEFix',             'fix'],
      \ 'i' : [':ALEInfo',            'info'],
      \ 'l' : [':e ~/.config/flake8', 'flake8'],
      \ 'n' : [':ALENext',            'next'],
      \ 'p' : [':ALEPrevious',        'prev'],
      \ 'R' : [':ALEReset',           'reset'],
      \ }

nnoremap <silent> <leader>pr :w !python3<CR>
let g:which_key_map.p.r = 'run python'
nnoremap <silent> <leader>pv 0yiw
let g:which_key_map.p.v = 'copy variable'
nnoremap <silent> <leader>pV 0yiwo<Esc>pa
let g:which_key_map.p.V = 'paste variable'

" r ==> +resize
let g:which_key_map.r = {
      \ 'name' : '+resize ',
      \ 'k' : ['<C-w>3-',   'k'],
      \ 'j' : ['<C-w>3+',   'j'],
      \ 'l' : ['<C-w>5>',    'l'],
      \ 'h' : ['<C-w>5<',    'h'],
      \ }

" t ==> +terminal
let g:which_key_map.t = {
      \ 'name' : '+terminal',
      \ 'b' : [':FloatermNew btm',          'btm'],
      \ 'f' : [':FloatermNew fzf',          'fzf'],
      \ 'H' : [':FloatermPrev',             'prev'],
      \ 'j' : [':call TerminalOpenDown()',  'term down'],
      \ 'k' : [':FloatermKill',             'kill'],
      \ 'l' : [':call TerminalOpenRight()', 'term right'],
      \ 'L' : [':FloatermNext',             'next'],
      \ 'n' : [':NnnPicker',                'nnn'],
      \ 'r' : [':FloatermNew ranger',       'ranger'],
      \ 'R' : [':RnvimrToggle',             'rnvmir'],
      \ 't' : [':FloatermToggle',           'toggle'],
      \ 'v' : [':vnew | te',                'vnew'],
      \ }

nmap <leader>tc :set scrollback=25 \| sleep 100m \| set scrollback=100<cr>
let g:which_key_map.t.c = 'clear'

function! TerminalOpenRight()
	cd %:p:h
	FloatermNew --wintype=normal --position=right --width=0.5
	normal h
	normal 
	FloatermSend (cd %:p:h ;clear)
	" brackets necessary above, runs a minishell
	call feedkeys("\<Esc>")
endfunction

function! TerminalOpenDown()
	cd %:p:h
	FloatermNew --wintype=normal --position=down --height=0.25
	normal k
	normal 
	FloatermSend (cd %:p:h ;clear)
	" brackets necessary above, runs a minishell
	call feedkeys("\<Esc>")
endfunction

" u ==> +undo
let g:which_key_map.u = {
      \ 'name' : '+undo',
      \ 'e' : [':earlier 1f',      'earlier'],
      \ 'f' : [':UndotreeFocus',   'focus'],
      \ 'l' : [':later 1f',        'later'],
      \ 'n' : ['g+',               'next'],
      \ 'p' : ['g-',               'previous'],
      \ 't' : [':UndotreeToggle',  'toggle'],
      \ }

" w ==> +windows
let g:which_key_map.w = {
      \ 'name' : '+windows',
      \ 'f' : [':tab split',      'full screen'],
      \ 'h' : ['<C-w>H',          'move left'],
      \ 'j' : ['<C-w>J',          'move down'],
      \ 'k' : ['<C-w>K',          'move up'],
      \ 'l' : ['<C-w>L',          'move right'],
      \ 's' : [':ChooseWinSwap',  'choose swap'],
      \ 't' : ['<C-W>T',          'window to new tab'],
      \ 'w' : [':ChooseWin',      'choose win'],
      \ 'z' : ['<C-W>z',          'close preview window'],
      \ }

" z ==> +zsh                                                                                        
let g:which_key_map.z = {
      \ 'name' : '+zsh',
      \ 'c' : [':cd %:p:h', 'cwd'],
      \ 'l' : [':lcd',      'lcd'],
      \ }                                                                                               

nnoremap <silent> <leader>zd :pwd<CR>
let g:which_key_map.z.d = 'pwd'

" ==> extras
" nnoremap <silent> <leader>wo :TabooOpen 
" let g:which_key_map.w.o = 'tab open'
" nnoremap <silent> <leader>wr :TabooRename 
" let g:which_key_map.w.r = 'tab rename'
