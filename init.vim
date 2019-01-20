" Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')

Plug 'kylef/apiblueprint.vim'
Plug 'morhetz/gruvbox'
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

" Initialize plugin system
call plug#end()

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

set wildignore+=node_modules

colorscheme gruvbox

let g:gruvbox_contrast_dark = "hard"
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
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
