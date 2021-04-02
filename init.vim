function! DoRemote(arg)
  UpdateRemotePlugins
endfunction

call plug#begin('~/.vim/plugged')
  Plug 'Yggdroot/indentLine' 
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'airblade/vim-gitgutter' 
  Plug 'morhetz/gruvbox'
  Plug 'vim-syntastic/syntastic'
call plug#end()

let mapleader = ","
map <leader>sg :set spelllang=de<bar>set spell!<CR>
map <leader>se :set spelllang=en_us<bar>set spell!<CR>
noremap <C-Z> ZZ

set path+=**
set wildmenu
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,gbk,cp936,latin-1
set fileformat=unix
set fileformats=unix,dos,mac
set ft

filetype on
filetype plugin on
filetype plugin indent on
syntax on

" Some useful settings
set smartindent
set hidden " keeps the buffers open
set noswapfile
set nobackup
set undodir=~/.vim/undo
set undofile
set incsearch 
set scrolloff=8
set signcolumn=yes
set expandtab         " tab to spaces
set tabstop=2         " the width of a tab
set shiftwidth=2      " the width for indent
set foldenable
set foldmethod=indent 
set foldlevel=99
set ignorecase        " ignore the case when search texts
set smartcase         
set nu rnu            " hybrid line numbers
set nowrap            " no line wrapping

colorscheme gruvbox 
" Airline
 let g:airline#extensions#tabline#enabled = 1
 let g:airline#extensions#tabline#buffer_idx_mode = 1
 let g:airline_powerline_fonts = 1

" syntatics settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

