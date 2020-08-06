" Have Ctrl+Z do nothing
nnoremap <C-z> <nop> 
map ZZ <Nop>

" Terminal Shortcuts
tnoremap <Esc> <C-\><C-n>

" Move between windows
tnoremap <C-h> <C-\><C-n><C-w>h
tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-k> <C-\><C-n><C-w>k
tnoremap <C-l> <C-\><C-n><C-w>l

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <A-h> <C-w>H
nnoremap <A-j> <C-w>J
nnoremap <A-k> <C-w>K
nnoremap <A-l> <C-w>L
inoremap <C-h> <esc><C-w>h
inoremap <C-j> <esc><C-w>j
inoremap <C-k> <esc><C-w>k
inoremap <C-l> <esc><C-w>l
inoremap <A-h> <esc><C-w>H
inoremap <A-j> <esc><C-w>J
inoremap <A-k> <esc><C-w>K
inoremap <A-l> <esc><C-w>L

" Better tabbing
" vnoremap < <gv
" vnoremap > >gv

" TAB in general mode will move to text buffer
" nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
" nnoremap <S-TAB> :bprevious<CR>
