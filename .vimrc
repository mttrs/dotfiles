"
" vim-plug
" https://github.com/junegunn/vim-plug
"
call plug#begin()

" Autocompletion is enabled by default via <C-x><C-o>.
" To get real-time completion (completion by type) install: YCM or neocomplete.
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --gocode-completer' }

" go
" - For a better documentation viewer checkout: go-explorer.
Plug 'fatih/vim-go'

Plug 'tpope/vim-sensible'
Plug 'junegunn/vim-easy-align'

" Group dependencies, vim-snippets depends on ultisnips
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

Plug 'tpope/vim-endwise'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'

Plug 'tomtom/tcomment_vim'
Plug 'slim-template/vim-slim'

" rust
Plug 'rust-lang/rust.vim'

" javascript
Plug 'pangloss/vim-javascript'
Plug 'kchmck/vim-coffee-script'

" For .editorconfig loading
Plug 'editorconfig/editorconfig-vim'

call plug#end()

"
" vim-easy-align
"
" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

"yank [count] lines [into register x] , Y to work from the cursor to the end of line
nnoremap Y y$

filetype plugin indent on

syntax on
colorscheme baguette

set display=lastline

" Height of the completion
set pumheight=10

set showmatch
set matchtime=1

set whichwrap=b,s,[,],<,>
set backspace=indent,eol,start

" Shorten the update time for git file tracking
" Default is 4 sec
set updatetime=240

" Show the line number relative to the line with the cursor in front of each line.
set relativenumber

" Set tree style as default
let g:netrw_liststyle= 3

" For crontab
set backupskip=/tmp/*,/private/tmp/*

" Open a new window right
set splitright
