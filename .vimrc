call plug#begin('~/.vim/plugged')
"Plug 'chase/vim-ansible-yaml'
"Plug 'ervandew/supertab'
"Plug 'fatih/vim-go'
"Plug 'honza/vim-snippets'
"Plug 'juliosueiras/vim-terraform-completion'
"Plug 'junegunn/fzf.vim'
"Plug 'scrooloose/nerdtree'
"Plug 'vim-scripts/gnupg.vim'
"Plug 'vimwiki/vimwiki'
Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-airline'
Plug 'hashivim/vim-terraform'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': { -> fzf#install() } }
Plug 'kien/ctrlp.vim'
Plug 'kshenoy/vim-signature'
Plug 'morhetz/gruvbox'
Plug 'rking/ag.vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-syntastic/syntastic'
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
"autocmd VimEnter * NERDTree
"autocmd BufEnter * NERDTreeMirror
"autocmd VimEnter * wincmd w

let g:tagbar_type_ansible = { 'ctagstype' : 'ansible', 'kinds' : [ 't:tasks' ], 'sort' : 0 }

let g:terraform_align=1
let g:terraform_fold_sections=0
let g:terraform_fmt_on_save=1


" Syntastic Config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" (Optional)Remove Info(Preview) window
set completeopt-=preview

" (Optional)Hide Info(Preview) window after completions
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" (Optional) Enable terraform plan to be include in filter
let g:syntastic_terraform_tffilter_plan = 1

" (Optional) Default: 0, enable(1)/disable(0) plugin's keymapping
let g:terraform_completion_keys = 1

" (Optional) Default: 1, enable(1)/disable(0) terraform module registry completion
let g:terraform_registry_module_completion = 0
