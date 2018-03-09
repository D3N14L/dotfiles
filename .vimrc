call plug#begin('~/.vim/plugged')
Plug 'pearofducks/ansible-vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'vim-scripts/gnupg.vim'
Plug 'davidhalter/jedi-vim'
Plug 'cz8s/password-store'
Plug 'bling/vim-airline'
Plug 'kien/ctrlp.vim'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-fugitive'
Plug 'ntpeters/vim-better-whitespace'
Plug 'rking/ag.vim'
Plug 'honza/vim-snippets'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'ervandew/supertab'
Plug 'morhetz/gruvbox'
call plug#end()

syntax on
filetype plugin indent on

color gruvbox
let g:gruvbox_contrast_dark="hard"

set nocompatible
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set ttyfast
set backspace=indent,eol,start
set laststatus=2
if version >= 703
  set relativenumber
endif
set number
set undofile

set incsearch
set showmatch
set hlsearch

set tabstop=2 softtabstop=2 shiftwidth=2
set listchars=tab:>-,trail:.,nbsp:~
set wrap linebreak list

set cursorline
set background=dark

set backupdir=~/.vim/backup/
set directory=~/.vim/swap/
set undodir=~/.vim/undo/

let g:GPGDebugLog="gpg.vim.log"
let g:GPGDebugLevel=5
let g:GPGDefaultRecipients=["daniel.marks@mailbox.org"]
"let g:tagbar_type_ansible = {'ctagstype' : 'ansible', 'kinds' : ['t:tasks'], 'sort' : 0}

let mapleader = ","

nnoremap <Leader>f :FZF<CR>
nnoremap <Leader><left> <C-W><C-H>
nnoremap <Leader><down> <C-W><C-J>
nnoremap <Leader><up> <C-W><C-K>
nnoremap <Leader><right> <C-W><C-L>

nnoremap <c-b> :CtrlPBuffer<CR>

nnoremap / /\v
vnoremap / /\v

nmap <F8> :TagbarToggle<CR>
