" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 0

au BufRead,BufNewFile *.md setlocal textwidth=80
