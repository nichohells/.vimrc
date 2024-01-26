set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'ryanoasis/vim-devicons'
Plugin 'nvie/vim-flake8'
Plugin 'dense-analysis/ale'
Plugin 'jpalardy/vim-slime'
Plugin 'ivanov/vim-ipython'
Plugin 'preservim/nerdtree'
Plugin 'tmsvg/pear-tree'
Plugin 'kien/ctrlp.vim'
Plugin 'voldikss/vim-floaterm'
Plugin 'davidhalter/jedi-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-syntastic/syntastic'
Plugin 'preservim/tagbar'
Plugin 'justinmk/vim-sneak'
Plugin 'camspiers/lens.vim'
Plugin 'mattn/emmet-vim'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax on

set encoding=UTF-8

set t_Co=256

colorscheme badwolf

set foldmethod=indent

set foldlevel=99

" highlight linenr term=bold cterm=none ctermfg=172 ctermbg=none gui=none guifg=orange3

nnoremap <space> za

" quick save
nnoremap <c-s> :w<CR> " normal mode: save
inoremap <c-s> <Esc>:w<CR>l " insert mode: escape to normal and save
vnoremap <c-s> <Esc>:w<CR> " visual mode: escape to normal and save

" tagbar toggle
nmap <F8> :TagbarToggle<CR>

" mapp cntrl-f to focus on nerd tree
nnoremap <F5> :NERDTreeFocus<CR>

" map t to nerd tree toggle
nnoremap <F6> :NERDTreeToggle<CR>

" map n to launch nerd tree
nnoremap <C-n> :NERDTreeToggle<CR>

nnoremap <Leader>cc :set colorcolumn=80<cr>

nnoremap <Leader>ncc :set colorcolumn-=80<cr>

autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>

au BufNewFile
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set smartindent
    \ set termguicolors
    \ set fileformat=unix

let g:ale_linters = {'python': ['flake8']}

" Configuration example
let g:floaterm_keymap_new    = '<F7>'
" let g:floaterm_keymap_prev   = '<F8>'
let g:floaterm_keymap_next   = '<F9>'
let g:floaterm_keymap_toggle = '<F12>'

set number
