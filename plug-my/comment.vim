" This function comments a python code
function! PythonComment() abort
	let text = "# "
	exe "normal! 0i" . text. "\<Esc>"
endfunction

function! PythonUncomment() abort
	exe "normal! 0xx"
endfunction

command! PythonComment call PythonComment()
command! PythonUncomment call PythonUncomment()
