" .vimrc
execute pathogen#infect()
syntax on
filetype plugin indent on

set background=dark

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
"set relativenumber
set number
"set undofile

set incsearch
set showmatch
set hlsearch

highlight OverLength ctermbg=darkred ctermfg=white guibg=#FFD9D9
"match OverLength /\%81v.*/
match OverLength /\%81v\|\%121v/
set guifont=Meslo\ LG\ L\ DZ:h12

set tw=0
set tabstop=2 softtabstop=2 shiftwidth=2
set listchars=tab:>-,trail:.,nbsp:~
set wrap linebreak list

autocmd Filetype markdown setlocal wrap linebreak nolist

" Map leader to ','
let mapleader = ","
" mark pasted text
noremap <leader>v V`]
" set highlight off
nnoremap <leader><space> :noh<cr>
" tab for %
nnoremap <tab> %
vnoremap <tab> %

" map / for easymotion search
map  <leader>/ <Plug>(easymotion-sn)
omap <leader>/ <Plug>(easymotion-tn)

" map toggle for paste mode
map  <leader>p :set invpaste<CR>:set paste?<CR>
omap <leader>p :set invpaste<CR>:set paste?<CR>

nnoremap <leader>A :Ack<space>
nnoremap <leader>U :GundoToggle<CR>

" change Vim's interpretation of regex to 'common' mode
nnoremap / /\v
vnoremap / /\v

" Special effects
vmap <expr>  ++  VMATH_YankAndAnalyse()


"vmap  <expr>  <S-LEFT>   DVB_Drag('left')
"vmap  <expr>  <S-RIGHT>  DVB_Drag('right')
"vmap  <expr>  <S-DOWN>   DVB_Drag('down')
"vmap  <expr>  <S-UP>     DVB_Drag('up')
"vmap  <expr>  H          DVB_Drag('left')
"vmap  <expr>  L          DVB_Drag('right')
"vmap  <expr>  J          DVB_Drag('down')
"vmap  <expr>  K          DVB_Drag('up')
"vmap  <expr>  D          DVB_Duplicate()

