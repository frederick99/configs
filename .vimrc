" enter the current millenium
set nocompatible

" enter syntax and plugins (for netrw)
syntax enable
filetype plugin on

" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu

" Create the `tags` file (may need to install ctags first)
" command! MakeTags !ctags -R .

" Tweaks for browsing
let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " opens split to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',(^\|\s\s\)\zs\.\S\+'


set showcmd
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath


call plug#begin('~/.vim/plugged')

    " Plug 'kaicataldo/material.vim'
    Plug 'fcpg/vim-fahrenheit'
    " Plug 'sstallion/vim-wtf'
    Plug 'vim-airline/vim-airline'

    Plug 'prabirshrestha/async.vim'
    Plug 'prabirshrestha/vim-lsp'
    source ~/.vim/lsp.vim

call plug#end()



set number relativenumber " set line numbers
set cursorline  " highlight current line
set linebreak   " break wrapped lines at word boundaries

" Set tabs
set tabstop=4
set shiftwidth=4
set expandtab

set ignorecase
set smartcase

set incsearch
set hlsearch

" Remap : to ;
nnoremap ; :
nnoremap Q :wq<CR>

" Using tab pages
nnoremap <silent> <C-H> :tabprevious<CR>
nnoremap <silent> <C-L> :tabnext<CR>

nnoremap <LEFT>  :vertical resize -2<CR>
nnoremap <RIGHT> :vertical resize +2<CR>
nnoremap <UP>    :resize +1<CR>
nnoremap <DOWN>  :resize -1<CR>


" Set material theme  'default' | 'palenight' | 'ocean' | 'lighter' | 'darker'
" let g:material_theme_style = 'darker'
" let g:material_terminal_italics = 1

" let g:wtf_pedantic_guicolors = 1
colorscheme fahrenheit

let g:airline_theme = 'fahrenheit'
let g:airline_powerline_fonts = 1



if (has('termguicolors'))
  set termguicolors
endif

" Fix for slow switch to normal mode
set ttimeout
set timeoutlen=1000   " from visual mode
set ttimeoutlen=0     " from insert mode
