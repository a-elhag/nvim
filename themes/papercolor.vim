let $NVIM_TUI_ENABLE_TRUE_COLOR=1 
let g:impact_transbg=1
colorscheme PaperColor

" checks if your terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
	hi Normal guibg=NONE ctermbg=NONE
endif


