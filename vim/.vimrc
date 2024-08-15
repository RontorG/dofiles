set nocompatible
set relativenumber
set encoding=utf-8
set tabstop=3 shiftwidth=3
set backspace=indent,eol,start
set gp=git\ grep\ -n

filetype off
syntax on

" set hlsearch
set incsearch
set ignorecase
set smartcase


call plug#begin()

Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'

call plug#end()

" vim-lsp

function! s:on_lsp_buffer_enabled() abort
	setlocal omnifunc=lsp#complete
endfunction

augroup lsp_install
	au!
	" call s:on_lsp_buffer_enabled only for languages that has the server registered.
	autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END

" let g:lsp_diagnostics_virtual_text_enabled = 0
let g:lsp_diagnostics_virtual_text_align = "after"
let g:lsp_inlay_hints_enabled = 1
let g:lsp_diagnostics_virtual_text_prefix = "    ⚝ "

" Highlight colors
hi Pmenu ctermbg=darkgrey ctermfg=white
hi PmenuSel ctermbg=black ctermfg=yellow

hi Error term=bold cterm=bold ctermfg=Red ctermbg=None ctermul=Red
hi Todo term=bold cterm=bold ctermbg=None ctermfg=Yellow
hi clear SignColumn
hi link lspReference LineNr
