call pathogen#runtime_append_all_bundles() 

filetype on                 " Enable filetype detection,
filetype indent on          " use filetype-specific indenting where available,
filetype plugin on          " also allow for filetype-specific plugins,
syntax on                   " and turn on per-filetype syntax highlighting.

set nocompatible
set t_Co=256
set ts=2 sts=2 sw=2 expandtab
set cursorline
set relativenumber
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

colorscheme molokai

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

" allow moving with j/k in insert mode
inoremap <c-j> <Down>
inoremap <c-k> <Up>
inoremap <c-h> <Left>
inoremap <c-l> <Right>

" wrapped lines intuitive navigation
nnoremap j gj
nnoremap k gk

" Easy window navigation
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" Easy tab navigation
nmap <C-t> :tabnew<cr><c-e>

" Bubble single lines
nmap <C-Up> [e
nmap <C-Down> ]e
" Bubble multiple lines
vmap <C-Up> [egv
vmap <C-Down> ]egv
 
nnoremap <F2> :NERDTreeToggle<CR>
nnoremap <F5> :GundoToggle<CR>
nnoremap <F12> :Gstatus<CR>

" @jonbho: Somebody posted at the ViEmu forum the most incredible vim mapping there is!
" nnoremap <esc> :noh<return><esc>
