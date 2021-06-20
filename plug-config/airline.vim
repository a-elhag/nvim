"""""""""""""""""""""""
" :AirlineRefresh     "
" => Redraws Airline  "
"""""""""""""""""""""""

" Disable all airline extensions
let g:airline_extensions = ['branch', 'fugitiveline', 'wordcount']
 
" Disable whitespace check
let g:airline#extensions#whitespace#enabled = 0

" enable spell detection >
let g:airline_detect_spell=1

" display spelling language when spell detection is enabled
let g:airline_detect_spelllang=1

" Smaller Names
let g:airline_mode_map = {
    \ '__'     : '-',
    \ 'c'      : 'C',
    \ 'i'      : 'I',
    \ 'ic'     : 'I',
    \ 'ix'     : 'I',
    \ 'n'      : 'N',
    \ 'multi'  : 'M',
    \ 'ni'     : 'N',
    \ 'no'     : 'N',
    \ 'R'      : 'R',
    \ 'Rv'     : 'R',
    \ 's'      : 'S',
    \ 'S'      : 'S',
    \ ''     : 'S',
    \ 't'      : 'T',
    \ 'v'      : 'V',
    \ 'V'      : 'V',
    \ ''     : 'V',
    \ }

" Remove section Y
let g:airline_section_y = ''
