let g:ycm_use_clangd = 1
let g:ycm_clangd_binary_path = 'clangd'
syntax on
set number
set showcmd
inoremap jj <Esc>
inoremap kk <Right>
set incsearch
set encoding=utf-8
set tabstop=2
set clipboard=unnamed,unnamedplus
call plug#begin('/home/aknightive/.vim/plugged')
 Plug 'vim-airline/vim-airline'
 Plug 'connorholyday/vim-snazzy'
 " Auto Complete
" Plug 'Valloric/YouCompleteMe'
call plug#end()
 
 
 color snazzy
