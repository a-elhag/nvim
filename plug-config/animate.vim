" Animated windows
nnoremap <silent> <Up>    :call animate#window_delta_height(3)<CR>
nnoremap <silent> <Down>  :call animate#window_delta_height(-3)<CR>
nnoremap <silent> <Left>  :call animate#window_delta_width(3)<CR>
nnoremap <silent> <Right> :call animate#window_delta_width(-3)<CR>

" function! OpenAnimatedHtop() abort
"   " Open a htop in terminal
"   new term://htop
"   " Send window to bottom and start with small height
"   wincmd J | resize 1
"   " Animate height to 66%
"   call animate#window_percent_height(0.66)
" endfunction
" 
" 
" function! OpenAnimated() abort
"   " Open a htop in terminal
"   new | te
"   " Send window to bottom and start with small height
"   wincmd J | resize 1
"   " Animate height to 66%
"   call animate#window_percent_height(0.66)
"   i
" endfunction
" 
