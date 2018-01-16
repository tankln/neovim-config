execute 'source' fnamemodify(expand('<sfile>'), ':h').'/config/vimrc'
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'scrooloose/nerdtree'
Plugin 'davidhalter/jedi-vim'
Plugin 'scrooloose/syntastic'
Plugin 'msanders/snipmate.vim'
Plugin 'mattn/emmet-vim'
" Plugin 'roxma/vim-hug-neovim-rpc'
" Plugin 'roxma/nvim-completion-manager'
" Plugin 'roxma/LanguageServer-php-neovim',  {'do': 'composer install && composer run-script parse-stubs'}
" Plugin 'roxma/clang_complete'
Plugin 'mhartington/oceanic-next'
Plugin 'jiangmiao/auto-pairs'
Plugin 'Shougo/deoplete.nvim'
" Plugin 'padawan-php/deoplete-padawan'
Plugin 'zchee/deoplete-go'
Plugin 'ayu-theme/ayu-vim' " or other package manager"
Plugin 'dracula/vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'Solarized'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" autocmd FileType php LanguageClientStart

" For Neovim 0.1.3 and 0.1.4
" let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Or if you have Neovim >= 0.1.5
if (has("termguicolors"))
 " set termguicolors
 " let ayucolor="light"  " for light version of theme
 " let ayucolor="mirage" " for mirage version of theme
 " let ayucolor="dark"   " for dark version of theme"
endif

" Theme
syntax enable
colorscheme solarized
set background=dark
" colorscheme molokai

" self config
set nu
set tabstop=4
set shiftwidth=4
set encoding=utf-8
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1
set enc=utf8
set fencs=utf8,gbk,gb2312,gb18030
" set fileencodings=ucs-bom,utf-8,cp936
set fileencoding=utf-8
set termencoding=utf-8

" Use deoplete.
let g:deoplete#enable_at_startup = 1
let g:python3_host_prog = '/usr/bin/python3'
let g:python_host_prog = '/usr/bin/python'
" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
autocmd BufReadPost *
			\ if line("'\"") >= 1 && line("'\"") <= line("$") |
			\   execute "normal! g`\"" |
			\ endif
