" This function highlights a block like Matlab
function! MatlabBlock() abort
	set nowrapscan
	let @/="^##"
	normal Nv
	try
		normal nk$
	catch
		normal G$
	endtry
	normal y
	let @/=""
	set wrapscan
endfunction

command! MatlabBlock call MatlabBlock()

" To do:
" Add yank, delete, and visual select functions
" toggle nowrapscan (find a better solution)
" Create a readme + github
" replicate it in a projects folder
" make a Reddit account and spread the gospel
" ==> Learn how to map it to y, d, and v
" Use the <s> key for everything
