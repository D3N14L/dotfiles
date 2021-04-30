call plug#begin('~/.vim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-airline'
Plug 'chase/vim-ansible-yaml'
Plug 'davidhalter/jedi-vim'
Plug 'ervandew/supertab'
Plug 'fatih/vim-go'
Plug 'hashivim/vim-terraform'
Plug 'honza/vim-snippets'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'kien/ctrlp.vim'
Plug 'kshenoy/vim-signature'
Plug 'morhetz/gruvbox'
Plug 'rking/ag.vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/gnupg.vim'
Plug 'vimwiki/vimwiki'


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
set splitbelow
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
set cursorcolumn
set background=dark

set backupdir=~/.vim/backup/
set directory=~/.vim/swap/
set undodir=~/.vim/undo/

let g:GPGDebugLog="gpg.vim.log"
let g:GPGDebugLevel=5
let g:GPGDefaultRecipients=["daniel.marks@mailbox.org"]

let mapleader = ","
" NERDTree
nnoremap <leader>T :NERDTreeClose<CR>

" ansible-vim settings
let g:ansible_name_highlight = 'd'
let g:ansible_extra_keywords_highlight = 1
let g:ansible_normal_keywords_highlight = 'Statement'
let g:ansible_with_keywords_highlight = 'Special'

" vim-airline settings
let g:airline_theme = 'light'
let g:airline#extensions#tabline#enabled = 1

" vimwiki settings
let g:vimwiki_list = [{'path': '~/.vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]

" snipMate settings
let g:snipMate = { 'snippet_version' : 1 }

nnoremap <Leader>f :FZF<CR>
nnoremap <Leader><left> <C-W><C-H>
"nnoremap <Leader><down> <C-W><C-J>
"nnoremap <Leader><up> <C-W><C-K>
"nnoremap <Leader><right> <C-W><C-L>

" Resize Windows
nnoremap <leader>e :resize +10<CR>
nnoremap <leader>c :resize -10<CR>
nnoremap <leader>s :vertical resize +10<CR>
nnoremap <leader>f :vertical resize -10<CR>

nnoremap <c-b> :CtrlPBuffer<CR>

nnoremap <silent> <Leader><Space> :nohlsearch<CR>

nnoremap / /\v
vnoremap / /\v

" NERDTree
nmap <Leader>t :NERDTreeFocus<CR>
autocmd VimEnter * NERDTree
autocmd BufEnter * NERDTreeMirror
autocmd VimEnter * wincmd w

let g:tagbar_type_ansible = { 'ctagstype' : 'ansible', 'kinds' : [ 't:tasks' ], 'sort' : 0 }

" NERDTree
autocmd VimEnter * NERDTree
autocmd BufEnter * NERDTreeMirror
autocmd VimEnter * wincmd w

let g:terraform_align=1
let g:terraform_fold_sections=1
let g:terraform_fmt_on_save=1
