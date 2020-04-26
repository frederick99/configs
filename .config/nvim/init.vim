set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc


call plug#begin(stdpath('data') . '/plugged')

Plug 'kaicataldo/material.vim'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'

call plug#end()



" Set UI "
set number relativenumber " set line numbers "
set nu rnu
set cursorline  " highlight current line "
set linebreak   " break wrapped lines at word boundaries "

" Set tabs "
set tabstop=2
set shiftwidth=2
set expandtab

set incsearch " Search as we enter characters "

" Remap esc to caps lock "
" Remap : to ; "
nnoremap ; :

" Using tab pages "
nnoremap <silent> <C-H> :tabprevious<CR>
nnoremap <silent> <C-L> :tabnext<CR>

" set background=dark "
" colorscheme desert "

" Set material theme "
let g:material_theme_style = 'darker'     " 'default' | 'palenight' | 'ocean' | 'lighter' | 'darker' "
colorscheme material
" let g:airline_theme = 'material' "
" let g:airline_powerline_fonts = 1 "

" Enable true color "
if (has('nvim'))
  let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
endif

if (has('termguicolors'))
  set termguicolors
endif

" Turn on italics "
" let g:material_terminal_italics = 1 "

" Turn on Vim hardtime by default "
let g:hardtime_default_on = 1

" Look in the root dir by default "
let g:Lf_WorkingDirectoryMode = 'Ac'
let g:Lf_CommandMap = {'<C-T>': ['<CR>']}
let g:Lf_WindowPosition = 'popup'

" Set pythonx version "
set pyxversion=3

