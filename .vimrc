syntax on
colorscheme molokai

set t_Co=256
set ts=2 sts=2 sw=2 expandtab
set cursorline
set relativenumber
set encoding=utf-8
set scrolloff=3
set splitbelow splitright
set incsearch                     " Highlight matches as you type.
set laststatus=2                  " Show the status line all the time
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P

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

" wrapped lines intuitive navigation
nnoremap j gj
nnoremap k gk

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Bubble single lines
nmap <C-Up> [e
nmap <C-Down> ]e
" Bubble multiple lines
vmap <C-Up> [egv
vmap <C-Down> ]egv
