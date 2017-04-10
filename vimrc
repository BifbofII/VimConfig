execute pathogen#infect()

filetype on
syntax on
colorscheme base16-pop
set guifont=Inconsolata\ Regular:h12
set colorcolumn=90
set number

" Enable mouse
set mouse=a

" Shortcuts
let mapleader=" "
" Save
map <leader>s :w<CR>

" More search history
set hidden
set history=100

set nowrap

" Special indentation
if has("autocmd")
	filetype plugin indent on
	autocmd FileType make set tabstop=8 shiftwidth=8 softtabstop=0 noexpandtab
endif

" Standard indentation
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smartindent
set autoindent

" Highlight search result
set hlsearch
" Cancle search with <Esc>
nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>

" Show matching paranthesis
set showmatch

" Nerdcommenter
" Spaces after comment sign
let g:NERDSpaceDelims = 1
" Align left
let g:NERDDefaultAlign = 'left'

" Nerdtree
" Open node with right arrow
let NERDTreeMapActivateNode = '<right>'
" Display hidden files
let NERDTreeShowHidden = 1
" Show tree
nmap <leader>n :NERDTreeToggle<CR>
" Open tree at startup
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
" Dont display crap
let NERDTreeIgnore=['\.DS_Store', '\~$', '\.swp']
