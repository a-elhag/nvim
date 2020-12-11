let b:autopairs_enabled = 0
let g:AutoPairsShortcutToggle = ''
let g:AutoPairsShortcutFastWrap = ''

autocmd Filetype * let b:autopairs_enabled = 0
autocmd Filetype c let b:autopairs_enabled = 1
autocmd Filetype h let b:autopairs_enabled = 1

let g:AutoPairs = {'{':'}'}
