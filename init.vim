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
Plugin 'roxma/vim-hug-neovim-rpc'
Plugin 'roxma/LanguageServer-php-neovim',  {'do': 'composer install && composer run-script parse-stubs'}
Plugin 'roxma/clang_complete'
Plugin 'mhartington/oceanic-next'
Plugin 'jiangmiao/auto-pairs'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" autocmd FileType php LanguageClientStart

" For Neovim 0.1.3 and 0.1.4
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Or if you have Neovim >= 0.1.5
if (has("termguicolors"))
 set termguicolors
endif

" Theme
syntax enable
colorscheme OceanicNext

" self config
set nu
set tabstop=4
set shiftwidth=4
