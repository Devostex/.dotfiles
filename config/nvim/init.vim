set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set textwidth=80
set number
set cursorline
set nocompatible

filetype on
filetype plugin on
filetype indent on

" Theming
syntax on
colorscheme onedark
let g:lightline = {'colorscheme': 'onedark'}

" Ale linter disable lint on text change (on save is enabled)
let g:ale_lint_on_text_changed = 'never'

" Color setup
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

" Keybinds
nnoremap H :bprev<CR>
nnoremap L :bnext<CR>
nnoremap q :q<CR>
nnoremap ; :
" Save, source, install
command Plug w|so ~/.config/nvim/init.vim|PluginInstall

set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()
Plugin 'tpope/vim-sensible'
Plugin 'sheerun/vim-polyglot'
Plugin 'itchyny/lightline.vim'
Plugin 'w0rp/ale'
Plugin 'maximbaz/lightline-ale'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'lambdalisue/fern.vim'
Plugin 'pangloss/vim-javascript'
call vundle#end()
