" Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')

Plug 'kylef/apiblueprint.vim'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-repeat'
Plug 'connorholyday/vim-snazzy'   " color scheme
Plug 'itchyny/lightline.vim'      " bottom line
Plug 'sjl/gundo.vim'              " undo

" Fuzzy search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'

Plug 'HerringtonDarkholme/yats.vim'
Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
" For async completion
Plug 'Shougo/deoplete.nvim'
" For Denite features
Plug 'Shougo/denite.nvim'

" Initialize plugin system
call plug#end()

colorscheme snazzy

filetype plugin indent on

set tabstop=2                     " show existing tab with 2 spaces width
set shiftwidth=2                  " when indenting with '>', use 2 spaces width
set expandtab                     " On pressing tab, insert 2 spaces
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
set wildignore+=*/dist/*          " Don't search inside /dist

let g:lightline = {
\ 'colorscheme': 'snazzy',
\ }

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Show fzf in popup window
let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.5, 'highlight': 'Comment' } }

let g:deoplete#enable_at_startup = 1

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

" Disable search for file name in addition to the phrase
command! -bang -nargs=* Rg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, {'options': '--delimiter : --nth 4..'}, <bang>0)
