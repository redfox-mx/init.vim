call plug#begin('~/.vim/plugged')

Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'Luxed/ayu-vim'

" Plug 'Yggdroot/indentLine'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'vim-airline/vim-airline'

Plug 'preservim/nerdtree'

Plug 'leafgarland/typescript-vim'

Plug 'tpope/vim-fugitive'

call plug#end()

let mapleader=","

filetype off
filetype plugin indent on
set relativenumber
set expandtab
set shiftwidth=2
set softtabstop=2
set showcmd
set noswapfile
set splitbelow
set splitright

function! ToggleNumber()
  if &number
    set nonumber
  else
    set number
  endif
endfunction

nmap <leader>n :call ToggleNumber()<CR>
tnoremap <Esc> <C-\><C-n>
nnoremap <leader>te :split term://zsh<CR>

if has('nvim') || has('termguicolors')
  set termguicolors
endif

" theme config
colorscheme challenger_deep

" set background=light    " for light version of theme
" set background=dark     " for either mirage or dark version.

" let g:ayucolor="mirage" " for mirage version of theme
" let g:ayucolor="dark"   " for dark version of theme

" let g:ayu_italic_comment = 1 " defaults to 0.

" colorscheme ayu

" indentLine config 
" let g:indentLine_setColors = 0

" let g:indentLine_char = '|'

" coc config
let g:coc_global_extensions = ['coc-html', 'coc-css', 'coc-eslint', 'coc-tsserver']

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" nerdtree
nnoremap <C-t> :NERDTreeToggle<CR>

" airline config
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
