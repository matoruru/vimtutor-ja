set nocompatible

" Required:
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.vim/dein')
  call dein#begin('~/.vim/dein')

  call dein#add('morhetz/gruvbox')

  " Required:
  call dein#end()
  call dein#save_state()
endif

filetype plugin on
syntax on

set background=dark
colorscheme gruvbox
let g:gruvbox_contrast_dark='soft'
hi Normal guibg=NONE ctermbg=NONE

set relativenumber number

" Change shape of cursor by mode switching.
let &t_SI .= "\e[6 q"
let &t_EI .= "\e[2 q"
let &t_SR .= "\e[4 q"

" Highlight the cursorline
set cursorline

" window will be displayed to the end without omitiing
set display+=lastline

set scrolloff=2
