let g:asmsyntax = 'nasm'

autocmd BufNewFile,Bufread *.asm set ft=asm
autocmd BufNewFile,Bufread *.inc set ft=asm
autocmd FileType asm call AssemblyConfig() 

function AssemblyConfig()
  setlocal softtabstop=8
  setlocal tabstop=8
  setlocal shiftwidth=8
  setlocal noexpandtab
  retab
endfunction
