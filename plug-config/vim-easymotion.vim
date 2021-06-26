" ==> Same document
map ,b <Plug>(easymotion-b)
map ,B <Plug>(easymotion-B)

map ,e <Plug>(easymotion-e)
map ,E <Plug>(easymotion-E)

map ,f <Plug>(easymotion-f)
map ,F <Plug>(easymotion-F)

map ,ge <Plug>(easymotion-ge)
map ,gE <Plug>(easymotion-gE)

map ,j <Plug>(easymotion-j)
map ,k <Plug>(easymotion-k)

map ,s <Plug>(easymotion-s)

map ,t <Plug>(easymotion-t)
map ,T <Plug>(easymotion-T)

map ,w <Plug>(easymotion-w)
map ,W <Plug>(easymotion-W)

" ==> Across Windows
nmap ,, <Plug>(easymotion-overwin-f)

" ==> Repeating
map ,n <Plug>(easymotion-next)
map ,N <Plug>(easymotion-prev)

" ==> Case Insensitive
" Use uppercase target labels and type as a lower case
let g:EasyMotion_use_upper = 1
 " type `l` and match `l`&`L`
let g:EasyMotion_smartcase = 1
" Smartsign (type `3` and match `3`&`#`)
let g:EasyMotion_use_smartsign_us = 1
