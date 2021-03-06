" General

" Plugin list:
" - YouCompleteMe
" - syntastic
" - vim-airline
" - vim-airline-themes
" - nerdtree
" - tern_for_vim
" - vim-colors-solarized
" - vim-markdown
" - vim-javascript
" - vim-devicons
" - ctrlp

" Pathogen plugin
execute pathogen#infect()

" Display Settings
syntax on
set termguicolors

syntax enable
set t_Co=256

" Disable Background Color Erase (tmux)
if &term =~ '256color'
  set t_ut=
endif

" Color scheme
" - One
colorscheme one
set background=dark
let g:airline_theme='one'
" - Solarized
" > Solarized light:
" set background=light
" > Solarized dark:
" colorscheme solarized
" let g:airline_theme='solarized'
colorscheme one
let g:airline_theme='one'
" - Solarized
" > Solarized light:
" set background=light
" > Solarized dark:
" colorscheme solarized
" let g:airline_theme='solarized'
let g:airline_powerline_fonts = 1

set laststatus=2
"set showtabline=2

" Font
set encoding=utf8
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types:h14
" set gfn=Meslo\ LG\ M\ for\ Powerline

" CtrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:airline#extensions#syntastic#enabled = 1
" Standard syntax style for Javascript (automatic fortmatting on save)
let g:syntastic_javascript_checkers = ['standard']
let g:syntastic_mode_map = { 'passive_filetypes': ['html'] }
" autocmd bufwritepost *.js silent !standard % --format
" set autoread

" YouCompleteMe
let g:ycm_auto_trigger = 1
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_min_num_of_chars_for_completion = 3

" NERDTree
" -> on startup
" autocmd vimenter * NERDTree
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.swp$', '\.DS_Store$']
nmap <silent> <C-\> :NERDTreeToggle<CR>

" Markdown for Vim
let g:markdown_enable_spell_checking = 0

" Indent lines
let g:indentLine_enabled = 0
" let g:indentLine_color_term = 239
" let g:indentLine_char = '┆'
" let g:indentLine_faster = 1

" Show line numbers
set number

" Break lines at word
set linebreak

" Wrap-broken line prefix
set showbreak=+++

" Line Wrap (number of cols)
set textwidth=0

" Highlight matching brace
set showmatch

" Use visual bell (no beeping)
set visualbell

" Highlight all search results
set hlsearch

" Enable smart-case search
set smartcase

" Always case-insensitive
set ignorecase

" Searches for strings incrementally
set incsearch

" Auto-indent new lines
set autoindent

" Use spaces instead of tabs
set expandtab

" Number of auto-indent spaces
set shiftwidth=2

" Enable smart-indent
set smartindent

" Enable smart-tabs
set smarttab

" Number of spaces per Tab
set softtabstop=2

" Show row and column ruler information
set ruler

" Highlight current line
set cursorline

" Number of undo levels
set undolevels=1000

" Backspace behaviour
set backspace=indent,eol,start

" Automatically :write before running commands
set autowrite

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Helps with slow loading
set lazyredraw

" Activate the cursor line only during Insert mode
set cursorline!
autocmd InsertEnter,InsertLeave * set cul!

" copy and paste from tmux
" set clipboard=unnamed

" Disable arrow keys both in Normal and Insert mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>
" Get off my lawn
nnoremap <Left> :echoe " Use h "<CR>
nnoremap <Right> :echoe " Use l "<CR>
nnoremap <Up> :echoe " Use k "<CR>
nnoremap <Down> :echoe " Use j "<CR>

" Remap split navigation for quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

:nnoremap <esc> :noh<return><esc>

" Automatically fitting the quickfix window height
au FileType qf call AdjustWindowHeight(1, 10)
function! AdjustWindowHeight(minheight, maxheight)
  exe max([min([line("$"), a:maxheight]), a:minheight]) . "wincmd _"
endfunction
