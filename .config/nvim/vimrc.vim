syntax on
filetype plugin indent on
set encoding=utf-8
set tabstop=4
set autoindent
set smartindent
set shiftwidth=4
set expandtab
set guifont=Hack\ Nerd\ Font\ Mono:h18 
set guioptions-=m
set guioptions-=T
set guicursor=n-v-c:ver25-Cursor/lCursor-blinkwait300-blinkon200-blinkoff150
if !has('nvim')
    set noesckeys
endif
set relativenumber
set number
set ignorecase
set smartcase
set incsearch
set cinoptions=l1
set modeline
set nowrap
" set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
colorscheme habamax
let t_EI="\e[2 q"

autocmd BufEnter * if &filetype == "go" | setlocal noexpandtab

set nocompatible
set hlsearch
set ic
set cursorline
set cc=80,100

let mapleader = "\\"
let g:mapleader = "\\"
nnoremap <leader>y "+yy
" 在可视模式下映射 <leader>c 为复制到系统剪贴板
vnoremap <leader>c "+y
" 在普通模式下映射 <leader>v 为从系统剪贴板粘贴
nnoremap <leader>v "+p

" tnoremap <ESC> <C-\><C-n>
set foldmethod=syntax
set foldlevel=99

set <M-1>=1
set <M-2>=2
set <M-3>=3
set <M-4>=4
set <M-5>=5
set <M-6>=6
set <M-7>=7
set <M-8>=8
set <M-9>=9
set <M-0>=0

noremap <M-1> 1gt
noremap <M-2> 2gt
noremap <M-3> 3gt
noremap <M-4> 4gt
noremap <M-5> 5gt
noremap <M-6> 6gt
noremap <M-7> 7gt
noremap <M-8> 8gt
noremap <M-9> 9gt
noremap <M-0> :tablast<CR>

" 使用 Ctrl+h/j/k/l 在窗口间导航
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" 调整窗口大小
set <M-h>=H
set <M-j>=J
set <M-k>=K
set <M-l>=L
noremap <M-H> :vertical resize -2<CR>
noremap <M-J> :resize +2<CR>
noremap <M-K> :resize -2<CR>
noremap <M-L> :vertical resize +2<CR>

noremap <C-j> <C-y>
noremap <C-k> <C-e>

set list
set listchars=space:·,tab:>_

" new command must start with Upper letter.
" 定义一个变量来跟踪当前状态
let g:clean_mode = 0

" 定义 Clean 命令
command! Clean call ToggleClean()

" 定义 ToggleClean 函数
function! ToggleClean()
    if g:clean_mode == 0
        setlocal nonu nornu nolist
        let g:clean_mode = 1
        echo "Switched to clean copy mode"
    else
        setlocal nu rnu list
        let g:clean_mode = 0
        echo "Restored original view"
    endif
endfunction

" 映射 Alt-/ 到 ToggleClean 函数
set <M-/>=/
nnoremap <M-/> :Clean<CR>

set <M-q>=q
set <M-w>=w
nnoremap <M-q> :tabp<CR>
nnoremap <M-w> :tabn<CR>

set <M-n>=n
set <M-N>=N
noremap <M-n> :bn<CR>
noremap <M-N> :bp<CR>

" if you got error refer to plug, you can try this to install vim-plug plugin manager:
"   sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
" if you use vim, you can change the path to ~/.vim/autoload/plug.vim, like this:
"   sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/vim/site/autoload/plug.vim -create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
call plug#begin('~/.vim/plugged')
Plug 'github/copilot.vim'
Plug 'tpope/vim-fugitive'
Plug 'rbong/vim-flog'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround'
Plug 'ryanoasis/vim-devicons'
Plug 'preservim/nerdtree'
Plug 'skywind3000/asyncrun.vim'
Plug 'vim-airline/vim-airline'
Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mg979/vim-visual-multi'
call plug#end()

if !has('gui_running')
  set t_Co=256
endif

let g:airline#extensions#whitespace#enabled = 0

let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" unicode symbols
" let g:airline_left_sep = '»'
" let g:airline_left_sep = '▶'
" let g:airline_right_sep = '«'
" let g:airline_right_sep = '◀'
" let g:airline_symbols.colnr = ' ㏇:'
" let g:airline_symbols.colnr = ' ℅:'
" let g:airline_symbols.crypt = '🔒'
" let g:airline_symbols.linenr = '☰'
" let g:airline_symbols.linenr = ' ␊:'
" let g:airline_symbols.linenr = ' ␤:'
" let g:airline_symbols.linenr = '¶'
" let g:airline_symbols.maxlinenr = ''
" let g:airline_symbols.maxlinenr = '㏑'
" let g:airline_symbols.branch = '⎇'
" let g:airline_symbols.paste = 'ρ'
" let g:airline_symbols.paste = 'Þ'
" let g:airline_symbols.paste = '∥'
" let g:airline_symbols.spell = 'Ꞩ'
" let g:airline_symbols.notexists = 'Ɇ'
" let g:airline_symbols.notexists = '∄'
" let g:airline_symbols.whitespace = 'Ξ'

" powerline symbols
" let g:airline_left_sep = ''
" let g:airline_left_alt_sep = ''
" let g:airline_right_sep = ''
" let g:airline_right_alt_sep = ''
" let g:airline_symbols.branch = ''
" let g:airline_symbols.colnr = ' ℅:'
let g:airline_symbols.colnr = 'Col:'
" let g:airline_symbols.readonly = ''
" let g:airline_symbols.linenr = ' :'
let g:airline_symbols.linenr = ' L:'
" let g:airline_symbols.maxlinenr = '☰ '
let g:airline_symbols.maxlinenr = ' '
" let g:airline_symbols.dirty='⚡'

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

nnoremap <leader>n :NERDTreeFocus<CR>
" asyncRun settings:
nnoremap <leader>r :AsyncRun 
let g:asyncrun_open = 10

" let g:ale_enabled = 1
" Enable ALE only for C and C++ files
let g:ale_linters_explicit = 1
let g:ale_linters = {
\   'c': ['gcc', 'clang'],
\   'cpp': ['g++', 'clang++']
\}

" Optional: Disable ALE for all other filetypes
let g:ale_pattern_options = {
\   '.*': {'ale_enabled': 0}
\}
let g:ale_pattern_options_enabled = 1

" Optional: Set specific C and C++ files where ALE should be enabled
" au BufNewFile,BufRead *.c,*.cpp,*.h,*.hpp let b:ale_enabled = 1
