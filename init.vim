set nocompatible              " be iMproved, required
filetype off                  " required

" Specify the location for vim-plug and initialize
call plug#begin('~/.vim/plugged')

" List your plugins here
" Example:
Plug 'ryanoasis/vim-devicons'
Plug 'nvie/vim-flake8'
Plug 'dense-analysis/ale'
Plug 'jpalardy/vim-slime'
Plug 'ivanov/vim-ipython'
Plug 'preservim/nerdtree'
Plug 'tmsvg/pear-tree'
Plug 'kien/ctrlp.vim'
Plug 'voldikss/vim-floaterm'
" Plug 'davidhalter/jedi-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'vim-syntastic/syntastic'
Plug 'preservim/tagbar'
Plug 'justinmk/vim-sneak'
Plug 'camspiers/lens.vim'
Plug 'mattn/emmet-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/vim-indent-guides'
Plug 'tribela/vim-transparent'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'christoomey/vim-system-copy'
Plug 'AndrewRadev/tagalong.vim'
Plug 'pangloss/vim-javascript'
Plug 'Yggdroot/indentLine'
Plug 'ellisonleao/gruvbox.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.5' }
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'mbbill/undotree'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'ThePrimeagen/harpoon'
Plug 'folke/tokyonight.nvim'
Plug 'RRethy/nvim-base16'
Plug 'ap/vim-css-color'
Plug 'airblade/vim-gitgutter'
" Plug 'rose-pine/vim'

" End vim-plug section
call plug#end()

" Enable filetype detection, plugin management, and indenting
filetype plugin indent on

syntax on

" set encoding=UTF-8

set nohlsearch

set showtabline=0

set background=dark

set t_Co=256

set termguicolors

" Configure additional Tokyonight options
let g:tokyonight_style = "night" " Set the style to "night" for the dark variant
let g:tokyonight_undercurl = 1 " Enable undercurl
let g:tokyonight_underline = 1 " Enable underline
let g:tokyonight_bold = 1 " Enable bold
let g:tokyonight_italic_strings = 1 " Italicize strings
let g:tokyonight_italic_emphasis = 1 " Italicize emphasis
let g:tokyonight_italic_comments = 1 " Italicize comments
let g:tokyonight_italic_folds = 1 " Italicize folds
let g:tokyonight_strikethrough = 1 " Enable strikethrough

let g:tokyonight_invert_selection = 0 " Do not invert selection
let g:tokyonight_invert_signs = 0 " Do not invert signs
let g:tokyonight_invert_tabline = 0 " Do not invert tabline
let g:tokyonight_invert_indent_guides = 0 " Do not invert indent guides
let g:tokyonight_inverse = 1 " Enable inverse mode
let g:tokyonight_contrast = "" " Set contrast level

let g:tokyonight_palette_overrides = {} " Override specific colors in the palette
let g:tokyonight_overrides = {} " Override specific highlight groups

let g:tokyonight_dim_inactive = 0 " Do not dim inactive windows
let g:tokyonight_transparent = 1 " Enable transparency

colorscheme tokyonight-night

let g:airline_theme='base16_dracula'

" Emmet key
let g:user_emmet_leader_key='<Leader>h'

autocmd FileType html let g:indent_blankline_filetype = ['html']

" Center the screen after scrolling up/down
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

" Center the screen after searching
nnoremap n nzz
nnoremap N Nzz

" Move to the next buffer using Alt + l
nnoremap <M-l> :bnext<CR>

" Move to the previous buffer using Alt + h
nnoremap <M-h> :bprevious<CR>

" UndotreeToggle
nnoremap <F5> :UndotreeToggle<CR>

" Map Enter key to confirm selection in Telescope
nnoremap <silent> <CR> <cmd>TelescopeSendSelected<CR>

set guifont=UbuntuNerdFont-Regular:h19

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Using Lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

set foldmethod=indent

set foldlevel=99

set colorcolumn=79

autocmd FileType javascript setlocal colorcolumn=120

autocmd FileType c,cpp setlocal colorcolumn=80

autocmd FileType html,css setlocal colorcolumn=120

autocmd FileType typescript setlocal colorcolumn=120

autocmd FileType jsx setlocal colorcolumn=120

autocmd FileType json setlocal colorcolumn=120

let g:gruvbox_termcolors=16

set mouse=

" Keybinding to access :Ex with leader pv
nnoremap <Leader>pv :Ex<CR>

" set signcolumn=number

" highlight SignColumn guibg=Tan

" highlight LineNr ctermfg=grey ctermbg=white

" Define custom LineNr highlighting
highlight LineNr cterm=bold ctermfg=0 ctermbg=0 

" guibg=black
" cterm=bold
set numberwidth=5

highlight LineNr gui=bold

set number

set hidden

set backspace=indent,eol,start  " more powerful backspacing

set clipboard+=unnamed

" set signcolumn=yes

" Define custom SignColumn highlighting
" highlight SignColumn ctermbg=darkgrey

" highlight linenr term=bold cterm=none ctermfg=172 ctermbg=none gui=none guifg=orange3

nnoremap <space> za

" quick save
nnoremap <Leader>S :w<CR> " normal mode: save
inoremap <Leader>S <Esc>:w<CR>l " insert mode: escape to normal and save
vnoremap <Leader>S <Esc>:w<CR> " visual mode: escape to normal and save

" tagbar toggle
nmap <F8> :TagbarToggle<CR>

" mapp cntrl-f to focus on nerd tree
" nnoremap <F5> :NERDTreeFocus<CR>

" map t to nerd tree toggle
nnoremap <F6> :NERDTreeToggle<CR>

" map n to launch nerd tree
nnoremap <C-n> :NERDTreeToggle<CR>

nnoremap <Leader>cc :set colorcolumn=80<cr>

nnoremap <Leader>ncc :set colorcolumn-=80<cr>

autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>

autocmd BufWinEnter *.py nmap <silent> <F5>:w<CR>:terminal python3 -m pdb '%:p'<CR>

noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p

autocmd FileType nerdtree setlocal relativenumber

let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" Set HTML-specific options matching VSCode's default settings
autocmd FileType html setlocal shiftwidth=4
autocmd FileType html setlocal tabstop=4
autocmd FileType html setlocal softtabstop=4
autocmd FileType html setlocal noexpandtab

" Set XML-specific options matching VSCode's default settings
autocmd FileType xml setlocal shiftwidth=2
autocmd FileType xml setlocal tabstop=2
autocmd FileType xml setlocal softtabstop=2
autocmd FileType xml setlocal expandtab
autocmd FileType xml setlocal autoindent

" Set CSS-specific options matching VSCode's default settings
autocmd FileType css setlocal shiftwidth=2
autocmd FileType css setlocal tabstop=2
autocmd FileType css setlocal softtabstop=2
autocmd FileType css setlocal expandtab

" Set JavaScript-specific options matching VSCode's default settings
autocmd FileType javascript setlocal shiftwidth=2
autocmd FileType javascript setlocal tabstop=2
autocmd FileType javascript setlocal softtabstop=2
autocmd FileType javascript setlocal expandtab

" Set TypeScript-specific options matching VSCode's default settings
autocmd FileType typescript setlocal shiftwidth=2
autocmd FileType typescript setlocal tabstop=2
autocmd FileType typescript setlocal softtabstop=2
autocmd FileType typescript setlocal expandtab

" Set React-specific options matching VSCode's default settings
autocmd FileType javascript setlocal shiftwidth=2
autocmd FileType javascript setlocal tabstop=2
autocmd FileType javascript setlocal softtabstop=2
autocmd FileType javascript setlocal expandtab
autocmd FileType javascript setlocal autoindent

" Set JSON-specific options matching VSCode's default settings
autocmd FileType json setlocal shiftwidth=2
autocmd FileType json setlocal tabstop=2
autocmd FileType json setlocal softtabstop=2
autocmd FileType json setlocal expandtab

" Set Markdown-specific options matching VSCode's default settings
autocmd FileType markdown setlocal shiftwidth=2
autocmd FileType markdown setlocal tabstop=2
autocmd FileType markdown setlocal softtabstop=2
autocmd FileType markdown setlocal expandtab

" Set C-specific options matching VSCode's default settings
autocmd FileType c setlocal shiftwidth=4
autocmd FileType c setlocal tabstop=4
autocmd FileType c setlocal softtabstop=4
autocmd FileType c setlocal noexpandtab
autocmd FileType c setlocal autoindent

" Set C++-specific options matching VSCode's default settings
autocmd FileType cpp setlocal shiftwidth=4
autocmd FileType cpp setlocal tabstop=4
autocmd FileType cpp setlocal softtabstop=4
autocmd FileType cpp setlocal noexpandtab
autocmd FileType cpp setlocal autoindent

" Set Go-specific options matching VSCode's default settings
autocmd FileType go setlocal shiftwidth=4
autocmd FileType go setlocal tabstop=4
autocmd FileType go setlocal softtabstop=4
autocmd FileType go setlocal noexpandtab
autocmd FileType go setlocal autoindent

au BufNewFile
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
"    \ set smartindent
    \ set termguicolors
    \ set fileformat=unix

" IndentLine config 
let g:indentLine_enabled = 1
let g:indentLine_char = '│'
" Don't forget to add a space after the \
set listchars+=lead:\ 
" set nolist

" Toggle indent lines visibility
nnoremap <F3> :IndentLinesToggle<CR>

let g:ale_linters = {'python': ['flake8']}
" hi link ALEErrorSign    Error
" hi link ALEWarningSign  Warning
" hi Error   cterm=bold
" hi Warning cterm=bold gui=bold
let g:ale_sign_error = 'ㄨ'
let g:ale_sign_warning = '∆' 

" Configuration example
" let g:floaterm_keymap_new    = '<F7>'
" let g:floaterm_keymap_prev   = '<F8>'
" let g:floaterm_keymap_next   = '<F9>'
" let g:floaterm_keymap_toggle = '<F12>'

" CoC configuration

" May need for Vim (not Neovim) since coc.nvim calculates byte offset by count
" utf-8 byte sequence
set encoding=utf-8
" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Having longer updatetime (default is 4000 ms = 4s) leads to noticeable
" delays and poor user experience
set updatetime=300

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s)
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying code actions to the selected code block
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying code actions at the cursor position
nmap <leader>ac  <Plug>(coc-codeaction-cursor)
" Remap keys for apply code actions affect whole buffer
nmap <leader>as  <Plug>(coc-codeaction-source)
" Apply the most preferred quickfix action to fix diagnostic on the current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Remap keys for applying refactor code actions
nmap <silent> <leader>re <Plug>(coc-codeaction-refactor)
xmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)
nmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)

" Run the Code Lens action on the current line
nmap <leader>cl  <Plug>(coc-codelens-action)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> to scroll float windows/popups
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges
" Requires 'textDocument/selectionRange' support of language server
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer
command! -nargs=0 Format :call CocActionAsync('format')

" Add `:Fold` command to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

autocmd FileType scss setl iskeyword+=@-@

" Enable colors support for all filetypes
let g:coc_config = {
      \ 'colors.enable': v:true
      \ }

" Enable Treesitter
set termguicolors
runtime! plugin/treesitter.vim

" Configure Treesitter
let g:loaded_treesitter = 1
let g:treesitter#ensure_installed_languages = 'maintained'

" Highlight matching pairs
if has('nvim-0.5')
    highlight link TSError Error
    highlight link TSDefinition Identifier
    highlight link TSKeyword Function
    highlight link TSOperator Operator
endif

" Customize Treesitter colors to match Tokyo Night theme
if exists('g:tokyonight_style')
    " Adjust Treesitter colors for Tokyo Night theme
    if g:tokyonight_style == 'night'
        highlight link TSTag Statement
        highlight link TSPunctBracket Statement
    elseif g:tokyonight_style == 'storm'
        highlight link TSTag Function
        highlight link TSPunctBracket Function
    elseif g:tokyonight_style == 'day'
        highlight link TSTag Special
        highlight link TSPunctBracket Special
    elseif g:tokyonight_style == 'night'
        highlight link TSTag Type
        highlight link TSPunctBracket Type
    endif
else
    " Default Treesitter colors
    highlight link TSTag Operator
    highlight link TSPunctBracket Operator
endif

lua << EOF
require("nvim-treesitter.configs").setup({
    ensure_installed = { "c", "python", "cpp", "rust", "javascript", "typescript", "html", "css", "scss", "htmldjango", "sql", "go", "json", "toml", "lua", "vim", "vimdoc", "query" },
    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
    },
})
EOF

" Navigating between bookmarks
" Example bookmark navigation key mappings
nnoremap <leader>bm :BookmarkToggle<CR>
nnoremap <leader>bn :BookmarkNext<CR>
nnoremap <leader>bp :BookmarkPrev<CR>
nnoremap <leader>hn :lua require('harpoon.navigation').nav_file(1)<CR>
nnoremap <leader>hp :lua require('harpoon.navigation').nav_file(-1)<CR>

" Managing bookmarks
nnoremap <leader>ha :lua require('harpoon.mark').add_file()<CR>
nnoremap <leader>hm :lua require('harpoon.mark').add_file(require('harpoon.ui').pick_file)<CR>
nnoremap <leader>ht :lua require('harpoon.mark').toggle_file()<CR>

" Harpoon windows
nnoremap <leader>hh :lua require('harpoon.ui').toggle_quick_menu()<CR>
nnoremap <leader>hs :lua require('harpoon.term').gotoTerminal(1)<CR>
