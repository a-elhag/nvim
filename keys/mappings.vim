" Have Ctrl+Z do nothing
nnoremap <C-z> <nop> 
map ZZ <Nop>

" Terminal Shortcuts
tnoremap <c-y> <C-\><C-n>
tnoremap <F2> <C-\><C-n>

" Move between windows
tnoremap <C-h> <C-\><C-n><C-w>h
tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-k> <C-\><C-n><C-w>k
tnoremap <C-l> <C-\><C-n><C-w>l

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
inoremap <C-h> <esc><C-w>h
inoremap <C-j> <esc><C-w>j
inoremap <C-k> <esc><C-w>k
inoremap <C-l> <esc><C-w>l

" Resize Windows
nnoremap <silent> <Up>    :call animate#window_delta_height(5)<CR>
nnoremap <silent> <Down>  :call animate#window_delta_height(-5)<CR>
nnoremap <silent> <Left>  :call animate#window_delta_width(8)<CR>
nnoremap <silent> <Right> :call animate#window_delta_width(-8)<CR>

" Better tabbing
" vnoremap < <gv
" vnoremap > >gv

" TAB in general mode will move to text buffer
" nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
" nnoremap <S-TAB> :bprevious<CR>
