"Alejandro Waumann
"nvim config

call plug#begin('~/.local/share/nvim/plugged')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'chrisbra/Colorizer'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'itchyny/lightline.vim'
Plug 'KeitaNakamura/neodark.vim'

call plug#end()

let mapleader="\<SPACE>"
set timeoutlen=2000

" syntax highlighting settings
syntax enable
set background=dark
let g:lightline = {'colorscheme': 'neodark'}
let g:neodark#terminal_transparent = 1
colorscheme neodark

" split navigation
nnoremap <Leader>j <C-W><C-H>
nnoremap <Leader>k <C-W><C-J>
nnoremap <Leader>l <C-W><C-K>
nnoremap <Leader>; <C-W><C-L>

" tab navigation
nnoremap <Leader>J gT
nnoremap <Leader>: gt
nnoremap <Leader>1 1gt
nnoremap <Leader>2 2gt
nnoremap <Leader>3 3gt
nnoremap <Leader>4 4gt
nnoremap <Leader>5 5gt
nnoremap <Leader>6 6gt
nnoremap <Leader>7 7gt
nnoremap <Leader>8 8gt
nnoremap <Leader>9 9gt
nnoremap <Leader>s <C-W>R
nnoremap <Leader>t <C-W>T

nnoremap <Leader>+ <C-W>+
nnoremap <Leader>- <C-W>-
nnoremap <Leader>< <C-W><
nnoremap <Leader>> <C-W>>

set showmatch
set formatoptions+=o
set expandtab
set tabstop=4
set shiftwidth=4

set number
set relativenumber
" no relative numbers in insert mode
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
    autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

set splitbelow
set splitright

if !&scrolloff
    set scrolloff=12
endif

set list listchars=tab:>>,trail:~

if has('multi_byte')
    set listchars=tab:»»,trail:•
    set fillchars=vert:┃ showbreak=↪
endif

" fast scrolling
nnoremap J 10j
nnoremap K 10k

" Also highlight all tabs and trailing whitespace characters.
highlight ExtraWhitespace ctermbg=darkgrey guibg=darkgrey
match ExtraWhitespace /\s\+$\|\t/

set ignorecase          " Make searching case insensitive
set smartcase           " ... unless the query has capital letters.
set gdefault            " Use 'g' flag by default with :s/foo/bar/.
set hlsearch
set incsearch

highlight Search ctermbg=gray
highlight Search ctermfg=black
highlight IncSearch ctermbg=black
highlight IncSearch ctermfg=yellow

set colorcolumn=110

set cursorline

" Use <C-L> to clear the highlighting of :set hlsearch.
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<CR><C-L>
endif

" Search and Replace
nmap <Leader>r :%s//g<Left><Left>


set autoindent
set smartindent
set smarttab

set laststatus=2
set noshowmode

nnoremap ; :

nnoremap Q @q

let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1

let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1

let g:deoplete#enable_at_startup = 1

" deoplete tab-complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

tnoremap <Esc> <C-\><C-n>
