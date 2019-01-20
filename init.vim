" Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')

Plug 'kylef/apiblueprint.vim'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'vim-airline/vim-airline'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'
Plug 'wincent/command-t'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-repeat'
Plug 'neomake/neomake'
Plug 'connorholyday/vim-snazzy'  " color scheme
Plug 'itchyny/lightline.vim'     " bottom line
Plug 'sjl/gundo.vim'             " undo

" Initialize plugin system
call plug#end()

colorscheme snazzy

call neomake#configure#automake('w')

set ts=2 sts=2 sw=2 expandtab
set cursorline
set number norelativenumber
set encoding=utf-8
set scrolloff=3
set background=dark
set incsearch                     " Highlight matches as you type.
set ignorecase                    " do case-insensitive searching 
set smartcase                     " When a search phrase has uppercase, don't be case insensitive
set laststatus=2                  " Show the status line all the time
set list listchars=tab:→\ ,trail:·

set wildignore+=*/node_modules/*  " Don't search inside Node.js modules
set wildignore+=*/build/*         " Don't search inside /build

let g:lightline = {
\ 'colorscheme': 'snazzy',
\ }

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Set up Neomake
let g:neomake_javascript_enabled_makers = ['eslint']

" speed up scrolling viewport
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" Easy window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Easy tab navigation
" nnoremap <C-t> :tabnew<cr><c-e>
nnoremap <C-Right> gt
nnoremap <C-Left> gT

" Bubble selected lines
vmap <C-Up> [egv
vmap <C-Down> ]egv

" select the last changed text (or the text that was just pasted)
nnoremap gp `[v`]

" @jonbho: Somebody posted at the ViEmu forum the most incredible vim mapping there is!
nnoremap <esc> :noh<return><esc>

nnoremap <F2> :NERDTreeToggle<CR>
nnoremap <F5> :GundoToggle<CR>
nnoremap <F11> :Gblame<CR>
nnoremap <F12> :Gstatus<CR>
