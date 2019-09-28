" vimplug plugin configurations

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'mileszs/ack.vim'
Plug 'morhetz/gruvbox'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'feix760/vim-javascript-gf'

call plug#end()
" vimplug ends

" git gutter faster refresh
set updatetime=100

" ack.vim
let g:ackprg = 'ag --ignore PlayOnLinux\* --ignore sshfs --ignore Android\* --ignore android\* --ignore run --ignore tags -if'
cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>

" show the line exceeding 80 columns
set colorcolumn=80,100

" folding
let perl_fold=1
let sh_fold_enabled=1
let perl_extended_vars=1
let perl_fold_blocks = 1
let perl_sync_dist=250

" Set the pwd to the current file
autocmd BufEnter * silent! lcd %:p:h

set autoindent
set smartindent
set cursorline
set cursorcolumn
set wrap
autocmd BufNewFile,BufRead *.tt  setlocal syntax=html
autocmd BufNewFile,BufRead *.sql setlocal syntax=sql
autocmd BufNewFile,BufRead *.js  setlocal suffixesadd=.js

set ts=4 sts=4 sw=4 expandtab
set number
set spell spelllang=en_us
set termguicolors

" gruvbox
syntax enable
set background=light
let g:gruvbox_contrast_light='hard'
colorscheme gruvbox

" Nerd tree
map <C-n> :NERDTreeToggle<CR>

" FZF
nnoremap <silent> <Leader>c :cd %:h<CR>
nnoremap <silent> <Leader>f :FZF<CR>
nnoremap <silent> <Leader>F :FZF<CR>
nnoremap <silent> <Leader><Leader> :Files <C-R>=expand('%:h')<CR><CR>

" Open a new tab
nnoremap <silent> <Leader>t :tabe<CR>

" Open a new small terminal window
nnoremap <silent> <Leader>T <C-W>s10<C-W>+<C-W>j:term<CR>:startinsert<CR>

" Save the current file
nnoremap <silent> <Leader>w :w<CR>

" Say the selected text
vnoremap <silent> <Leader>s ::w !say&<CR><CR>

" Change the window leader key to w
nnoremap <silent> w <C-W>

" Security
set nomodeline
