call pathogen#runtime_append_all_bundles() 

filetype on                 " Enable filetype detection,
filetype indent on          " use filetype-specific indenting where available,
filetype plugin on          " also allow for filetype-specific plugins,
syntax on                   " and turn on per-filetype syntax highlighting.

set nocompatible
set t_Co=256
set ts=2 sts=2 sw=2 expandtab
set cursorline
set number relativenumber         " Relative line numbers
set nu rnu                        " Curren line absolute number
set encoding=utf-8
set scrolloff=3
set splitbelow splitright
set hlsearch
set incsearch                     " Highlight matches as you type.
set ignorecase                    " do case-insensitive searching 
set smartcase                     " When a search phrase has uppercase, don't be case insensitive
set laststatus=2                  " Show the status line all the time
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P
set hidden                        " Allow Vim to manage multiple buffers effectively
set wildmenu                      " The following configuration lets you see what your completion options are
set backupdir=~/tmp,/var/tmp,/tmp
set directory=~/tmp,/var/tmp,/tmp

set list listchars=tab:→\ ,trail:·
set wildignore+=*/node_modules/*  " Don't search inside Node.js modules
set wildignore+=*/build/*         " Don't search inside /build

"let g:Powerline_symbols = 'fancy'
let g:lightline = {
\ 'colorscheme': 'snazzy',
\ }

" Source the vimrc file after saving it
" Thanks to: http://vimcasts.org/episodes/updating-your-vimrc-file-on-the-fly/
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

" learning good practises
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
nnoremap <End> <nop>
nnoremap <Home> <nop>
nnoremap <Delete> <nop>
nnoremap <PageUp> <nop>
nnoremap <PageDown> <nop>

inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
inoremap <end> <nop>
inoremap <home> <nop>
inoremap <Delete> <nop>
inoremap <PageUp> <nop>
inoremap <PageDown> <nop>

" speed up scrolling viewport
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" wrapped lines intuitive navigation
nnoremap j gj
nnoremap k gk

" Easy window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Easy tab navigation
" nnoremap <C-t> :tabnew<cr><c-e>
nnoremap <C-Right> gt
nnoremap <C-Left> gT

" Easy ctags navigation
noremap <C-Down> :tn<CR>
noremap <C-Up> :tp<CR>

" Bubble selected lines
vmap <C-Up> [egv
vmap <C-Down> ]egv
 
nnoremap <F2> :NERDTreeToggle<CR>
nnoremap <F3> :BufExplorerHorizontalSplit<CR>
nnoremap <F4> :TlistToggle<CR>
nnoremap <F5> :GundoToggle<CR>

nnoremap <F11> :Gblame<CR>
nnoremap <F12> :Gstatus<CR>

map <F6> <Plug>GithubOpen
map <F7> <Plug>GithubComment

" select the last changed text (or the text that was just pasted)
nnoremap gp `[v`]

" @jonbho: Somebody posted at the ViEmu forum the most incredible vim mapping there is!
" nnoremap <esc> :noh<return><esc>

call plug#begin('~/.local/share/nvim/plugged')

Plug 'connorholyday/vim-snazzy'  " color scheme
Plug 'itchyny/lightline.vim'     " bottom line

call plug#end()

colorscheme snazzy
